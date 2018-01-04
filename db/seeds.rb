# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

users = User.create([
                        { first_name: 'Pascal', last_name: 'bestel', email: 'pascal@unionswiss.com', password: '1234' },
                    ])

countries = Country.create([
                               { iso_code: 'ZA', name: 'South Africa' },
                               { iso_code: 'US', name: 'United States' },
                               { iso_code: 'CN', name: 'China' },
                               { iso_code: 'IT', name: 'Italy'}
                           ])

metadata_types = MetadatumType.create([
                                         { name: 'E-mail', description: 'E-mail Address', active: true },
                                         { name: 'Phone number', description: 'Phone Number', active: true },
                                         { name: 'Website', description: 'website', active: true },
                                         { name: 'Address', description: 'Address', active: true },
                                         { name: 'Date of Birth', description: 'Date of Birth', active: true },
                                         { name: 'Identification Number', description: 'Identification Number', active: true },
                                         { name: 'Country registration number', description: 'Country registration number', active: true }

                                     ])
dossier_statuses = DossierStatus.create([
                                            { name: 'New' },
                                            { name: 'Watched' },
                                            { name: 'Investigation' },
                                            { name: 'Litigation' },
                                            { name: 'Negotiation' },
                                            { name: 'Closed' },
                                            { name: 'Reopened' }
                                        ])

dossier_action_Types = DossierActionType.create([
                                            { name: 'C&D' },
                                            { name: 'Civil' },
                                            { name: 'Criminal' },
                                            { name: 'Civil & Criminal' },
                                            { name: 'Pre-Action' }
                                        ])
entity_types = EntityType.create(
    [{ name: 'Natural Person'}, { name: 'Company'}, {name:'Organisation'},{name:'Unknown'} ]
)

entity_roles = EntityRole.create(
    [{ name: 'Infringer'}, { name: 'Consignor'}, {name:'Consignee'},{name: 'Connected Party'} ]
)



entities = Entity.create([
 { name: 'International Trade Specialists CC', type: entity_types.find_by_name('Company'), },
 { name: 'Royal Brighton Trading', type: entity_types.find_by_name('Company')},
 { name: 'Heneways Freight Services', type: entity_types.find_by_name('Company')},
 { name: 'Londersloot', type: entity_types.find_by_name('Company')},
 { name: 'GeoJen', type: entity_types.find_by_name('Company')},
 { name: 'Gal (Manor)', type: entity_types.find_by_name('Unknown')},
 { name: 'Simon Mark Charlesworth', type: entity_types.find_by_name('Natural Person')},

])