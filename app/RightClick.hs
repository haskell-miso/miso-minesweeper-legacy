{-# LANGUAGE OverloadedStrings #-}

module RightClick
    ( onRightClick
    ) where

import Miso.Event
import Miso.Types

onRightClick :: msg -> Attribute msg
onRightClick message =
    onWithOptions
        Options {preventDefault = True, stopPropagation = True}
        "contextmenu"
        emptyDecoder
        (\_ _ -> message)
