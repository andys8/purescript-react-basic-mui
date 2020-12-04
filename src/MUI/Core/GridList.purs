{- This module was autogenerated. Please don't edit. -}
module MUI.Core.GridList where

import Effect (Effect) as Effect
import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import MUI.React.Basic (element) as MUI.React.Basic
import Prelude
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_ul) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)

foreign import data CellHeight :: Type

cellHeight ::
  { auto :: CellHeight
  , number :: Number -> CellHeight
  }
cellHeight = { auto: unsafeCoerce "auto", number: unsafeCoerce }

type GridListClassesGenericRow a
  = ( root :: a
    )

type GridListClassesKey
  = GridListClassesGenericRow String

type GridListClassesJSS
  = GridListClassesGenericRow JSS

type GridListOptPropsRow (r :: # Type)
  = ( cellHeight :: CellHeight
    , children :: Array JSX
    , classes :: { | GridListClassesKey }
    , cols :: Number
    , spacing :: Number
    | r
    )

type GridListReqPropsRow (r :: # Type)
  = r

type GridListPropsRow (r :: # Type)
  = GridListOptPropsRow (GridListReqPropsRow r)

foreign import _UnsafeGridList :: forall componentProps. ReactComponent { | GridListPropsRow componentProps }

_GridList ::
  forall given optionalGiven optionalMissing props required.
  Nub' (GridListReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (GridListPropsRow React.Basic.DOM.Props_ul) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_GridList = unsafeCoerce _UnsafeGridList

gridList ::
  forall given optionalGiven optionalMissing props required.
  Nub' (GridListReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (GridListPropsRow React.Basic.DOM.Props_ul) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
gridList ps = element _GridList ps

_GridList' :: ReactComponent GridListProps
_GridList' = unsafeCoerce _UnsafeGridList

gridListWithStyles ::
  forall jss_ jss.
  Prim.Row.Union jss jss_ GridListClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> Effect.Effect (GridListProps -> JSX)
gridListWithStyles style = render
  where
  withStyles' :: ReactComponent GridListProps -> Effect.Effect (ReactComponent GridListProps)
  withStyles' = MUI.Core.Styles.withStyles (unsafeCoerce style)

  styledComponent = withStyles' _GridList'

  render = map MUI.React.Basic.element styledComponent

foreign import data GridListProps :: Type

props ::
  forall given optionalGiven optionalMissing props required.
  Nub' (GridListReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (GridListPropsRow React.Basic.DOM.Props_ul) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> GridListProps
props = unsafeCoerce
