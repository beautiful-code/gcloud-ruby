# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/logging/v2/logging.proto for package 'google.logging.v2'
# Original file comments:
# Copyright 2018 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


require 'grpc'
require 'google/logging/v2/logging_pb'

module Google
  module Logging
    module V2
      module LoggingServiceV2
        # Service for ingesting and querying logs.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.logging.v2.LoggingServiceV2'

          # Deletes all the log entries in a log.
          # The log reappears if it receives new entries.
          # Log entries written shortly before the delete operation might not be
          # deleted.
          rpc :DeleteLog, DeleteLogRequest, Google::Protobuf::Empty
          # Writes log entries to Logging. This API method is the
          # only way to send log entries to Logging. This method
          # is used, directly or indirectly, by the Logging agent
          # (fluentd) and all logging libraries configured to use Logging.
          # A single request may contain log entries for a maximum of 1000
          # different resources (projects, organizations, billing accounts or
          # folders)
          rpc :WriteLogEntries, WriteLogEntriesRequest, WriteLogEntriesResponse
          # Lists log entries.  Use this method to retrieve log entries from
          # Logging.  For ways to export log entries, see
          # [Exporting Logs](/logging/docs/export).
          rpc :ListLogEntries, ListLogEntriesRequest, ListLogEntriesResponse
          # Lists the descriptors for monitored resource types used by Logging.
          rpc :ListMonitoredResourceDescriptors, ListMonitoredResourceDescriptorsRequest, ListMonitoredResourceDescriptorsResponse
          # Lists the logs in projects, organizations, folders, or billing accounts.
          # Only logs that have entries are listed.
          rpc :ListLogs, ListLogsRequest, ListLogsResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
