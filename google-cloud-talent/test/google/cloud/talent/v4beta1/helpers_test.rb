# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "minitest/autorun"
require "minitest/spec"

require "google/gax"

require "google/cloud/talent"
require "google/cloud/talent/v4beta1/helpers"

require "google/cloud/talent/v4beta1/company_service_client"
require "google/cloud/talent/v4beta1/job_service_client"
require "google/cloud/talent/v4beta1/profile_service_client"

class HelperMockTalentCredentials_v4beta1 < Google::Cloud::Talent::V4beta1::Credentials
  def initialize
  end

  def updater_proc
    proc do
      raise "The client was trying to make a grpc request. This should not " \
          "happen since the grpc layer is being mocked."
    end
  end
end

describe Google::Cloud::Talent::V4beta1::CompanyServiceClient do
  let(:mock_credentials) { HelperMockTalentCredentials_v4beta1.new }

  describe "the company_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::CompanyServiceClient.company_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        company = "company"
        client = Google::Cloud::Talent::CompanyService.new version: :v4beta1
        assert_equal(
          client.company_path(project, company),
          Google::Cloud::Talent::V4beta1::CompanyServiceClient.company_path(project, company)
        )
      end
    end
  end

  describe "the project_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::CompanyServiceClient.project_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        client = Google::Cloud::Talent::CompanyService.new version: :v4beta1
        assert_equal(
          client.project_path(project),
          Google::Cloud::Talent::V4beta1::CompanyServiceClient.project_path(project)
        )
      end
    end
  end
end

describe Google::Cloud::Talent::V4beta1::JobServiceClient do
  let(:mock_credentials) { HelperMockTalentCredentials_v4beta1.new }

  describe "the job_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::JobServiceClient.job_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        job = "job"
        client = Google::Cloud::Talent::JobService.new version: :v4beta1
        assert_equal(
          client.job_path(project, job),
          Google::Cloud::Talent::V4beta1::JobServiceClient.job_path(project, job)
        )
      end
    end
  end

  describe "the project_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::JobServiceClient.project_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        client = Google::Cloud::Talent::JobService.new version: :v4beta1
        assert_equal(
          client.project_path(project),
          Google::Cloud::Talent::V4beta1::JobServiceClient.project_path(project)
        )
      end
    end
  end
end

describe Google::Cloud::Talent::V4beta1::ProfileServiceClient do
  let(:mock_credentials) { HelperMockTalentCredentials_v4beta1.new }

  describe "the company_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::ProfileServiceClient.company_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        company = "company"
        client = Google::Cloud::Talent::ProfileService.new version: :v4beta1
        assert_equal(
          client.company_path(project, company),
          Google::Cloud::Talent::V4beta1::ProfileServiceClient.company_path(project, company)
        )
      end
    end
  end

  describe "the profile_path instance method" do
    it "correctly calls Google::Cloud::Talent::V4beta1::ProfileServiceClient.profile_path" do
      Google::Cloud::Talent::V4beta1::Credentials.stub(:default, mock_credentials) do
        project = "project"
        company = "company"
        profile = "profile"
        client = Google::Cloud::Talent::ProfileService.new version: :v4beta1
        assert_equal(
          client.profile_path(project, company, profile),
          Google::Cloud::Talent::V4beta1::ProfileServiceClient.profile_path(project, company, profile)
        )
      end
    end
  end
end
