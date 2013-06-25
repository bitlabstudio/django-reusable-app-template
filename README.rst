Django Reusable App Template
============================

This repository aims to help you to kickstart new reusable Django apps within
a few minutes.

It was presented at PyCon Singapore 2013 for the first time, you can find the
slides of the talk here: https://speakerdeck.com/mbrochh/writing-publishing-and-maintaining-reusable-django-apps

A video of the talk can be found here: http://youtu.be/a4S1kTJfezA 

In order to kickstart your new reusable app, just do the following::

    git clone git://github.com/bitmazk/django-reusable-app-template.git your-app-name
    cd your-app-name
    nano init.sh
    # change all variables to your needs
    ./init.sh

After this you can create the virtual environment or your app::

    mkvirtualenv -p python2.7 your-app-name
    python setup.py install
    pip install -r test_requirements.txt

Now you can run the tests::

    ./your-app-name/tests/runtests.sh

Or you can initiate the database and preview your app in the browser::

    ./manage.py syncdb --all
    ./manage.py migrate --fake
    ./manage.py runserver

The only URL that is hooked up will be the admin url, so you can open
`localhost:8000/admin/`.

Once you have implemented your app, you can publish it on the Python Package
Index like so::

    python setup.py register
    python setup.py sdist upload
