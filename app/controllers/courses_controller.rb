class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query]
      PgSearch::Multisearch.rebuild(Course)
      PgSearch::Multisearch.rebuild(Chef)
      PgSearch::Multisearch.rebuild(User)
      @results = PgSearch.multisearch(params[:query])
      raise
    else
      @courses = policy_scope(Course).order(created_at: :desc)
    end
  end

  def show
    @course = Course.find(params[:id])
    authorize @course
  end

  def search(query)
    PgSearch::Multisearch.rebuild(Course)
    PgSearch::Multisearch.rebuild(Chef)
    PgSearch::Multisearch.rebuild(User)
    @results = PgSearch.multisearch(query)
    raise

    @results.each do |result|
    puts result.searchable
    end
  end
end
