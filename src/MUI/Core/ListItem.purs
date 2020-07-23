{- This module was autogenerated. Please don't edit. -}
module MUI.Core.ListItem where

import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import Prelude
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_li) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)
import Unsafe.Reference (unsafeRefEq)

foreign import data AlignItems :: Type

alignItems ::
  { "FlexStart" :: AlignItems
  , center :: AlignItems
  }
alignItems = { "FlexStart": unsafeCoerce "flex-start", center: unsafeCoerce "center" }

instance eqAlignItems :: Eq AlignItems where
  eq = unsafeRefEq

type ListItemClassesGenericRow a
  = ( button :: a
    , container :: a
    , default :: a
    , dense :: a
    , disabled :: a
    , divider :: a
    , focusVisible :: a
    , gutters :: a
    , root :: a
    , secondaryAction :: a
    , selected :: a
    )

type ListItemClassesKey
  = ListItemClassesGenericRow String

type ListItemClassesJSS
  = ListItemClassesGenericRow JSS

type ListItemOptPropsRow (r :: #Type)
  = ( alignItems :: AlignItems
    , autoFocus :: Boolean
    , button :: Boolean
    , children :: Array JSX
    , classes :: { | ListItemClassesKey }
    , dense :: Boolean
    , disableGutters :: Boolean
    , disabled :: Boolean
    , divider :: Boolean
    , selected :: Boolean
    | r
    )

type ListItemReqPropsRow (r :: #Type)
  = r

type ListItemPropsRow (r :: #Type)
  = ListItemOptPropsRow (ListItemReqPropsRow r)

foreign import _UnsafeListItem :: forall componentProps. ReactComponent { | ListItemPropsRow componentProps }

_ListItem ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemPropsRow React.Basic.DOM.Props_li) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_ListItem = unsafeCoerce _UnsafeListItem

listItem ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemPropsRow React.Basic.DOM.Props_li) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
listItem props = element _ListItem props

listItemWithStyles ::
  forall jss_ jss given optionalGiven optionalMissing props required.
  Nub' (ListItemReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemPropsRow React.Basic.DOM.Props_li) props =>
  Prim.Row.Union given optionalMissing props =>
  Prim.Row.Union jss jss_ ListItemClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> { | given } -> JSX
listItemWithStyles style props = element (withStyles' style _ListItem) props
  where
  withStyles' :: (MUI.Core.Styles.Theme -> { | jss }) -> ReactComponent { | given } -> ReactComponent { | given }
  withStyles' = unsafeCoerce MUI.Core.Styles.withStyles

foreign import data ListItemProps :: Type

listItemProps ::
  forall given optionalGiven optionalMissing props required.
  Nub' (ListItemReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (ListItemPropsRow React.Basic.DOM.Props_li) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> ListItemProps
listItemProps = unsafeCoerce
