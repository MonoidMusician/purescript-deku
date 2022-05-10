module Deku.DOM.Elt.Svg where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify)
import Control.Monad.ST.Class (class MonadST)
import Deku.Core (Domable(..), FixedChildren(..))
import FRP.Event (AnEvent)

data Svg_

svg
  :: forall s m lock payload
   . MonadST s m
  => AnEvent m (Attribute Svg_)
  -> Array (Domable m lock payload)
  -> Domable m lock payload
svg attributes kids = Element'
  (elementify "svg" attributes (FixedChildren' (FixedChildren kids)))

svg_
  :: forall s m lock payload
   . MonadST s m
  => Array (Domable m lock payload)
  -> Domable m lock payload
svg_ = svg empty

