Feature: Flujo completo PetStore

  Scenario: Crear, consultar, actualizar y validar mascota

    * url baseUrl
    * def petId = Java.type('java.lang.System').currentTimeMillis()

    # Crear mascota

    Given path 'pet'
    And request
    """
    {
      "id": #(petId),
      "name": "Bowen",
      "status": "available"
    }
    """
    When method POST
    Then status 200
    And match response.id == petId
    And match response.name == 'Bowen'
    And match response.status == 'available'

    # Consultar mascota por ID

    Given path 'pet', petId
    When method GET
    Then status 200
    And match response.id == petId
    And match response.name == 'Bowen'

    # Actualizar mascota

    Given path 'pet'
    And request
    """
    {
      "id": #(petId),
      "name": "Ghost",
      "status": "sold"
    }
    """
    When method PUT
    Then status 200
    And match response.name == 'Ghost'
    And match response.status == 'sold'

    # Consultar por status

    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200