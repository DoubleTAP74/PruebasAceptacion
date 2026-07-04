from behave import given, when, then


@given("que el usuario está en la página de login")
def step_impl(context):
    context.pagina = "login"


@when("ingresa credenciales válidas")
def step_impl(context):
    context.credenciales_validas = True


@when("ingresa credenciales inválidas")
def step_impl(context):
    context.credenciales_validas = False


@then("debería ver la página principal")
def step_impl(context):
    assert context.credenciales_validas is True


@then("debería ver un mensaje de error")
def step_impl(context):
    assert context.credenciales_validas is False
