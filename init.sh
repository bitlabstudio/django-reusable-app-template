#!/bin/bash
# The variable values here are just examples. Replace them all with real values
# of your own app.

# Your full name, will appear in AUTHORS, LICENSE and setup.py
VAR_FULL_NAME='Your Name'

# Your email address, used in setup.py, shown on pypi.python.org
export VAR_AUTHOR_EMAIL='yourmail@gmail.com'

# The project name as it would appear as the main headline in the README
# You should google for your app name first and make sure that no one else has
# taken it.
VAR_APP_NAME='Django Reusable App Template'

# The package name, which would be added to INSTALLED_APPS
VAR_PACKAGE_NAME='reusable_app_template'

# Example URL path the app should be loaded at
VAR_URL_HOOK='app-url'

# The package name as defined in setup.py - this is also what you would search
# for on pypi.python.org. You should search pypi.python.org first and make sure
# that your package name is not taken already.
VAR_PYPI_NAME='django-reusable-app-template'

# A short description which will be parsed by pypi.python.org
VAR_DESCRIPTION='A reusable Django app that does nothing much.'

# Path to your repo on Github (without the .git at the end)
VAR_GITHUB_REPO='github.com/mbrochh/django-reusable-app-template'

# Keywords for your app, used in setup.py
VAR_KEYWORDS='django, app, reusable'

# Current year, will be shown in the license file. You can set it to any year
# (i.e. 2001) or just leave this default and compute it automatically
VAR_YEAR=`date +'%Y'`

# ============================================================================

rm -rf .git
rm README.rst
rm AUTHORS
CMD=(find ./template -type f \( ! -iname '*.pyc' ! -iname 'init.sh' \) -print0)
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_YEAR#${VAR_YEAR}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_FULL_NAME#${VAR_FULL_NAME}#g"
"${CMD[@]}" | xargs -0 perl -pi -e 's#VAR_AUTHOR_EMAIL#$ENV{VAR_AUTHOR_EMAIL}#g'
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_APP_NAME#${VAR_APP_NAME}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_PACKAGE_NAME#${VAR_PACKAGE_NAME}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_PYPI_NAME#${VAR_PYPI_NAME}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_DESCRIPTION#${VAR_DESCRIPTION}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_GITHUB_REPO#${VAR_GITHUB_REPO}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_KEYWORDS#${VAR_KEYWORDS}#g"
"${CMD[@]}" | xargs -0 perl -pi -e "s#VAR_URL_HOOK#${VAR_URL_HOOK}#g"
mv template/package_name template/$VAR_PACKAGE_NAME
mv template/$VAR_PACKAGE_NAME/static/package_name  template/$VAR_PACKAGE_NAME/static/$VAR_PACKAGE_NAME
mv template/$VAR_PACKAGE_NAME/templates/package_name  template/$VAR_PACKAGE_NAME/templates/$VAR_PACKAGE_NAME
mv template/$VAR_PACKAGE_NAME/templatetags/package_name_tags.py  template/$VAR_PACKAGE_NAME/templatetags/${VAR_PACKAGE_NAME}_tags.py
 

rm init.sh
mv template/* .
mv template/.gitignore .
mv template/.travis.yml .
rmdir template
git init
git add .
git commit -am "Initial commit"
echo "All done! Don't forget to fix the first headline in README.rst!"
