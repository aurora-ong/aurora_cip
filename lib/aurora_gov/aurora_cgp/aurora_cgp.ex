defmodule AuroraGov do
  use Commanded.Application,
    otp_app: :aurora_gov,
    event_store: [
      adapter: Commanded.EventStore.Adapters.EventStore,
      event_store: AuroraGov.EventStore
    ]

  # pubsub: [
  #   phoenix_pubsub: [
  #     adapter: Phoenix.PubSub.PG2,
  #     pool_size: 1
  #   ]
  # ]

  router(AuroraGov.Router)
end
