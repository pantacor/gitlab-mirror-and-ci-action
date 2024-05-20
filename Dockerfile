FROM krauthosting/ubi8-git-curl-jq:latest

LABEL "com.github.actions.name"="Mirror to GitLab and run GitLab CI"
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab, trigger GitLab CI and post results back to GitHub"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/pantacor/gitlab-mirror-and-ci-action"
LABEL "homepage"="https://github.com/pantacor/gitlab-mirror-and-ci-action"
LABEL "maintainer"="Sebass van Boxel <hello@svboxel.com>"
LABEL "maintainer"="Alexander Sack <asac@pantacor.com>"


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
