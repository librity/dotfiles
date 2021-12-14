Application.put_env(:elixir, :ansi_enabled, true)

eval_config = [
  eval_error: [:red, :bright],
  eval_info: [:yellow, :bright]
]

IEx.configure(colors: eval_config)

# ["\e[G", :magenta, "%counter", :cyan, ">", :reset]
prompt_config =
  ["\e[G", :green, "(", :yellow, "%counter", :magenta, ")", :cyan, ">", :reset]
  |> IO.ANSI.format()
  |> IO.chardata_to_string()

IEx.configure(default_prompt: prompt_config)
