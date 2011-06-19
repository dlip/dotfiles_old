import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Actions.CycleWS (nextWS, prevWS)

myManageHook = composeAll
    [ manageHook gnomeConfig
    , className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "gnome-panel" --> doIgnore
    , className  =? "Do"       --> doIgnore]


myConfig = gnomeConfig {
          layoutHook  = smartBorders (layoutHook gnomeConfig)
          ,  manageHook         = myManageHook
          , modMask = mod4Mask
    }

myKeys =
    [ ("M-<L>", prevWS)
    , ("M-<R>", nextWS)
    ]

main = xmonad $ myConfig `additionalKeysP` myKeys
