require('leap').add_default_mappings()

vim.api.nvim_set_hl(0, 'LeapLabelPrimary', {
    fg = '#101010',
    bg = '#ea6962'
})

vim.api.nvim_set_hl(0, 'LeapLabelSecondary', {
    bg = '#7daea3',
    fg = 'black'
})

vim.api.nvim_set_hl(0, 'LeapMatch', {
    bg = '#e78a4e',
    fg = 'black'
})

vim.api.nvim_set_hl(0, 'LeapBackdrop', {
    bg = '#1c1c1c'
})
-- *LeapMatch*
--     Matches that can be reached directly, without having to use a label.
--     (By default, this is only used for traversal mode, or when a match
--     covers a label, indicating the conflict.)

-- *LeapLabelPrimary*
--     The character needed to be pressed to jump to the match position,
--     after the whole search pattern has been given. It appears once the
--     first input has been entered, right next to the pair.

-- *LeapLabelSecondary*
--     If the number of matches exceeds the available target labels, the next
--     group of labeled targets are shown with a different color. Those can
--     be reached by pressing `<space>` (`special_keys.next_group`)
--     before the label character.

-- *LeapLabelSelected*
--     Labels that are selected for the action in |leap-multiselect| mode.

-- *LeapBackdrop*
--     In some cases it might be useful or even necessary to apply certain
--     settings on the rest of the area, like disabling all `gui` attributes,
--     or adding a uniform grey foreground color, to make Leap matches and
--     labels more distinguishable. This group is not set by default.
