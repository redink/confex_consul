defmodule ConfexConsul.ConsulKv do
  @moduledoc false

  @spec get_value(String.t()) :: {:ok, any()} | {:error, any()}
  def get_value(consul_key) do
    case ConsulKv.single_get(consul_key) do
      {:ok, %ConsulKv{value: value}} -> {:ok, value}
      other -> other
    end
  end
end
