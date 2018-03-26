ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'https://pretty-house.herokuapp.com/',
    user_name:            'michael.matrosov@gmail.com',
    password:             'mirk24081993',
    authentication:       'plain',
    enable_starttls_auto: true
}