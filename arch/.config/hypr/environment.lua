local config_home = os.getenv("XDG_CONFIG_HOME")
local cache_home = os.getenv("XDG_CACHE_HOME")

-- xdg
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- backends
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("SDL_VIDEODRIVER", "wayland")

-- nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("VDPAU_DRIVER", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("NVD_BACKEND", "direct")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- opengl
hl.env("__GL_SHADER_DISK_CACHE", "1")
hl.env("__GL_SHADER_DISK_CACHE_SIZE", "8589934592")
hl.env("__GL_SHADER_DISK_CACHE_PATH", cache_home .. "/nvidia/opengl")

-- cuda
hl.env("CUDA_CACHE_PATH", cache_home .. "/nvidia/cuda")
hl.env("CUDA_DISABLE_PERF_BOOST", "0")

-- qt
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QUICK_CONTROLS_STYLE", "org.hyprland.style")

-- gtk
hl.env("GTK2_RC_FILES", config_home .. "/gtk-2.0/gtkrc" .. ":" .. config_home .. "/gtk-2.0/gtkrc.mine")

-- cursor
hl.env("HYPRCURSOR_THEME", "macOS-hypr")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "macOS-hypr")
hl.env("XCURSOR_SIZE", "24")

-- electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
