Respire - Un client SPORE pour Python
=====================================

----

La spécification SPORE
----------------------

C'est un fichier JSON qui définit une API REST.

.. code-block:: json
    
    {
        "base_url": "http://localhost:8080",
        "expected_status": [200],
        "version": "0.1",
        "name": "todo",
        "methods": {
            "put_task": {
                "path": "/todo/:key",
                "description": "Update a task.",
                "required_params": ["key"],
                "method": "PUT",
                "formats": ["json"]
            },
        // ...

----

La spécification SPORE
----------------------

.. code-block:: json

            "delete_task": {
                "path": "/todo/:key",
                "description": "Delete the task.",
                "required_params": ["key"],
                "method": "DELETE",
                "formats": ["json"]
            },
            "get_todo": {
                "path": "/todo",
                "description": "Retrieves all task.",
                "method": "GET",
                "formats": ["json"]
            },
            "post_todo": {
                "path": "/todo",
                "description": "Saves a new task.",
                "method": "POST",
                "formats": ["json"]
    }}}

----

Les clients SPORE
-----------------

C'est une classe qui va lire l'url d'un fichier SPORE et générer un
objet avec des méthodes.

Il en existe dans plusieurs langages :

- Javascript / Nodejs / Jquery
- Clojure
- Lua
- Perl
- Ruby
- Python

----

Respire
-------

À PyConFR2012, on nous a présenté Spyre et on a souhaité l'utilisé pour l'API de Ducksboard.

- Il manque la gestion des requêtes POST et des middlewares
- C'est basé sur urllib

- Avec Alexis, nous avons codé **Respire** basé sur requests.
- Nous avons également ajouter un support de SPORE à cornice.

----

Un petit example
----------------

.. code-block:: python

    from respire import client_from_url
    
    client = client_from_url('http://localhost:8080/spore')

    client.post_todo(data=dict(respire='Make it work'))
    {'key': 'respire'}

    client.post_todo(data=dict(breizh='Make the LT'))
    {'key': 'breizh'}

    client.get_todo()
    {'respire': 'Make it work', 'breizh': 'Make the LT'}

----

Les middlewares
---------------

Si on souhaite se connecter à l'API, on peut utiliser un middleware.

.. code-block:: python

    from respire import client_from_url
    from respire.middleware import http_basic_auth

    client = client_from_url('http://localhost:8080/spore')

    http_auth = http_basic_auth('x', 'fyv1smysnfmytyn6ju')
    client.enable(http_auth)

    client.delete_task(key='respire')

----

Validation JSON
---------------

- Pour les tests on avait besoin de valider le json : rxjson

.. code-block:: python

    import requests
    from rxjson import Rx
    import unittest
    
    class SporeTest(unittest.TestCase):
        def test_spore(self):    
            rx = Rx.Factory({ "register_core_types": True })
            with open('spore_validation.rx') as f:
                spore_json_schema = json.loads(f.read())
                spore_schema = rx.make_schema(spore_json_schema)
                resp = requests.get('http://localhost:8080/spore', 
                     headers={'Content-Type': 'application/json'})
                self.assertTrue(spore_schema.check(resp.json))

----

Merci
-----

- https://github.com/spiral-project/respire
- https://github.com/spiral-project/jquery-spore
- https://github.com/spiral-project/rxjson

Tout ça pour daybed :

- https://github.com/spiral-project/daybed
