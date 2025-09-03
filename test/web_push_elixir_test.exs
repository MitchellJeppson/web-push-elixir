defmodule WebPushElixirTest do
  use ExUnit.Case

  @subscription "{\"endpoint\":\"http://localhost:4040/some-push-service\",\"keys\":{\"p256dh\":\"BNcRdreALRFXTkOOUHK1EtK2wtaz5Ry4YfYCA_0QTpQtUbVlUls0VJXg7A8u-Ts1XbjhazAkj7I99e8QcYP7DkM=\",\"auth\":\"tBHItJI5svbpez7KI4CCXg==\"}}"

  test "it should send notification" do
    %{
      vapid_public_key: vapid_public_key,
      vapid_private_key: vapid_private_key,
      vapid_subject: vapid_subject
    } = Mix.Tasks.Generate.Vapid.Keys.run([])

    Application.put_env(:web_push_elixir, :vapid_public_key, vapid_public_key)

    Application.put_env(:web_push_elixir, :vapid_private_key, vapid_private_key)

    Application.put_env(:web_push_elixir, :vapid_subject, vapid_subject)
  end
end
