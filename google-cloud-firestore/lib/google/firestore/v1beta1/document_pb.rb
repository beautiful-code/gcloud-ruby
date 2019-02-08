# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/v1beta1/document.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/latlng_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.firestore.v1beta1.Document" do
    optional :name, :string, 1
    map :fields, :string, :message, 2, "google.firestore.v1beta1.Value"
    optional :create_time, :message, 3, "google.protobuf.Timestamp"
    optional :update_time, :message, 4, "google.protobuf.Timestamp"
  end
  add_message "google.firestore.v1beta1.Value" do
    oneof :value_type do
      optional :null_value, :enum, 11, "google.protobuf.NullValue"
      optional :boolean_value, :bool, 1
      optional :integer_value, :int64, 2
      optional :double_value, :double, 3
      optional :timestamp_value, :message, 10, "google.protobuf.Timestamp"
      optional :string_value, :string, 17
      optional :bytes_value, :bytes, 18
      optional :reference_value, :string, 5
      optional :geo_point_value, :message, 8, "google.type.LatLng"
      optional :array_value, :message, 9, "google.firestore.v1beta1.ArrayValue"
      optional :map_value, :message, 6, "google.firestore.v1beta1.MapValue"
    end
  end
  add_message "google.firestore.v1beta1.ArrayValue" do
    repeated :values, :message, 1, "google.firestore.v1beta1.Value"
  end
  add_message "google.firestore.v1beta1.MapValue" do
    map :fields, :string, :message, 1, "google.firestore.v1beta1.Value"
  end
end

module Google
  module Firestore
    module V1beta1
      Document = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1beta1.Document").msgclass
      Value = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1beta1.Value").msgclass
      ArrayValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1beta1.ArrayValue").msgclass
      MapValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.v1beta1.MapValue").msgclass
    end
  end
end
