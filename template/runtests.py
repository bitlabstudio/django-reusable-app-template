#!/usr/bin/env python
"""
This script is used to run tests, create a coverage report and output the
statistics at the end of the tox run.
To run this script just execute ``tox``
"""
import re

from fabric.api import local, warn
from fabric.colors import green, red


if __name__ == '__main__':
    local('flake8 --ignore=E126 --ignore=W391 --statistics'
          ' --exclude=submodules,migrations,build .')
    local('coverage run --source="VAR_PACKAGE_NAME" manage.py test -v 2'
          ' --traceback --failfast'
          ' --settings=VAR_PACKAGE_NAME.tests.settings'
          ' --pattern="*_tests.py"')
    local('coverage html -d coverage --omit="*__init__*,*/settings/*,'
          '*/migrations/*,*/tests/*,*admin*"')
    total_line = local('grep -n pc_cov coverage/index.html', capture=True)
    percentage = float(re.findall(r'(\d+)%', total_line)[-1])
    if percentage < 100:
        warn(red('Coverage is {0}%'.format(percentage)))
    print(green('Coverage is {0}%'.format(percentage)))
