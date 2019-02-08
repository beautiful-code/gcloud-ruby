# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/v1/resources.proto


require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.kms.v1.KeyRing" do
    optional :name, :string, 1
    optional :create_time, :message, 2, "google.protobuf.Timestamp"
  end
  add_message "google.cloud.kms.v1.CryptoKey" do
    optional :name, :string, 1
    optional :primary, :message, 2, "google.cloud.kms.v1.CryptoKeyVersion"
    optional :purpose, :enum, 3, "google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose"
    optional :create_time, :message, 5, "google.protobuf.Timestamp"
    optional :next_rotation_time, :message, 7, "google.protobuf.Timestamp"
    optional :version_template, :message, 11, "google.cloud.kms.v1.CryptoKeyVersionTemplate"
    map :labels, :string, :string, 10
    oneof :rotation_schedule do
      optional :rotation_period, :message, 8, "google.protobuf.Duration"
    end
  end
  add_enum "google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose" do
    value :CRYPTO_KEY_PURPOSE_UNSPECIFIED, 0
    value :ENCRYPT_DECRYPT, 1
    value :ASYMMETRIC_SIGN, 5
    value :ASYMMETRIC_DECRYPT, 6
  end
  add_message "google.cloud.kms.v1.CryptoKeyVersionTemplate" do
    optional :protection_level, :enum, 1, "google.cloud.kms.v1.ProtectionLevel"
    optional :algorithm, :enum, 3, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm"
  end
  add_message "google.cloud.kms.v1.KeyOperationAttestation" do
    optional :format, :enum, 4, "google.cloud.kms.v1.KeyOperationAttestation.AttestationFormat"
    optional :content, :bytes, 5
  end
  add_enum "google.cloud.kms.v1.KeyOperationAttestation.AttestationFormat" do
    value :ATTESTATION_FORMAT_UNSPECIFIED, 0
    value :CAVIUM_V1_COMPRESSED, 3
  end
  add_message "google.cloud.kms.v1.CryptoKeyVersion" do
    optional :name, :string, 1
    optional :state, :enum, 3, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState"
    optional :protection_level, :enum, 7, "google.cloud.kms.v1.ProtectionLevel"
    optional :algorithm, :enum, 10, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm"
    optional :attestation, :message, 8, "google.cloud.kms.v1.KeyOperationAttestation"
    optional :create_time, :message, 4, "google.protobuf.Timestamp"
    optional :generate_time, :message, 11, "google.protobuf.Timestamp"
    optional :destroy_time, :message, 5, "google.protobuf.Timestamp"
    optional :destroy_event_time, :message, 6, "google.protobuf.Timestamp"
  end
  add_enum "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm" do
    value :CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED, 0
    value :GOOGLE_SYMMETRIC_ENCRYPTION, 1
    value :RSA_SIGN_PSS_2048_SHA256, 2
    value :RSA_SIGN_PSS_3072_SHA256, 3
    value :RSA_SIGN_PSS_4096_SHA256, 4
    value :RSA_SIGN_PKCS1_2048_SHA256, 5
    value :RSA_SIGN_PKCS1_3072_SHA256, 6
    value :RSA_SIGN_PKCS1_4096_SHA256, 7
    value :RSA_DECRYPT_OAEP_2048_SHA256, 8
    value :RSA_DECRYPT_OAEP_3072_SHA256, 9
    value :RSA_DECRYPT_OAEP_4096_SHA256, 10
    value :EC_SIGN_P256_SHA256, 12
    value :EC_SIGN_P384_SHA384, 13
  end
  add_enum "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState" do
    value :CRYPTO_KEY_VERSION_STATE_UNSPECIFIED, 0
    value :PENDING_GENERATION, 5
    value :ENABLED, 1
    value :DISABLED, 2
    value :DESTROYED, 3
    value :DESTROY_SCHEDULED, 4
  end
  add_enum "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView" do
    value :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED, 0
    value :FULL, 1
  end
  add_message "google.cloud.kms.v1.PublicKey" do
    optional :pem, :string, 1
    optional :algorithm, :enum, 2, "google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm"
  end
  add_enum "google.cloud.kms.v1.ProtectionLevel" do
    value :PROTECTION_LEVEL_UNSPECIFIED, 0
    value :SOFTWARE, 1
    value :HSM, 2
  end
end

module Google
  module Cloud
    module Kms
      module V1
        KeyRing = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.KeyRing").msgclass
        CryptoKey = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKey").msgclass
        CryptoKey::CryptoKeyPurpose = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKey.CryptoKeyPurpose").enummodule
        CryptoKeyVersionTemplate = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKeyVersionTemplate").msgclass
        KeyOperationAttestation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.KeyOperationAttestation").msgclass
        KeyOperationAttestation::AttestationFormat = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.KeyOperationAttestation.AttestationFormat").enummodule
        CryptoKeyVersion = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKeyVersion").msgclass
        CryptoKeyVersion::CryptoKeyVersionAlgorithm = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithm").enummodule
        CryptoKeyVersion::CryptoKeyVersionState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionState").enummodule
        CryptoKeyVersion::CryptoKeyVersionView = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView").enummodule
        PublicKey = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.PublicKey").msgclass
        ProtectionLevel = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ProtectionLevel").enummodule
      end
    end
  end
end
