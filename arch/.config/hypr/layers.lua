hl.layer_rule({
    name  = "rofi-blur-and-dim",
    match = {
        namespace = "^(rofi.*)$"
    },
    blur         = true,
    blur_popups  = true,
    ignore_alpha = 0.0,
    dim_around   = true,
})

hl.layer_rule({
    name  = "wayle-blur",
    match = {
        namespace = "^(wayle.*)$",
    },
    blur         = true,
    blur_popups  = true,
    ignore_alpha = 0.0,
})
