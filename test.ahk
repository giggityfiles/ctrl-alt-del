!t::
    WinGet, hwnd, ID, A
    WinGet, style, Style, ahk_id %hwnd%
    if (style & 0xC00000)
    {
        WinSet, Style, -0xC00000, ahk_id %hwnd%
        WinSet, Style, -0x800000, ahk_id %hwnd%
        WinMove, ahk_id %hwnd%, , 0, 0, A_ScreenWidth, A_ScreenHeight
    }
    else
    {
        WinSet, Style, +0xC00000, ahk_id %hwnd%
        WinSet, Style, +0x800000, ahk_id %hwnd%
        WinRestore, ahk_id %hwnd%
    }
return
