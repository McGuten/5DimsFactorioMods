--Experimental

data:extend({
{
    type = "beam",
    name = "exp-beam",
    flags = {"not-on-map"},
    width = 10.9,
    damage_interval = 20,
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 1, type = "laser"}
          }
        }
      }
    },
    head =
    {
      filename = "__5dim_battlefield__/graphics/icon/exp-head.png",
      line_length = 1,
      width = 45,
      height = 39,
      frame_count = 1,
      animation_speed = 0.05,
      blend_mode = beam_blend_mode,
    },
    tail =
    {
      filename = "__5dim_battlefield__/graphics/icon/exp-tail.png",
      line_length = 1,
      width = 45,
      height = 39,
      frame_count = 1,
      blend_mode = beam_blend_mode,
    },
    body =
    {
      {
        filename = "__5dim_battlefield__/graphics/icon/exp-body.png",
        line_length = 1,
        width = 45,
        height = 39,
        frame_count = 1,
        blend_mode = beam_blend_mode,
      },

    }
  },
})
function expatack(data)
  return
  {
    type = "projectile",
    ammo_category = "combat-robot-laser",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.9,
    damage_modifier = data.damage_modifier,
    ammo_type =
    {
      category = "biological",
      action =
      {        
      type = "direct",
        repeat_count = 16,
        action_delivery =
        {
            type = "beam",
            beam = "exp-beam",
            max_length = 15,
            duration = 200,
            source_offset = {0.3, -1.5},
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(expspitterscale, expspittertint),
  }
end

--Explosive
function explosivesmall(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.5,
    damage_modifier = data.damage_modifier,
    warmup = 5,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = biterattackanimation(smallspitterscale, explosive_biter_tint1, explosive_biter_tint2),
  }
end

function explosivemedium(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.5,
    damage_modifier = data.damage_modifier,
    warmup = 5,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = biterattackanimation(mediumspitterscale, explosive_biter_tint1, explosive_biter_tint2),
  }
end

function explosivebig(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.5,
    damage_modifier = data.damage_modifier,
    warmup = 5,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = biterattackanimation(bigspitterscale, explosive_biter_tint1, explosive_biter_tint2),
  }
end

function explosivebehemoth(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.5,
    damage_modifier = data.damage_modifier,
    warmup = 5,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = biterattackanimation(behemothspitterscale, explosive_biter_tint1, explosive_biter_tint2),
  }
end

function explosiveexp(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 0.5,
    damage_modifier = data.damage_modifier,
    warmup = 5,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-rocket",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = biterattackanimation(expspitterscale, explosive_biter_tint1, explosive_biter_tint2),
  }
end

--Flamer
data:extend({
  {
    type = "flame-thrower-explosion",
    name = "flame-thrower-bicho",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations =
    {
      {
        filename = "__5dim_battlefield__/graphics/icon/flame-thrower-bicho.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 64,
        line_length = 8
      }
    },
    light = {intensity = 0.2, size = 20},
    slow_down_factor = 1,
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 0.95,
    damage = {amount = 0.3, type = "acid"}
  },
})
  
function flamersmall(data)
  return
  {
    type = "projectile",
    ammo_category = "flame-thrower-ammo",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 1,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
			type = "flame-thrower",
            explosion = "flame-thrower-bicho",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.2,
            starting_distance = 0.6,
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(smallbitterscale, firespittertint),
  }
end
function flamermedium(data)
  return
  {
    type = "projectile",
    ammo_category = "flame-thrower-ammo",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 1,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
      type = "flame-thrower",
            explosion = "flame-thrower-bicho",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.2,
            starting_distance = 1,
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(mediumbitterscale, firespittertint),
  }
end
function flamerbig(data)
  return
  {
    type = "projectile",
    ammo_category = "flame-thrower-ammo",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 1,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
      type = "flame-thrower",
            explosion = "flame-thrower-bicho",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.2,
            starting_distance = 2,
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(bigbitterscale, firespittertint),
  }
end

function flamerbehemoth(data)
  return
  {
    type = "projectile",
    ammo_category = "flame-thrower-ammo",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 1,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
      type = "flame-thrower",
            explosion = "flame-thrower-bicho",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.2,
            starting_distance = 3,
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(behemothbitterscale, firespittertint),
  }
end

function flamerexp(data)
  return
  {
    type = "projectile",
    ammo_category = "flame-thrower-ammo",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 1,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
      type = "flame-thrower",
            explosion = "flame-thrower-bicho",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.2,
            starting_distance = 6,
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(expbitterscale, firespittertint),
  }
end

--Rocket
function rocketlaunchersmall(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 50,
    ammo_type =
    {
      category = "biological",
      action =
      {
             type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(smallspitterscale, rocketspittertint),
  }
end

function rocketlaunchermedium(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 50,
    ammo_type =
    {
      category = "biological",
      action =
      {
             type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(mediumspitterscale, rocketspittertint),
  }
end

function rocketlauncherbig(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 50,
    ammo_type =
    {
      category = "biological",
      action =
      {
             type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(bigspitterscale, rocketspittertint),
  }
end

function rocketlauncherbehemoth(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 50,
    ammo_type =
    {
      category = "biological",
      action =
      {
             type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(behemothspitterscale, rocketspittertint),
  }
end

function rocketlauncherexp(data)
  return
  {
    type = "projectile",
    ammo_category = "explosive-rocket",
    cooldown = data.cooldown,
    range = data.range + 2,
    projectile_creation_distance = 1.5,
    damage_modifier = data.damage_modifier,
    warmup = 50,
    ammo_type =
    {
      category = "biological",
      action =
      {
             type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.1,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    sound = make_spitter_roars(data.roarvolume),
    animation = spitterattackanimation(expspitterscale, rocketspittertint),
  }
end
