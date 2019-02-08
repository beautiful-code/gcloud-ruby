# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/irm/v1alpha2/incidents.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/monitoring/v3/metric_service_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.irm.v1alpha2.User" do
    oneof :user do
      optional :user_id, :string, 1
      optional :email, :string, 2
    end
  end
  add_message "google.cloud.irm.v1alpha2.Signal" do
    optional :name, :string, 1
    optional :etag, :string, 2
    optional :incident, :string, 3
    optional :create_time, :message, 4, "google.protobuf.Timestamp"
    optional :creator, :message, 5, "google.cloud.irm.v1alpha2.User"
    optional :title, :string, 6
    optional :content_type, :string, 7
    optional :content, :string, 8
    optional :signal_state, :enum, 9, "google.cloud.irm.v1alpha2.Signal.State"
  end
  add_enum "google.cloud.irm.v1alpha2.Signal.State" do
    value :STATE_UNSPECIFIED, 0
    value :STATE_OPEN, 1
    value :STATE_CLOSED, 2
  end
  add_message "google.cloud.irm.v1alpha2.Annotation" do
    optional :name, :string, 1
    optional :author, :message, 2, "google.cloud.irm.v1alpha2.User"
    optional :create_time, :message, 3, "google.protobuf.Timestamp"
    optional :content, :string, 4
  end
  add_message "google.cloud.irm.v1alpha2.Tag" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :url, :string, 3
  end
  add_message "google.cloud.irm.v1alpha2.Synopsis" do
    optional :content_type, :string, 1
    optional :content, :string, 2
    optional :update_time, :message, 3, "google.protobuf.Timestamp"
    optional :author, :message, 4, "google.cloud.irm.v1alpha2.User"
  end
  add_message "google.cloud.irm.v1alpha2.Incident" do
    optional :name, :string, 1
    optional :title, :string, 2
    optional :escalation_level, :enum, 3, "google.cloud.irm.v1alpha2.Incident.EscalationLevel"
    optional :etag, :string, 4
    optional :severity, :enum, 5, "google.cloud.irm.v1alpha2.Incident.Severity"
    optional :stage, :enum, 6, "google.cloud.irm.v1alpha2.Incident.Stage"
    optional :start_time, :message, 7, "google.protobuf.Timestamp"
    optional :synopsis, :message, 8, "google.cloud.irm.v1alpha2.Synopsis"
  end
  add_enum "google.cloud.irm.v1alpha2.Incident.EscalationLevel" do
    value :ESCALATION_LEVEL_UNSPECIFIED, 0
    value :ESCALATION_LEVEL_ORGANIZATION, 1
  end
  add_enum "google.cloud.irm.v1alpha2.Incident.Severity" do
    value :SEVERITY_UNSPECIFIED, 0
    value :SEVERITY_HUGE, 1
    value :SEVERITY_MAJOR, 2
    value :SEVERITY_MEDIUM, 3
    value :SEVERITY_MINOR, 4
    value :SEVERITY_NEGLIGIBLE, 5
  end
  add_enum "google.cloud.irm.v1alpha2.Incident.Stage" do
    value :STAGE_UNSPECIFIED, 0
    value :STAGE_DETECTED, 4
    value :STAGE_TRIAGED, 1
    value :STAGE_MITIGATED, 2
    value :STAGE_RESOLVED, 3
    value :STAGE_DOCUMENTED, 5
  end
  add_message "google.cloud.irm.v1alpha2.IncidentRole" do
    optional :type, :enum, 1, "google.cloud.irm.v1alpha2.IncidentRole.Type"
    optional :title, :string, 2
    optional :description, :string, 3
  end
  add_enum "google.cloud.irm.v1alpha2.IncidentRole.Type" do
    value :TYPE_UNSPECIFIED, 0
    value :TYPE_INCIDENT_COMMANDER, 1
    value :TYPE_COMMUNICATIONS_LEAD, 2
    value :TYPE_OPERATIONS_LEAD, 3
    value :TYPE_EXTERNAL_CUSTOMER_COMMUNICATIONS_LEAD, 4
    value :TYPE_PRIMARY_ONCALL, 5
    value :TYPE_SECONDARY_ONCALL, 6
    value :TYPE_OTHER, 7
  end
  add_message "google.cloud.irm.v1alpha2.IncidentRoleAssignment" do
    optional :name, :string, 1
    optional :etag, :string, 2
    optional :role, :message, 3, "google.cloud.irm.v1alpha2.IncidentRole"
    optional :assignee, :message, 4, "google.cloud.irm.v1alpha2.User"
    optional :proposed_assignee, :message, 5, "google.cloud.irm.v1alpha2.User"
  end
  add_message "google.cloud.irm.v1alpha2.Artifact" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    optional :etag, :string, 3
    optional :url, :string, 4
    optional :type, :enum, 5, "google.cloud.irm.v1alpha2.Artifact.Type"
  end
  add_enum "google.cloud.irm.v1alpha2.Artifact.Type" do
    value :TYPE_UNSPECIFIED, 0
    value :TYPE_URL, 1
    value :TYPE_ISSUE, 2
    value :TYPE_SOURCE_CONTROL_CHANGE, 3
    value :TYPE_JIRA_ISSUE, 4
  end
  add_message "google.cloud.irm.v1alpha2.CommunicationChannel" do
    oneof :endpoint do
      optional :email, :message, 1, "google.cloud.irm.v1alpha2.CommunicationChannel.Email"
      optional :notification_channel, :message, 2, "google.cloud.irm.v1alpha2.CommunicationChannel.NotificationChannel"
    end
  end
  add_message "google.cloud.irm.v1alpha2.CommunicationChannel.Email" do
    optional :address, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.CommunicationChannel.NotificationChannel" do
    optional :name, :string, 1
  end
  add_message "google.cloud.irm.v1alpha2.Subscription" do
    optional :name, :string, 1
    optional :etag, :string, 2
    optional :subscription_channel, :message, 3, "google.cloud.irm.v1alpha2.CommunicationChannel"
    repeated :event_types, :enum, 4, "google.cloud.irm.v1alpha2.Subscription.EventType"
  end
  add_enum "google.cloud.irm.v1alpha2.Subscription.EventType" do
    value :EVENT_TYPE_UNSPECIFIED, 0
    value :EVENT_TYPE_TITLE_CHANGE, 1
    value :EVENT_TYPE_SYNOPSIS_CHANGE, 2
    value :EVENT_TYPE_STAGE_CHANGE, 3
    value :EVENT_TYPE_SEVERITY_CHANGE, 4
    value :EVENT_TYPE_ANNOTATION_ADD, 5
    value :EVENT_TYPE_ANNOTATION_CHANGE, 6
  end
end

module Google
  module Cloud
    module Irm
      module V1alpha2
        User = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.User").msgclass
        Signal = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Signal").msgclass
        Signal::State = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Signal.State").enummodule
        Annotation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Annotation").msgclass
        Tag = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Tag").msgclass
        Synopsis = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Synopsis").msgclass
        Incident = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Incident").msgclass
        Incident::EscalationLevel = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Incident.EscalationLevel").enummodule
        Incident::Severity = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Incident.Severity").enummodule
        Incident::Stage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Incident.Stage").enummodule
        IncidentRole = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.IncidentRole").msgclass
        IncidentRole::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.IncidentRole.Type").enummodule
        IncidentRoleAssignment = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.IncidentRoleAssignment").msgclass
        Artifact = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Artifact").msgclass
        Artifact::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Artifact.Type").enummodule
        CommunicationChannel = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CommunicationChannel").msgclass
        CommunicationChannel::Email = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CommunicationChannel.Email").msgclass
        CommunicationChannel::NotificationChannel = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.CommunicationChannel.NotificationChannel").msgclass
        Subscription = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Subscription").msgclass
        Subscription::EventType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.irm.v1alpha2.Subscription.EventType").enummodule
      end
    end
  end
end
