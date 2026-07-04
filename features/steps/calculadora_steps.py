from behave import given, when, then


@given("que tengo el número {numero:d}")
def step_impl(context, numero):
    context.numeros = getattr(context, "numeros", [])
    context.numeros.append(numero)


@when("sumo ambos números")
def step_impl(context):
    context.resultado = sum(context.numeros)


@then("el resultado debería ser {esperado:d}")
def step_impl(context, esperado):
    assert context.resultado == esperado, f"Se esperaba {esperado}, se obtuvo {context.resultado}"
