module PeopleHelper
  def jobs_for_select
    jobs = [ Person::ACTOR, Person::DIRECTOR ]
    #translations = jobs.map { |kind| I18n.translate "person.job.#{job}" }

    #options_for_select translations.zip(jobs)
    options_for_select jobs
  end
end
