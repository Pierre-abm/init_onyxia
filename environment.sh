GIT_REPO=detection_cypres
git clone --depth 1 https://pierre.abraham:ShSEnZ3w1vbK5vM8Z2gamG86MQp1Ojlhegk.01.0z0ihe40f@forge.inrae.fr/dynafor/dev-test/pierre-abraham/${GIT_REPO}.git
chown -R onyxia:users ${GIT_REPO}/

pip install -r ${GIT_REPO}/requirements.txt
