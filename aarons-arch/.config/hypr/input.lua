-- keyboard/mouse settings
hl.config({
    input = {
        -- keyboard
        kb_model           = "pc105",
        kb_layout          = "gb",
        numlock_by_default = true,
        repeat_rate        = 25,
        repeat_delay       = 300,
        -- mouse
        sensitivity        = 0,
        accel_profile      = "flat",
        follow_mouse       = 2,
    }
})

-- open app launcher
hl.bind(
    "SUPER + Q",
    hl.dsp.exec_cmd("pkill rofi || rofi -show"),
    { bypass = true }
)

-- open terminal
hl.bind(
    "SUPER + W",
    hl.dsp.exec_cmd("kitty")
)
-- open file browser
hl.bind(
    "SUPER + E",
    hl.dsp.exec_cmd("nautilus")
)
-- open web browser
hl.bind(
    "SUPER + R",
    hl.dsp.exec_cmd("firefox")
)
-- open clipboard history
hl.bind(
    "SUPER + T",
    hl.dsp.exec_cmd("cursor-clip")
)

-- close current window
hl.bind(
    "SUPER + C",
    hl.dsp.window.close()
)

-- fullscreen current window
hl.bind(
    "SUPER + F",
    hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" })
)
-- maximise current window
hl.bind(
    "SUPER + G",
    hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })
)
-- float current window
hl.bind(
    "SUPER + H",
    hl.dsp.window.float({ action = "toggle" })
)
-- pseudotile current window
hl.bind(
    "SUPER + J",
    hl.dsp.window.pseudo()
)

-- exit hyprland
hl.bind(
    "SUPER + M",
    hl.dsp.exec_cmd("hyprctl dispatch 'hl.dsp.exit()'")
)

-- use arrow keys to switch focused windows
hl.bind(
    "SUPER + left",
    hl.dsp.focus({ direction = "left" })
)
hl.bind(
    "SUPER + right",
    hl.dsp.focus({ direction = "right" })
)
hl.bind(
    "SUPER + up",
    hl.dsp.focus({ direction = "up" })
)
hl.bind(
    "SUPER + down",
    hl.dsp.focus({ direction = "down" })
)

for i = 1, 10 do
    local key = i % 10
    -- focus the workspace specified
    hl.bind(
        "SUPER + " .. key,
        hl.dsp.focus({ workspace = i })
    )
    -- move current window to the workspace specified
    hl.bind(
        "SUPER + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i })
    )
end

-- scroll to the column on the left
hl.bind(
    "SUPER + mouse_down",
    hl.dsp.layout("move -col"),
    { description = "scroll focused windows" }
)
-- scroll to the column on the right
hl.bind(
    "SUPER + mouse_up",
    hl.dsp.layout("move +col"),
    { description = "scroll focused windows" }
)

-- move window with the mouse
hl.bind(
    "SUPER + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)
-- resize window with the mouse
hl.bind(
    "SUPER + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)

-- toggle microphone mute
hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true }
)

-- toggle audio mute
hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true }
)
-- lower volume by 5%
hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)
-- raise volume by 5%
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)

-- toggle playback state
hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)
hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

-- go to previous track
hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }
)
-- go to next track
hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)
