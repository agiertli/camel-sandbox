# Slack Bot App Setup

1. Go to [Slack API Apps](https://api.slack.com/apps) and create a new app.
2. Set the following **Bot Token** permissions:
   - `channels:history`
   - `groups:history`
   - `im:history`
   - `mpim:history`
   - `channels:read`
   - `groups:read`
   - `im:read`
   - `mpim:read`
3. Enable **Incoming Webhooks** for the app.
4. Copy the **User OAuth Token**.
5. Open `slack-integration.properties` and set:

```properties
token=xoxp-...
channel=#your-channel-name
```

6. Run the integration:

```sh
camel run --properties=slack-integration.properties slack-source.camel.yaml
```