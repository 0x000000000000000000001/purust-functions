pub fn Data_Function_Uncurried_mkFn0(callback: purust_core::Func1<(), UnknownType>) -> UnknownType {
    Value::Func1(purust_core::Func1::Shared(std::rc::Rc::new(move |_| {
        callback(())
    })))
}

pub fn Data_Function_Uncurried_runFn0(callback: UnknownType) -> UnknownType {
    callback.unwrap_func1()(Value::Unit)
}

pub fn Data_Function_Uncurried_mkFn2(
    callback: purust_core::Func2<UnknownType, UnknownType, UnknownType>,
) -> UnknownType {
    Value::Func2(callback)
}

pub fn Data_Function_Uncurried_runFn2(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
) -> UnknownType {
    callback.unwrap_func2()(a, b)
}

pub fn Data_Function_Uncurried_mkFn3(
    callback: purust_core::Func3<UnknownType, UnknownType, UnknownType, UnknownType>,
) -> UnknownType {
    Value::Func3(callback)
}

pub fn Data_Function_Uncurried_runFn3(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
) -> UnknownType {
    callback.unwrap_func3()(a, b, c)
}

pub fn Data_Function_Uncurried_mkFn4(
    callback: purust_core::Func4<UnknownType, UnknownType, UnknownType, UnknownType, UnknownType>,
) -> UnknownType {
    Value::Func4(callback)
}

pub fn Data_Function_Uncurried_runFn4(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
) -> UnknownType {
    callback.unwrap_func4()(a, b, c, d)
}

pub fn Data_Function_Uncurried_mkFn5(
    callback: purust_core::Func5<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func5(callback)
}

pub fn Data_Function_Uncurried_runFn5(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
) -> UnknownType {
    callback.unwrap_func5()(a, b, c, d, e)
}

pub fn Data_Function_Uncurried_mkFn6(
    callback: purust_core::Func6<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func6(callback)
}

pub fn Data_Function_Uncurried_runFn6(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
    f: UnknownType,
) -> UnknownType {
    callback.unwrap_func6()(a, b, c, d, e, f)
}

pub fn Data_Function_Uncurried_mkFn7(
    callback: purust_core::Func7<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func7(callback)
}

pub fn Data_Function_Uncurried_runFn7(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
    f: UnknownType,
    g: UnknownType,
) -> UnknownType {
    callback.unwrap_func7()(a, b, c, d, e, f, g)
}

pub fn Data_Function_Uncurried_mkFn8(
    callback: purust_core::Func8<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func8(callback)
}

pub fn Data_Function_Uncurried_runFn8(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
    f: UnknownType,
    g: UnknownType,
    h: UnknownType,
) -> UnknownType {
    callback.unwrap_func8()(a, b, c, d, e, f, g, h)
}

pub fn Data_Function_Uncurried_mkFn9(
    callback: purust_core::Func9<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func9(callback)
}

pub fn Data_Function_Uncurried_runFn9(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
    f: UnknownType,
    g: UnknownType,
    h: UnknownType,
    i: UnknownType,
) -> UnknownType {
    callback.unwrap_func9()(a, b, c, d, e, f, g, h, i)
}

pub fn Data_Function_Uncurried_mkFn10(
    callback: purust_core::Func10<
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
        UnknownType,
    >,
) -> UnknownType {
    Value::Func10(callback)
}

pub fn Data_Function_Uncurried_runFn10(
    callback: UnknownType,
    a: UnknownType,
    b: UnknownType,
    c: UnknownType,
    d: UnknownType,
    e: UnknownType,
    f: UnknownType,
    g: UnknownType,
    h: UnknownType,
    i: UnknownType,
    j: UnknownType,
) -> UnknownType {
    callback.unwrap_func10()(a, b, c, d, e, f, g, h, i, j)
}
