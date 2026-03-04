GIT_REPO=detection_cypres
git clone --depth 1 git clone https://oauth2:ShSEnZ3w1vbK5vM8Z2gamG86MQp1Ojlhegk.01.0z0ihe40f@forge.inrae.fr:dynafor/dev-test/pierre-abraham/detection_cypres.git
chown -R onyxia:users ${GIT_REPO}/

pip install -r ${GIT_REPO}/requirements.txt
