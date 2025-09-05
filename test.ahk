!t::
{
    hwnd := WinGetID("A")
    style := WinGetStyle(hwnd)
    if (style & 0xC00000) {
        WinSetStyle("-0xC00000", hwnd)
        WinSetStyle("-0x800000", hwnd)
        WinMove(hwnd, 0, 0, A_ScreenWidth, A_ScreenHeight)
    } else {
        WinSetStyle("+0xC00000", hwnd)
        WinSetStyle("+0x800000", hwnd)
        WinRestore(hwnd)
    }
}
