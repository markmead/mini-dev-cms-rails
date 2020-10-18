Page.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('pages')

Page.create! title: 'Base', template: 'base', content: { body: 'This is using the base template' }
Page.create! title: 'Padded', template: 'padded', content: { body: 'This is using the template' }
Page.create! title: 'About', template: 'padded', content: { body: 'Hey my name is Mark', twitter: 'https://twitter.com/itsmarkmead' }