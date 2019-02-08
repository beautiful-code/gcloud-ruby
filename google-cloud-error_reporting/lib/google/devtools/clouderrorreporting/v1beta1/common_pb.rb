# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/clouderrorreporting/v1beta1/common.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/monitored_resource_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.devtools.clouderrorreporting.v1beta1.ErrorGroup" do
    optional :name, :string, 1
    optional :group_id, :string, 2
    repeated :tracking_issues, :message, 3, "google.devtools.clouderrorreporting.v1beta1.TrackingIssue"
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.TrackingIssue" do
    optional :url, :string, 1
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.ErrorEvent" do
    optional :event_time, :message, 1, "google.protobuf.Timestamp"
    optional :service_context, :message, 2, "google.devtools.clouderrorreporting.v1beta1.ServiceContext"
    optional :message, :string, 3
    optional :context, :message, 5, "google.devtools.clouderrorreporting.v1beta1.ErrorContext"
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.ServiceContext" do
    optional :service, :string, 2
    optional :version, :string, 3
    optional :resource_type, :string, 4
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.ErrorContext" do
    optional :http_request, :message, 1, "google.devtools.clouderrorreporting.v1beta1.HttpRequestContext"
    optional :user, :string, 2
    optional :report_location, :message, 3, "google.devtools.clouderrorreporting.v1beta1.SourceLocation"
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.HttpRequestContext" do
    optional :method, :string, 1
    optional :url, :string, 2
    optional :user_agent, :string, 3
    optional :referrer, :string, 4
    optional :response_status_code, :int32, 5
    optional :remote_ip, :string, 6
  end
  add_message "google.devtools.clouderrorreporting.v1beta1.SourceLocation" do
    optional :file_path, :string, 1
    optional :line_number, :int32, 2
    optional :function_name, :string, 4
  end
end

module Google
  module Devtools
    module Clouderrorreporting
      module V1beta1
        ErrorGroup = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.ErrorGroup").msgclass
        TrackingIssue = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.TrackingIssue").msgclass
        ErrorEvent = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.ErrorEvent").msgclass
        ServiceContext = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.ServiceContext").msgclass
        ErrorContext = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.ErrorContext").msgclass
        HttpRequestContext = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.HttpRequestContext").msgclass
        SourceLocation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouderrorreporting.v1beta1.SourceLocation").msgclass
      end
    end
  end
end
