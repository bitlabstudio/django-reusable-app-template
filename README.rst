Django Reusable App Template
============================

This repository aims to help you to kickstart new reusable Django apps within
a few minutes.

It was presented at PyCon Singapore 2013 for the first time, you can find the
slides of the talk here: https://speakerdeck.com/mbrochh/writing-publishing-and-maintaining-reusable-django-apps

A video of the talk can be found here: http://youtu.be/a4S1kTJfezA

In order to kickstart your new reusable app, just do the following

.. code-block:: bash

    git clone git://github.com/bitmazk/django-reusable-app-template.git your-app-name
    cd your-app-name
    nano init.sh
    # change all variables to your needs
    ./init.sh

The init script will replace all placeholders in the project files in the
``template`` folder with your desired values. Then it will rename a few
folders into your desired app name. Next it will remove the ``.git`` folder,
move everything from ``template`` into the root folder and create a first
initial commit. Now you have a new reusable app that does nothing, yet.

After this you can create the virtual environment or your app

.. code-block:: bash

    mkvirtualenv -p python2.7 your-app-name
    python setup.py install
    pip install -r test_requirements.txt

Now you can run the tests

.. code-block:: bash

    ./your-app-name/tests/runtests.py

Or you can initiate the database and preview your app in the browser

.. code-block:: bash

    ./manage.py syncdb --all
    ./manage.py migrate --fake
    ./manage.py runserver

The only URL that is hooked up will be the admin url, so you can open
`localhost:8000/admin/`.

Once you have implemented your app, you can publish it on the Python Package
Index like so

.. code-block:: bash

    python setup.py register
    python setup.py sdist upload
