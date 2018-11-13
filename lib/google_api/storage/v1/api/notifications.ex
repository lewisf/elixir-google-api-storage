# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Storage.V1.Api.Notifications do
  @moduledoc """
  API calls for all endpoints tagged `Notifications`.
  """

  alias GoogleApi.Storage.V1.Connection
  alias GoogleApi.Gax.{Request, Response}


  @doc """
  Permanently deletes a notification subscription.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): The parent bucket of the notification.
  - notification (String.t): ID of the notification to delete.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec storage_notifications_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def storage_notifications_delete(connection, bucket, notification, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query
    }
    request =
      Request.new
      |> Request.method(:delete)
      |> Request.url("/storage/v1/b/{bucket}/notificationConfigs/{notification}", %{
         "bucket" => URI.encode_www_form(bucket),
         "notification" => URI.encode_www_form(notification)
       })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  View a notification configuration.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): The parent bucket of the notification.
  - notification (String.t): Notification ID
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec storage_notifications_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Notification.t} | {:error, Tesla.Env.t}
  def storage_notifications_get(connection, bucket, notification, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/notificationConfigs/{notification}", %{
         "bucket" => URI.encode_www_form(bucket),
         "notification" => URI.encode_www_form(notification)
       })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Notification{}])
  end

  @doc """
  Creates a notification subscription for a given bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): The parent bucket of the notification.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.
    - :body (Notification): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec storage_notifications_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Notification.t} | {:error, Tesla.Env.t}
  def storage_notifications_insert(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/storage/v1/b/{bucket}/notificationConfigs", %{
         "bucket" => URI.encode_www_form(bucket)
       })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Notification{}])
  end

  @doc """
  Retrieves a list of notification subscriptions for a given bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a Google Cloud Storage bucket.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.Notifications{}} on success
  {:error, info} on failure
  """
  @spec storage_notifications_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Storage.V1.Model.Notifications.t} | {:error, Tesla.Env.t}
  def storage_notifications_list(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"userProject" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/notificationConfigs", %{
         "bucket" => URI.encode_www_form(bucket)
       })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.Notifications{}])
  end
end