Role.delete_all
Audition.delete_all

hades = Role.create character_name: "Hades"

patrick_page = Audition.create actor: "Patrick Page", location: "New York", phone: 0000000000, hired: false, role_id: 1
kevin_morrow = Audition.create actor: "Kevin Morrow", location: "Boston", phone: 0000000001, hired: false, role_id: 1
lin_manuel = Audition.create actor: "Lin-Manuel Miranda", location: "Hell", phone: 0000000002, hired: false, role_id: 1

