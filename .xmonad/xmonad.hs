import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import System.IO
import XMonad.Util.Run
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers

main =do
  xmproc <- spawnPipe "xmobar"
  xmonad $ desktopConfig
    { terminal = "urxvt"
    , modMask = mod4Mask
    , manageHook = manageDocks <+> (isFullscreen --> doFullFloat) <+> manageHook desktopConfig
    , layoutHook = avoidStruts $ layoutHook desktopConfig
    , logHook = dynamicLogWithPP xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "blue" "" . shorten 50
                , ppLayout = const "" --to disable the layout info on xmobar
                }
    , workspaces = myWorkspaces
    }
  
--Define amount and names of workspace
myWorkspaces = ["Research \xf02d","Terminal \xf120","Browser \xf269","Code \xf121","Video \xf008","General \xf059"]
