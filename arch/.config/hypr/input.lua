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
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -show"), { bypass = true })
-- hyprspace
hl.bind("SUPER + TAB", function() hl.plugin.overview.toggle() end)

-- fullscreen current window
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
-- maximise current window
hl.bind("SUPER + G", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
-- float current window
hl.bind("SUPER + H", hl.dsp.window.float({ action = "toggle" }))
-- pseudotile current window
hl.bind("SUPER + J", hl.dsp.window.pseudo())

-- close current window
hl.bind("SUPER + C", hl.dsp.window.close())
-- exit hyprland
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprctl dispatch 'hl.dsp.exit()'"))

-- focus windows with arrow keys
hl.bind("SUPER + left",  hl.dsp.focus({ direction = "left"  }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up",    hl.dsp.focus({ direction = "up"    }))
hl.bind("SUPER + down",  hl.dsp.focus({ direction = "down"  }))

-- resize windows with arrow keys
hl.bind("SUPER + CTRL + left",  hl.dsp.layout("colresize -conf"))
hl.bind("SUPER + CTRL + right", hl.dsp.layout("colresize +conf"))

-- focus/move windows with number keys
for i = 1, 10 do
    local key = i % 10
    hl.bind("SUPER + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- scroll columns with mouse wheel
hl.bind("SUPER + mouse_down", hl.dsp.layout("move -col"))
hl.bind("SUPER + mouse_up",   hl.dsp.layout("move +col"))

-- move / resize windows with the mouse
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- microphone mute / audio mute
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),   { locked = true, repeating = true })
-- lower volume / raise volume
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
-- play track / pause track
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
-- previous track / next track
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"),     { locked = true })

-- screenshot monitor/window/region
hl.bind("SUPER + PRINT",         hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/Screenshots"))
hl.bind("SUPER + CTRL + PRINT",  hl.dsp.exec_cmd("hyprshot -m window -o ~/Pictures/Screenshots"))
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

-- select workspace with arrow keys
local function step_workspace(dir)
    return function()
        local active = hl.get_active_workspace()
        if not active then return end

        local target = active.id + dir
        if target >= 1 and target <= 10 then
            hl.dispatch(hl.dsp.focus({ workspace = tostring(target) }))
        end
    end
end

hl.bind("SUPER + SHIFT + left",  step_workspace(-1), { repeating = true })
hl.bind("SUPER + SHIFT + right", step_workspace(1),  { repeating = true })