class DashboardController < ApplicationController

    def home
        @companies = Company.all
        @jobs = Job.all
        @technologies = Technology.all
    end
end
