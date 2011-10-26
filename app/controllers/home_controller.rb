class HomeController < ApplicationController

  ## i18n setup ##

  before_filter :set_locale

  # Set locale from params, or use default (en)
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # If a locale param is set, conserve it throughout requests
  def default_url_options(options={})
    { :locale => I18n.locale }
  end



  def base
  end

  def step1
  end

  def step2
    @amount = 2810.43
    @bignum= 1_200_000_000
    @day = `date '+%d'`.to_i.ordinalize
    @since_finals = Time.local(2011,10,23,22,45)
    @since_last_won = Time.local(1987,06,20,22,00)
    @since_talk = Time.now - 4.minutes
    @distance = 4536
  end

end
