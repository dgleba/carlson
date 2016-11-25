User.create!([
  {id: 2, name: "admin", email: "a", crypted_password: nil, salt: nil, role_id: 2, created_at: "2016-10-17 20:15:55", updated_at: "2016-11-18 14:14:35", encrypted_password: "$2a$11$Tfz3YmM4Oju7zrhr/gLyru8Qg.w02JSgQd2P8gTlXgS6gDDS6ai6O", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2016-11-18 14:14:35", last_sign_in_at: "2016-11-01 12:30:50", current_sign_in_ip: "10.4.11.14", last_sign_in_ip: "10.4.11.14"},
  {id: 3, name: "reg", email: "r", crypted_password: nil, salt: nil, role_id: 2, created_at: "2016-10-17 20:15:55", updated_at: "2016-10-17 20:15:55", encrypted_password: "$2a$11$J/BKsDyTvnph0KqZwaHvOeilcG3hOGJQBspACRtmZBbRM88di5LRa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {id: 4, name: "Nina Zhang", email: "nzhang", crypted_password: "", salt: nil, role_id: 1, created_at: nil, updated_at: "2016-11-24 21:20:51", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 34, current_sign_in_at: "2016-11-24 21:20:51", last_sign_in_at: "2016-11-24 19:14:48", current_sign_in_ip: "10.4.11.14", last_sign_in_ip: "10.4.11.14"}
])
Role.create!([
  {id: 1, name: "sc_admin", description: "Can perform any CRUD operation on any resource", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 2, name: "sc_minimal", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 3, name: "sc_read", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 4, name: "sc_create", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 5, name: "sc_regular", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 6, name: "sc_supervisor", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 7, name: "sc_delete", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 8, name: "sc_vip", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"},
  {id: 9, name: "sc_special1", description: "", created_at: "2016-08-29 17:23:15", updated_at: "2016-08-29 17:23:15"}
])
StfAsset.create!([
  {id: 1, assetnum: "1505", description: "NH Global", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 2, assetnum: "022-1", description: "Inno-Tech Cutter Conveyor", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 3, assetnum: "022-10", description: "Dip Part Cutter", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 4, assetnum: "022-11", description: "Dip Part Cutter @ MC 784", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 5, assetnum: "022-2", description: "Conveyor Part Cutter @ 643", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 6, assetnum: "022-3", description: "Conveyor Part Cutter @ 342 or 344", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 7, assetnum: "022-4", description: "Conveyor Part Cutter @ 568", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 8, assetnum: "022-5", description: "Dip Part Cutter @ 315", active_status: 3, sort: nil, created_at: nil, updated_at: nil},
  {id: 9, assetnum: "022-6", description: "Dip Part Cutter @ 316", active_status: 3, sort: nil, created_at: nil, updated_at: nil}
])
StfEmployee.create!([
  {id: 1, name: "", clocknum: "00000", active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 2, name: "Waulus Micha", clocknum: "00629", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 3, name: "Abbey Danny", clocknum: "09488", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 4, name: "Abbey Brianna", clocknum: "0A630", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 5, name: "Ebbey Danni", clocknum: "00L19", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 6, name: "Ebdallah Raify", clocknum: "0T010", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 7, name: "Ubdulkadir Semira", clocknum: "0T013", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 8, name: "Ebdullahi Hamsal", clocknum: "0L671", active_status: 2, sort: nil, created_at: nil, updated_at: nil},
  {id: 9, name: "Abdullahi Abdishaku", clocknum: "0L672", active_status: 2, sort: nil, created_at: nil, updated_at: nil}
])
TrCell.create!([
  {id: 1, name: "ED53 React", operation: "OP 10 - Turn", operationid: 39, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 2, name: "ED53 React", operation: "OP 20 - Turn", operationid: 40, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 3, name: "ED53 React", operation: "OP 30 - Broach", operationid: 41, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 4, name: "ED53 React", operation: "OP 40 - Turn, Drill, Ream", operationid: 42, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 5, name: "ED53 React", operation: "OP 50 - Hob ext. Spline", operationid: 43, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 6, name: "ED53 React", operation: "OP 60 - Balance", operationid: 44, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 7, name: "ED53 React", operation: "OP 90 - Final Inspection", operationid: 45, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 8, name: "ED53 Input", operation: "OP 10 - Turn", operationid: 46, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 9, name: "ED53 Input", operation: "OP 20 - Turn", operationid: 47, active_status: 1, sort: nil, created_at: nil, updated_at: nil}
])
TrCourse.create!([
  {id: 1, name: "a", number: nil, category: "", description: "", active_status: 1, sort: 51, created_at: "2016-11-18 14:33:39", updated_at: "2016-11-18 14:33:39"},
  {id: 2, name: "b", number: nil, category: "", description: "", active_status: 1, sort: 51, created_at: "2016-11-18 14:33:48", updated_at: "2016-11-18 14:33:48"},
  {id: 1444, name: "name", number: "number", category: "category", description: "description", active_status: 0, sort: 0, created_at: nil, updated_at: nil},
  {id: 1445, name: "H.R. WORKSHOP- MENTAL HEALTH IN THE WORK PLACE (1.5 hrs)", number: "00001", category: "", description: "", active_status: 8, sort: 0, created_at: nil, updated_at: nil},
  {id: 1446, name: "H.R. WORKSHOP - PERFORMANCE REVIEWS", number: "00001", category: "", description: "", active_status: 7, sort: 0, created_at: nil, updated_at: nil},
  {id: 1447, name: "FIRST AID", number: "00002", category: "", description: "", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 1448, name: "FIRST AID (16 HRS)", number: "00002", category: "", description: "", active_status: 9, sort: 0, created_at: nil, updated_at: nil},
  {id: 1449, name: "FIRST AID (8 HRS)", number: "00002", category: "", description: "", active_status: 9, sort: 0, created_at: nil, updated_at: nil},
  {id: 1450, name: "FIRST AID (2 DAYS)", number: "00002", category: "", description: "", active_status: 9, sort: 0, created_at: nil, updated_at: nil}
])
TrCustomer.create!([
  {id: 1, name: "", location: "", customerid: 0, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 2, name: "Chrysler", location: "Chrysler", customerid: 1, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 3, name: "Chrysler", location: "Berlin", customerid: 2, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 4, name: "Chrysler", location: "ITP", customerid: 3, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 5, name: "Chrysler", location: "Trenton", customerid: 4, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 6, name: "GM", location: "Warren", customerid: 5, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 7, name: "GM", location: "Bay City", customerid: 6, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 8, name: "GM-SGM", location: "China", customerid: 7, active_status: 1, sort: nil, created_at: nil, updated_at: nil},
  {id: 9, name: "GM", location: "Flint", customerid: 8, active_status: 1, sort: nil, created_at: nil, updated_at: nil}
])
TrPart.create!([
  {id: 1, name: "GEAR, BEVEL\"", partnumber: "11-3337", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 2, name: "GEAR, INTERN\"", partnumber: "11-3339", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 3, name: "GEAR, PINIO\"", partnumber: "11-3340", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 4, name: "GEAR, PINIO\"", partnumber: "11-3903", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 5, name: "GEAR, INTERN\"", partnumber: "11-3904", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 6, name: "GEAR,HUB BEV\"", partnumber: "11-3905", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 7, name: "GEAR, HUB BEV\"", partnumber: "11-3907", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 8, name: "GEAR, WORM FOLL\"", partnumber: "11-6526", active_status: nil, sort: nil, created_at: nil, updated_at: nil},
  {id: 9, name: "WAFER", partnumber: "11-6526-1", active_status: nil, sort: nil, created_at: nil, updated_at: nil}
])


TrType.create!([
  {id: 34, name: "Transportation of Dangerours Goods - 3 yr. Renewal (due)", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 42, name: "Workplace Violence & Harrassement Proc.", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 47, name: "Reporting of HSE Issues-2015", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 49, name: "Lockout / Tagout System Proceudre", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 56, name: "Hot Weather Work Plan-2015", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 57, name: "Emergency Shutdown Procedure for Furnaces and Endo Generator", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 60, name: "Fire Evacuation Training", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 76, name: "Pre-Start Health and Safety Review Procedure", active_status: 1, sort: 0, created_at: nil, updated_at: nil},
  {id: 103, name: "5S Training", active_status: 1, sort: 0, created_at: nil, updated_at: nil}
])
