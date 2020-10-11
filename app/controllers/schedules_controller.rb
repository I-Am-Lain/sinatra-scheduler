class SchedulesController < ApplicationController

    get '/schedule' do
        @schedule = Schedule.all

        erb :schedule
    end


    post '/schedule/:id/delete' do |id|   ###unsure why I'm not able to do delete '' instead
        Schedule.find(id).delete
        redirect "/schedule"
    end

    post '/schedule/:id' do |id|
        @course = Course.find(id)
 

        @credits = 0
        Schedule.all.each do |s|
            @credits += s.course.credits
        end

        if @credits + @course.credits <= 15
            @schedule = Schedule.create
            @schedule.course_id = @course.id
            @schedule.save
            @course.save
        end

    

        redirect "/schedule"
    end

  end