# Notes
## Sealed Secrets
### Appending to application-secrets.yaml
kubectl create secret generic application-secrets \
    --from-literal=foo=bar \
    --dry-run=client \
    -o yaml | \
    kubeseal \
        --controller-namespace=flux-system \
        --cert=pub-sealed-secrets.pem \
        --format yaml --merge-into applications/templates/application-secrets.yaml