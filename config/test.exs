use Mix.Config

config :prometheus_timer,
  instrumenter: PrometheusTimer.Instrumenter.Default,
  timers: [
    [
      name: :test_function_timer,
      buckets: [100, 300, 500, 750, 1000],
      help: "Used to test timers in tests"
    ]
  ],
  server: true,
  url_scheme: :http,
  port: 4001
