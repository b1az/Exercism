# Notes to myself

## DX

### Run tests on save

Add a test-watcher in `mix.exs` in `deps`:

`{:mix_test_watch, "~> 0.8", only: :dev, runtime: false}`

(With `sed` on macOS:

`gsed -i '24i\      {:mix_test_watch, "~> 0.8", only: :dev, runtime: false}' <kata-name>/mix.exs`
)

Run `mix deps.get` and `mix test.watch`

## Specs

Compile to BEAM with `elixirc some.ex`: this produces `Elixir.Some.beam` in same dir. Then `dialyzer --build_plt --src Elixir.some.beam` and (for now) get:

> Byte code compiled with debug_info is needed to build the PLT