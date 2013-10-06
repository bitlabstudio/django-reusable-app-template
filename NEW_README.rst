VAR_APP_NAME
============

VAR_DESCRIPTION

Installation
------------

To get the latest stable release from PyPi

.. code-block:: bash

    pip install VAR_PYPI_NAME

To get the latest commit from GitHub

.. code-block:: bash

    pip install -e git+git://VAR_GITHUB_REPO.git#egg=VAR_PACKAGE_NAME

TODO: Describe further installation steps (edit / remove the examples below):

Add ``VAR_PACKAGE_NAME`` to your ``INSTALLED_APPS``

.. code-block:: python

    INSTALLED_APPS = (
        ...,
        'VAR_PACKAGE_NAME',
    )

Add the ``VAR_PACKAGE_NAME`` URLs to your ``urls.py``

.. code-block:: python

    urlpatterns = patterns('',
        ...
        url(r'^VAR_URL_HOOK/', include('VAR_PACKAGE_NAME.urls')),
    )

Before your tags/filters are available in your templates, load them by using

.. code-block:: html

	{% load VAR_PACKAGE_NAME_tags %}


Don't forget to migrate your database

.. code-block:: bash

    ./manage.py migrate VAR_PACKAGE_NAME


Usage
-----

TODO: Describe usage or point to docs. Also describe available settings and
templatetags.


Contribute
----------

If you want to contribute to this project, please perform the following steps

.. code-block:: bash

    # Fork this repository
    # Clone your fork
    mkvirtualenv -p python2.7 VAR_PYPI_NAME
    python setup.py install
    pip install -r dev_requirements.txt

    git co -b feature_branch master
    # Implement your feature and tests
    git add . && git commit
    git push -u origin feature_branch
    # Send us a pull request for your feature branch
