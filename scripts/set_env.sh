function set_env {
#!/bin/bash
export $(cat .env)
#sudo tailscaled &
#sudo tailscaled > /dev/null 2>&1
#sudo tailscale up --authkey=$TF_VAR_EF_TAILSCALE_TOKEN --accept-routes=true
echo "done"
}
