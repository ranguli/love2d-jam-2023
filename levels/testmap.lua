return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 23,
  height = 700,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 11,
  nextobjectid = 323,
  properties = {},
  tilesets = {},
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "Custom Game Objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 192,
          name = "Player",
          class = "Player",
          shape = "rectangle",
          x = 176,
          y = 10944,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "Medium Food",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      tintcolor = { 46, 194, 126 },
      properties = {},
      objects = {
        {
          id = 299,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 192,
          y = 8192,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 5
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "Small Food",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      tintcolor = { 26, 95, 180 },
      properties = {},
      objects = {
        {
          id = 229,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 168,
          y = 8576,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 230,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 200,
          y = 8488,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 231,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 180,
          y = 10692,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 235,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 248,
          y = 8640,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 245,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 96,
          y = 8624,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 246,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 256,
          y = 8552,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 247,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 272,
          y = 8488,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 255,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 352,
          y = 8576,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 305,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 200,
          y = 9796,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 306,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 196,
          y = 10500,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 307,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 132,
          y = 10196,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 322,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 196,
          y = 9988,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Obstacles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      tintcolor = { 224, 27, 36 },
      properties = {},
      objects = {
        {
          id = 190,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 256,
          y = 8720,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 96,
          y = 8664,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["velocity"] = {}
          }
        },
        {
          id = 195,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 184,
          y = 8664,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 196,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 240,
          y = 8680,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 197,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 160,
          y = 8744,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 199,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 296,
          y = 8640,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 320,
          y = 8528,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 204,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 240,
          y = 8576,
          width = 41.3701,
          height = 41.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 205,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 32,
          y = 8608,
          width = 41.3701,
          height = 41.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 206,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 288,
          y = 8408,
          width = 56,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 208,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 280,
          y = 8320,
          width = 56,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 210,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 232,
          y = 8440,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 211,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 192,
          y = 8536,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 241,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 144,
          y = 8336,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 224,
          y = 8344,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 248,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 72,
          y = 8384,
          width = 56,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 249,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 144,
          y = 8465.3,
          width = 8,
          height = 7.99391,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 259,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 96,
          y = 8328,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 260,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 56,
          y = 8472,
          width = 41.3701,
          height = 41.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 293,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 112,
          y = 8528,
          width = 41.3701,
          height = 41.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 48,
          y = 8368,
          width = 17.3518,
          height = 17.3386,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 300,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 240,
          y = 10552,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 301,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 96,
          y = 10336,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 302,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 208,
          y = 10176,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 304,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 144,
          y = 9696,
          width = 36,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = -16,
          y = 0,
          width = 16,
          height = 11200,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 298,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 368,
          y = 0,
          width = 16,
          height = 11200,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 313,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 132,
          y = 9508,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 314,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 160,
          y = 9488,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 315,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 64,
          y = 9440,
          width = 32,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 316,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 36,
          y = 9508,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 317,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 228,
          y = 9508,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 318,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 256,
          y = 9488,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 319,
          name = "",
          class = "Food",
          shape = "rectangle",
          x = 324,
          y = 9508,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["nutritional_value"] = 1
          }
        },
        {
          id = 320,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 336,
          y = 9488,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 321,
          name = "",
          class = "Obstacle",
          shape = "rectangle",
          x = 228,
          y = 9696,
          width = 36,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
