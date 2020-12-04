{- This module was autogenerated. Please don't edit. -}
module MUI.Core.FormGroup where

import Effect (Effect) as Effect
import MUI.Core (JSS, class Nub')
import MUI.Core.Styles (Theme, withStyles) as MUI.Core.Styles
import MUI.React.Basic (element) as MUI.React.Basic
import Prelude
import Prim.Row (class Union) as Prim.Row
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div) as React.Basic.DOM
import Unsafe.Coerce (unsafeCoerce)

type FormGroupClassesGenericRow a
  = ( root :: a
    , row :: a
    )

type FormGroupClassesKey
  = FormGroupClassesGenericRow String

type FormGroupClassesJSS
  = FormGroupClassesGenericRow JSS

type FormGroupOptPropsRow (r :: # Type)
  = ( children :: Array JSX
    , classes :: { | FormGroupClassesKey }
    , row :: Boolean
    | r
    )

type FormGroupReqPropsRow (r :: # Type)
  = r

type FormGroupPropsRow (r :: # Type)
  = FormGroupOptPropsRow (FormGroupReqPropsRow r)

foreign import _UnsafeFormGroup :: forall componentProps. ReactComponent { | FormGroupPropsRow componentProps }

_FormGroup ::
  forall given optionalGiven optionalMissing props required.
  Nub' (FormGroupReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (FormGroupPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  ReactComponent { | given }
_FormGroup = unsafeCoerce _UnsafeFormGroup

formGroup ::
  forall given optionalGiven optionalMissing props required.
  Nub' (FormGroupReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (FormGroupPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> JSX
formGroup ps = element _FormGroup ps

_FormGroup' :: ReactComponent FormGroupProps
_FormGroup' = unsafeCoerce _UnsafeFormGroup

formGroupWithStyles ::
  forall jss_ jss.
  Prim.Row.Union jss jss_ FormGroupClassesJSS =>
  (MUI.Core.Styles.Theme -> { | jss }) -> Effect.Effect (FormGroupProps -> JSX)
formGroupWithStyles style = render
  where
  withStyles' :: ReactComponent FormGroupProps -> Effect.Effect (ReactComponent FormGroupProps)
  withStyles' = MUI.Core.Styles.withStyles (unsafeCoerce style)

  styledComponent = withStyles' _FormGroup'

  render = map MUI.React.Basic.element styledComponent

foreign import data FormGroupProps :: Type

props ::
  forall given optionalGiven optionalMissing props required.
  Nub' (FormGroupReqPropsRow ()) required =>
  Prim.Row.Union required optionalGiven given =>
  Nub' (FormGroupPropsRow React.Basic.DOM.Props_div) props =>
  Prim.Row.Union given optionalMissing props =>
  { | given } -> FormGroupProps
props = unsafeCoerce
