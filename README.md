# AegisX Platform Installer

```bash
# Install (one command, no token needed)
curl -sL https://raw.githubusercontent.com/aegisx-platform/aegisx-install/main/install.sh | bash -s -- --registry dockerhub --non-interactive

# Or download first
curl -sL https://raw.githubusercontent.com/aegisx-platform/aegisx-install/main/install.sh -o install.sh
bash install.sh --registry dockerhub --non-interactive

# With specific version
bash install.sh --registry dockerhub --tag v1.25.3 --non-interactive

# With external database
bash install.sh --registry dockerhub --mode external-db --db-url "postgres://user:pass@host:5432/aegisx_db" --non-interactive
```

Full documentation: see comments inside install.sh
