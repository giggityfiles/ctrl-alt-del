!t::
{
    hwnd := WinGetID("A")
    style := WinGetStyle("ahk_id " hwnd)
    if (style & 0xC00000) {
        WinSetStyle("-0xC00000", "ahk_id " hwnd)
        WinSetStyle("-0x800000", "ahk_id " hwnd)
        WinMove(0 hwnd, 0, 0, A_ScreenWidth, A_ScreenHeight)
    } else {
        WinSetStyle("+0xC00000", "ahk_id " hwnd)
        WinSetStyle("+0x800000", "ahk_id " hwnd)
        WinRestore("ahk_id " hwnd)
    }
}
