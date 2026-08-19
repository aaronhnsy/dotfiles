hl.monitor({
    output   = "DP-2",
    mode     = "2560x1440@144.0",
    position = "0x0",
    scale    = 1,
    bitdepth = 10
})
hl.workspace_rule({ monitor = "DP-2", workspace = "1", default = true })
hl.workspace_rule({ monitor = "DP-2", workspace = "2"  })
hl.workspace_rule({ monitor = "DP-2", workspace = "3"  })
hl.workspace_rule({ monitor = "DP-2", workspace = "4"  })
hl.workspace_rule({ monitor = "DP-2", workspace = "5"  })

hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@165.0",
    position = "2560x180",
    scale    = 1,
    bitdepth = 10
})
hl.workspace_rule({ monitor = "DP-1", workspace = "6", default = true })
hl.workspace_rule({ monitor = "DP-1", workspace = "7"  })
hl.workspace_rule({ monitor = "DP-1", workspace = "8"  })
hl.workspace_rule({ monitor = "DP-1", workspace = "9"  })
hl.workspace_rule({ monitor = "DP-1", workspace = "10" })

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.layer_rule({
    match = {
        namespace = "rofi"
    },
    dim_around = true,
})
