export GHUSER=zaid4kspr


fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@users.noreply.github.com \
--git-url=git@github.com:${GHUSER}/docker-development-youtube-series \
--git-path=kubernetes/configmaps,kubernetes/secrets,kubernetes/deployments \
--git-branch=flux-test \
--namespace=flux | kubectl apply -f -


export FLUX_FORWARD_NAMESPACE=flux

fluxctl list-workloads