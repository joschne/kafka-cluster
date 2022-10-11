
echo Enter github user name
read ghcr_user
echo $ghcr_user


echo Enter github Personal Access Token PAT
read ghcr_pat
echo $ghcr_pat

kubectl create secret docker-registry github-docker-push-secret \
  --docker-server=ghcr.io \
  --docker-username=$ghcr_user \
  --docker-password=$ghcr_pat \
  -n kafka