Perfect Python Project
======================

This template generator creates the basic structure for a Python project.

Features
--------

* Python 3.10+ (configurable)
* Poetry_ based dependency management
* Development tasks registered in a ``Makefile`` for easy access and management
* Custom Mercurial/Git hooks for ``pre-commit`` and ``pre-push`` events
* Linting based on flake8_ (and plugins), blue_, mypy_, isort_ and others
* Tests based on pytest_


Instructions
============

Install cookiecutter_ using pipx_:

.. code:: console

    $ pipx install cookiecutter

Or, if you prefer, use `pip` instead:

.. code:: console

    $ pip install --user cookiecutter

Next, run the following command:

.. code:: console

    $ cookiecutter gh:andredias/perfect_python_project -c fastapi-minimum

Answer a few questions:

.. code:: text

    author []: Fulano de Tal
    email []: fulano@email.com
    project_name [Project]: Project X
    project_slug [project_x]:
    python_version [3.10]:
    line_length [79]: 100
    Select version_control:
    1 - hg
    2 - git
    Choose from 1, 2 [1]: 1
    github_respository_url []:


That's it!


References
==========

* `How to Set up a Perfect Python Project <https://blog.pronus.io/en/posts/python/how-to-set-up-a-perfect-python-project/>`_.
  It describes all the design decisions used in this template.


.. _blue: https://pypi.org/project/blue/
.. _cookiecutter: https://github.com/cookiecutter/cookiecutter
.. _flake8: https://pypi.org/project/flake8/
.. _isort: https://pypi.org/project/isort/
.. _mypy: http://mypy-lang.org/
.. _pipx: https://pypa.github.io/pipx/
.. _Poetry: https://python-poetry.org/
.. _pytest: https://pytest.org
