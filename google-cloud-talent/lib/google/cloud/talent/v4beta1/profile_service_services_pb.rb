# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/talent/v4beta1/profile_service.proto for package 'google.cloud.talent.v4beta1'
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
require 'google/cloud/talent/v4beta1/profile_service_pb'

module Google
  module Cloud
    module Talent
      module V4beta1
        module ProfileService
          # A service that handles profile management, including profile CRUD,
          # enumeration and search.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.talent.v4beta1.ProfileService'

            # Lists profiles by filter. The order is unspecified.
            rpc :ListProfiles, ListProfilesRequest, ListProfilesResponse
            # Creates and returns a new profile.
            rpc :CreateProfile, CreateProfileRequest, Profile
            # Gets the specified profile.
            rpc :GetProfile, GetProfileRequest, Profile
            # Updates the specified profile and returns the updated result.
            rpc :UpdateProfile, UpdateProfileRequest, Profile
            # Deletes the specified profile.
            rpc :DeleteProfile, DeleteProfileRequest, Google::Protobuf::Empty
            # Searches for profiles within a company.
            #
            # For example, search by raw queries "software engineer in Mountain View" or
            # search by structured filters (location filter, education filter, etc.).
            #
            # See [SearchProfilesRequest][google.cloud.talent.v4beta1.SearchProfilesRequest] for more information.
            rpc :SearchProfiles, SearchProfilesRequest, SearchProfilesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
