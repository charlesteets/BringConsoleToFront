#Requires AutoHotkey v2.0

^`:: {
    try 
    {
        activeWindowTitle := WinGetTitle("A")
        terminalWindowTitle := WinGetTitle("ahk_exe WindowsTerminal.exe")
        if (activeWindowTitle != terminalWindowTitle)
        {
            WinSetAlwaysOnTop 1, terminalWindowTitle
            WinActivate terminalWindowTitle
            WinSetAlwaysOnTop 0, terminalWindowTitle    
        }
        else
        {
            WinMinimize terminalWindowTitle
        }
    }
    catch
    {
        Run("cmd.exe")
        Sleep(2000)
    }
}