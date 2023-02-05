-- fauxClip
vim.g.fauxClip_always_use = 1

local x11 = os.getenv('XDG_SESSION_TYPE') == "x11"

if x11 then
    -- kopiowanie
    vim.g.fauxClip_copy_cmd = "xclip -f -i -selection clipboard"
    vim.g.fauxClip_copy_primary_cmd = "xclip -f -i"
    -- wklejanie
    vim.g.fauxClip_paste_cmd = "xclip -o -selection clipboard"
    vim.g.fauxClip_paste_primary_cmd = "xclip -o"
else
    vim.g.fauxClip_copy_cmd = "wl-copy"
    vim.g.fauxClip_paste_cmd = "wl-paste"
end
