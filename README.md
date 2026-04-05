### Configuration Setup

To set up the environment, you can configure the following environment variables:

```bash id="k9wsdu"
export UUID="8eab842e-360d-4a77-83ed-6d6f0a378fed"          # Unique identifier
export NEZHA_SERVER=""                                     # Nezha monitoring server URL
export NEZHA_PORT=""                                       # Nezha server port
export NEZHA_KEY=""                                        # Nezha API key
export DOMAIN=""                                           # Domain name
export AUTO_ACCESS="false"                                 # Enable auto keep-alive (default: false)
export WSPATH="${UUID:0:8}"                                # WebSocket path (default is first 8 chars of UUID)
export SUB_PATH="sub"                                      # Subscription path
export NAME=""                                             # Node name (optional)
export PORT="3000"                                         # Port for HTTP service
export KOMARI_SERVER=""                                    # Komari server URL (e.g., https://komari.server.com)
export KOMARI_KEY=""                                       # Komari API key
```

### Configuration Explanation

* **UUID**: A unique identifier for the instance, defaults to `8eab842e-360d-4a77-83ed-6d6f0a378fed` if not set.
* **NEZHA_SERVER**: The address of the Nezha monitoring server.
* **NEZHA_PORT**: The port used by the Nezha monitoring service.
* **NEZHA_KEY**: The API key used for authentication with the Nezha server.
* **DOMAIN**: The domain name for the service.
* **AUTO_ACCESS**: Enables auto keep-alive functionality. Set to `true` to enable, defaults to `false`.
* **WSPATH**: The WebSocket path for communication, defaults to the first 8 characters of `UUID`.
* **SUB_PATH**: The path for subscriptions, default is `sub`.
* **NAME**: The name of the node, leave empty if not needed.
* **PORT**: The HTTP service port, defaults to `3000`.
* **KOMARI_SERVER**: The address of the Komari monitoring server, formatted like `https://komari.server.com`.
* **KOMARI_KEY**: The API key used for Komari authentication.

---

### Forked Repositories

This project is a fork from:

* [eooce/node-ws](https://github.com/eooce/node-ws)
