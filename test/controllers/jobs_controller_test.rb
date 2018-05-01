require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { company_id: @job.company_id, description: @job.description, desired_skills: @job.desired_skills, eligibility: @job.eligibility, experience_type_id: @job.experience_type_id, job_type_id: @job.job_type_id, location_id: @job.location_id, name: @job.name, position_id: @job.position_id, salary: @job.salary } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { company_id: @job.company_id, description: @job.description, desired_skills: @job.desired_skills, eligibility: @job.eligibility, experience_type_id: @job.experience_type_id, job_type_id: @job.job_type_id, location_id: @job.location_id, name: @job.name, position_id: @job.position_id, salary: @job.salary } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
