import Config

port = String.to_integer(System.get_env("PORT") || "4000")
secret_key_base = System.get_env("SECRET_KEY_BASE") ||
  raise """
  environment variable SECRET_KEY_BASE is missing.
  You can generate one by calling: mix phx.gen.secret
  """
config :logger, level: String.to_atom(System.get_env("LOG_LEVEL") || "info")

config :wordplay, CointoolWeb.Endpoint,
  http: [:inet6, port: port],
  secret_key_base: secret_key_base
