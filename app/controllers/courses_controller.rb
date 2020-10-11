class CoursesController < ApplicationController

    get '/courses' do
      @courses = Course.all
      erb :list
    end

    post '/courses/:id' do |id|
      @course = Course.find(id)
      @course.update(params[:course])
      redirect "/courses/#{id}"
    end

    get '/courses/:id/edit' do |id|
      @course = Course.find(id)
      erb :edit
    end

    get '/courses/:id' do |id|
      @course = Course.find(id)
      erb :show
    end
  
  end