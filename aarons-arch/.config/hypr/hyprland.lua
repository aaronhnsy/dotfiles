require("environment")
require("monitors")
require("input")
require("animations")

hl.on("hyprland.start", function()
    hl.exec_cmd("wayle panel start")
    hl.exec_cmd("cursor-clip --daemon")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)

hl.config({
    general    = {
        -- window gaps
        gaps_in  = 4,
        gaps_out = 8,
        -- window borders
        border_size       = 2,
        col               = {
            active_border = {
                colors = {
                    "rgba(33ccffee)",
                    "rgba(00ff99ee)"
                },
                angle = 45
            },
            inactive_border = "rgba(1e1e2eaa)",
        },
        -- window resizing
        resize_on_border     = true,
        hover_icon_on_border = true,
        -- layout
        layout = "scrolling",
    },
    decoration = {
        -- window rounding
        rounding       = 10,
        rounding_power = 2,
        -- window opacity
        fullscreen_opacity = 1.0,
        active_opacity     = 1.0,
        inactive_opacity   = 1.0,
        -- window dimming
        dim_modal    = false,
        dim_inactive = false,
        dim_strength = 0.5,
        dim_special  = 0.2,
        dim_around   = 0.4,
        -- window blur
        blur               = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },
        -- window shadow
        shadow             = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
    },
    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        force_default_wallpaper  = 0,
    },
    ecosystem = {
        no_update_news      = true,
        no_donation_nag     = true,
        enforce_permissions = false,
    },
    -- layouts
    scrolling = {
        fullscreen_on_one_column = true,
        column_width             = 0.99,
        focus_fit_method         = 1,
        follow_focus             = true,
        follow_min_visible       = 0.4,
        explicit_column_widths   = "0.333, 0.5, 0.667, 1.0",
        wrap_focus               = true,
        wrap_swapcol             = true,
        direction                = "right",
    },
})
