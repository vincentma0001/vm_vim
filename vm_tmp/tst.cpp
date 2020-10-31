
// ================================================================================================ //
// ==  Class CBitStr<CBit08, tsztBufSize> Construct && Destruct realization                      == //
// ================================================================================================ //
// [ Class CBitStr<CBit08, tsztBufSize> Construct && Destruct realization ] {{{

// ================================================================================================ //
// ==  Methord : CBitStr<CBit08, tsztBufSize>::CBitStr()                                         == //
// == ------------------------------------------------------------------------------------------ == //
// ==  Brief   : Construct define
template< typename CBit08, size_t tsztBufSize >
inline vm::CBitStr< CBit08, tsztBufSize >::CBitStr(  )
// {{{
{
}
// }}} End of func CBitStr<CBit08, tsztBufSize>::CBitStr()
// ================================================================================================ //

// ================================================================================================ //
// ==  Methord : virtual CBitStr<CBit08, tsztBufSize>::~CBitStr()                                == //
// == ------------------------------------------------------------------------------------------ == //
// ==  Brief   : Destruct define
template< typename CBit08, size_t tsztBufSize >
inline vm::CBitStr< CBit08, tsztBufSize >::~CBitStr(  )
// {{{
{
}
// }}} End of func CBitStr<CBit08, tsztBufSize>::~CBitStr()
// ================================================================================================ //

// ================================================================================================ //
// ==  Methord : CBitStr<CBit08, tsztBufSize>::CBitStr()                                         == //
// == ------------------------------------------------------------------------------------------ == //
// ==  Brief   : Copy construct define
template< typename CBit08, size_t tsztBufSize >
inline vm::CBitStr< CBit08, tsztBufSize >::CBitStr( const CBitStr &obj )
// {{{
{
    *this = obj;
}
// }}} End of func CBitStr<CBit08, tsztBufSize>::CBitStr()
// ================================================================================================ //

// }}} ![ Class CBitStr<CBit08, tsztBufSize> Construct && Destruct realization ]
// ================================================================================================ //


// ================================================================================================ //
// ==  Class CBitStr<CBit08, tsztBufSize> operator realization                                   == //
// ================================================================================================ //
// [ Class CBitStr<CBit08, tsztBufSize> operator realization ] {{{

// ================================================================================================ //
// ==  Methord : CBitStr<CBit08, tsztBufSize>::operator = ()                                     == //
// == ------------------------------------------------------------------------------------------ == //
// ==  Brief   : Assignment operation
// ==  Return  : CBitStr<CBit08, tsztBufSize>& - [O] this object
template< typename CBit08, size_t tsztBufSize >
inline vm::CBitStr<CBit08, tsztBufSize$>& vm::CBitStr<CBit08, tsztBufSize>::operator = ( const CBitStr &obj )
// {{{
{
    return *this;
}
// }}} End of func CBitStr<CBit08, tsztBufSize>::operator=()
// ================================================================================================ //

// }}} ![ Class CBitStr<CBit08, tsztBufSize> operator realization ]
// ================================================================================================ //


// ================================================================================================ //
// ==  Class CBitStr<CBit08, tsztBufSize> Functional realization                                 == //
// ================================================================================================ //
// [ Class CBitStr<CBit08, tsztBufSize> Functional realization ] {{{


// }}} ![ Class CBitStr<CBit08, tsztBufSize> Functional realization ]
// ================================================================================================ //
