import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import System.IO
import XMonad.Util.Run
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders

main =do
  xmproc <- spawnPipe "xmobar"
  xmonad $ desktopConfig
    { terminal = "urxvt"
    , modMask = mod4Mask
    , manageHook = manageDocks <+> (isFullscreen --> doFullFloat) <+> manageHook desktopConfig
    , layoutHook = noBorders myLayout
    , logHook = dynamicLogWithPP xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "blue" "" . shorten 40
                , ppLayout = const "" --to disable the layout info on xmobar
                }
    , workspaces = myWorkspaces
    }

myLayout = avoidStruts ( tiled ||| Mirror tiled ) ||| Full
  where
    --default layout algorithm partition
    tiled = spacing 10 $ Tall nmaster delta ratio

    -- Default number of windows in master pane
    nmaster = 1

    --Default proportion of screen occupied by master pane
    ratio = 1/2

    -- Percent of screen to increment by when resizing panes
    delta = 5 / 100
        
  
--Define amount and names of workspace
myWorkspaces = ["Research \xf02d","Terminal \xf120","Browser \xf269","Code \xf121","Video \xf008","General \xf059"]
