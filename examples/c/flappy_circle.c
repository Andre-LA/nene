/*
Copyright (c) 2021-present André Luiz Alvares
Nene is licensed under the Zlib license.
Please refer to the LICENSE file for details
SPDX-License-Identifier: Zlib
*/

// FC: Flappy Circle namespace
#include <stdlib.h>
#include <time.h>
#include <stdint.h>

#include "nene/core.h"
#include "nene/math/rectf.h"
#include "nene/math/vec2.h"
#include "nene/texture.h"
#include "nene/intersections.h"

// CONSTANTS
#define OBSTACLE_COUNT 32
#define OBSTACLE_GAP 64
#define OBSTACLE_HEIGHT 256
#define GRAVITY 256.0f
#define JUMP 144.0f
#define FLAPPY_CIRCLE_SPEED_X 32.0f

// Flappy Circle types //
typedef struct FC_Entity {
  nene_Vec2 position;
  nene_Vec2 velocity;
  nene_Texture sprite;
} FC_Entity;

FC_Entity FC_Entity_init(const nene_Vec2 position, const nene_Vec2 velocity) {
  return (FC_Entity){
    .position = position,
    .velocity = velocity,
  };
}

void FC_Entity_apply_velocity(FC_Entity *const self) {
  const nene_Core *const instance = nene_Core_instance();
  self->position = nene_Vec2_add(self->position, nene_Vec2_scale(self->velocity, instance->delta_time));
}

void FC_Entity_apply_gravity(FC_Entity *const self) {
  const nene_Core *const instance = nene_Core_instance();
  self->velocity.y -= GRAVITY * instance->delta_time;
}

// --- Flappy Circle Entity --- //

typedef struct FC_FlappyCircle {
  FC_Entity entity;
} FC_FlappyCircle;

FC_FlappyCircle FC_FlappyCircle_init(void) {
  return (FC_FlappyCircle){
    .entity = FC_Entity_init(
      (nene_Vec2){ .x = -8.0f, .y = 64.0f },
      (nene_Vec2){ .x = FLAPPY_CIRCLE_SPEED_X }
    ),
  };
}

nene_Rectf FC_FlappyCircle_get_hitbox(FC_FlappyCircle *const self) {
  return (nene_Rectf){
    .pos = self->entity.position,
    .size = { .x = 16.0f, .y = 16.0f },
  };
}

void FC_FlappyCircle_update(FC_FlappyCircle *const self) {
  FC_Entity_apply_gravity(&self->entity);
  if (nene_Core_is_scancode_pressed(SDL_SCANCODE_SPACE)) {
    self->entity.velocity.y = JUMP;
  }
  FC_Entity_apply_velocity(&self->entity);
}

void FC_FlappyCircle_draw(FC_FlappyCircle *const self) {
  nene_Core_render_draw_rect(
    nene_Rectf_to_rect(FC_FlappyCircle_get_hitbox(self)),
    true,
    nene_Color_white,
    true
  );
}

// --- Obstacle Entity --- //

typedef struct FC_Obstacle {
  FC_Entity entity;
} FC_Obstacle;

FC_Obstacle FC_Obstacle_init(int multiplier, bool is_on_top, float gap_t) {
  const nene_Vec2i win_size = nene_Core_get_window_size();
  const int y_gap = (int)((win_size.y/4.0f) * gap_t);
  float gap_offset = OBSTACLE_GAP / 2.0f;

  return (FC_Obstacle){
    .entity = FC_Entity_init(
      (nene_Vec2){ 
        .x = 96 * multiplier, 
        .y = is_on_top ? y_gap + gap_offset + OBSTACLE_HEIGHT: y_gap - gap_offset,
      },
      nene_Vec2_zero()
    ),
  };
}

nene_Rectf FC_Obstacle_get_hitbox(const FC_Obstacle *const self) {
  return (nene_Rectf){
    .pos = self->entity.position,
    .size = { .x = 16.0f, .y = OBSTACLE_HEIGHT },
  };
}

void FC_Obstacle_update(FC_Obstacle *const self) {
  FC_Entity_apply_velocity(&self->entity);
}

void FC_Obstacle_draw(const FC_Obstacle *const self) {
  nene_Core_render_draw_rect(
    nene_Rectf_to_rect(FC_Obstacle_get_hitbox(self)),
    true,
    nene_Color_white,
    true
  );
}

// Flappy Circle Game State //
typedef struct FC_GameState {
  struct Entities {
    FC_FlappyCircle flappy_circle;
    FC_Obstacle obstacles[OBSTACLE_COUNT];
  } entities;
  enum FC_GameState_State {
    FC_GAME_STATE_NONE = 0,
    FC_GAME_STATE_FLYING = 1,
    FC_GAME_STATE_LOST = 2,
  } state;
  nene_Texture screen;
} FC_GameState;

typedef struct FC_GameStateCreation {
  FC_GameState game_state;
  bool created;
} FC_GameStateCreation;

void FC_GameState_camera_follow_flappy_circle(FC_GameState *const self) {
  nene_Core *nene = nene_Core_instance();
  nene->render_offset.x = -self->entities.flappy_circle.entity.position.x - 8.0f;
}

void FC_GameState_restart(FC_GameState *self) {
  // re-init game's state
  self->state = FC_GAME_STATE_FLYING,
  // re-init flappy circle
  self->entities.flappy_circle = FC_FlappyCircle_init();
  // re-init obstacles;
  float gap_t = 0.0f;
  for (int i = 0; i < OBSTACLE_COUNT; ++i) {
    const bool is_top_obstacle = i % 2 == 1;
    if (!is_top_obstacle) {
      gap_t = ((float)rand() / (float)RAND_MAX) - 0.5f;
    }
    self->entities.obstacles[i] = FC_Obstacle_init((i/2) + 1, is_top_obstacle, gap_t);
  }

  FC_GameState_camera_follow_flappy_circle(self);
}

FC_GameStateCreation FC_GameState_init(void) {
  const nene_Vec2i win_size = nene_Core_get_window_size();
  nene_TextureCreation screen_creation = nene_Texture_create_with_access(win_size.x / 4, win_size.y / 4, SDL_TEXTUREACCESS_TARGET);

  if (!screen_creation.created) {
    return (FC_GameStateCreation){
      .created = false,
    };
  }
  
  FC_GameStateCreation game_state_creation= {
    .created = true,
    .game_state.screen = screen_creation.texture,
  };
  FC_GameState_restart(&game_state_creation.game_state);

  return game_state_creation;
}

void FC_GameState_set_lost_state(FC_GameState *const self) {
  self->state = FC_GAME_STATE_LOST;
}

void FC_GameState_lost_state_update(FC_GameState *self) {
  if (nene_Core_is_scancode_pressed(SDL_SCANCODE_R)) {
    FC_GameState_restart(self);
  }
}

void FC_GameState_flying_state_update(FC_GameState *const self) {
  // movement
  FC_FlappyCircle_update(&self->entities.flappy_circle);
  for (int i = 0; i < OBSTACLE_COUNT; ++i) {
    FC_Obstacle_update(&self->entities.obstacles[i]);
  }

  // follow x position of flappy circle
  FC_GameState_camera_follow_flappy_circle(self);
  
  // check intersection and set state to lost state
  for (int i = 0; i < OBSTACLE_COUNT; ++i) {
    bool circle_intersects_obstacle = nene_Intersections_is_intersecting_rectf_with_rectf(
      FC_FlappyCircle_get_hitbox(&self->entities.flappy_circle),
      FC_Obstacle_get_hitbox(&self->entities.obstacles[i])
    );

    if (circle_intersects_obstacle){
      FC_GameState_set_lost_state(self);
      break;
    }
  }
}

void FC_GameState_update(FC_GameState *const self) {
  switch (self->state) {
    case FC_GAME_STATE_FLYING: { FC_GameState_flying_state_update(self); break; }
    case FC_GAME_STATE_LOST  : { FC_GameState_lost_state_update(self); break; }
    default: break;
  }
}

void FC_GameState_draw(FC_GameState self) {
  nene_Core_set_render_target(nene_Texture_get_raw(self.screen));
  nene_Core_render_clear(nene_Color_black);

  FC_FlappyCircle_draw(&self.entities.flappy_circle);
  for (int i = 0; i < OBSTACLE_COUNT; ++i) {
    FC_Obstacle_draw(&self.entities.obstacles[i]);
  }

  nene_Core_set_render_target(NULL);
  nene_Texture_draw_to_rect(self.screen, nene_Rect_zero(), nene_Rect_zero());
}

// Flappy Circle life cycle //
FC_GameState game_state;

bool FC_init(void) {
  srand(time(NULL));
  return nene_Core_init("Flappy Circle!", 600, 960, SDL_WINDOW_SHOWN);
}

void FC_update(void) {
  nene_Core_update();    
  FC_GameState_update(&game_state);
}

void FC_draw(void) {
  nene_Core_render_clear(nene_Color_bg);
  FC_GameState_draw(game_state);
  nene_Core_render_present();
}

void FC_game_tick(void) {
  FC_update();
  FC_draw();
}

bool FC_game_loop(void) {
  // try creating game state
  FC_GameStateCreation game_state_creation = FC_GameState_init();
  if (!game_state_creation.created) {
    // game loop initialization failed, return failure
    return false;
  }
  // init game state on success
  game_state = game_state_creation.game_state;

  // do game loop
  do {
    FC_game_tick();
  } while (!nene_Core_should_quit());

  // game loop finished, return success
  return true;
}

void FC_terminate(void) {
  nene_Core_terminate();
}

int main(void) {
  if (!FC_init()) {
    return EXIT_FAILURE;
  }

  bool game_loop_ok = FC_game_loop();
  FC_terminate();

  return game_loop_ok ? EXIT_SUCCESS : EXIT_FAILURE;
}
