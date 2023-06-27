local opts = {
    scope = 'line',
    modes = { 'i', 'ic', 'ix', 'R', 'Rc', 'Rx', 'Rv', 'Rvc', 'Rvx' },
    blending = {
        threshold = 0.50,
        colorcode = '#d0d0d0',
        hlgroup = {
            'ColumnNormal',
            'background',
        },
    },
    warning = {
        alpha = 0.4,
        offset = 10,
        colorcode = '#FF00FF',
        hlgroup = {
            'ColumnError',
            'background',
        },
    },
    extra = {
        follow_tw = nil,
    },
}

require('deadcolumn').setup(opts) -- Call the setup function
