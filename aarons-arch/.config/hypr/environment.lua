-- nvidia
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("NVD_BACKEND", "direct")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- hardware acceleration
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("VDPAU_DRIVER", "nvidia")
hl.env("CUDA_DISABLE_PERF_BOOST", "1")

-- xdg
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")

-- backends
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")

-- qt
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QUICK_CONTROLS_STYLE", "org.hyprland.style")

-- electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- firefox
hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")

-- SDL games
hl.env("SDL_VIDEODRIVER", "wayland")

-- cursor
hl.env("HYPRCURSOR_THEME", "macOS-hypr")
hl.env("HYPRCURSOR_SIZE", "24")
