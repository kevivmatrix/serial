# companies
Company.destroy_all;
c1 = Company.create name: "CodeBrahma", founded: (Date.today - 1.year)

# office
Office.destroy_all;
o1 = Office.create location: "Bangalore", company_id: c1.id
o2 = Office.create location: "Chennai", company_id: c1.id

# employees
Employee.destroy_all;
Employee.create name: "A", designation: "web developer", month_salary: 40000, company_id: c1.id, office_id: o1.id
Employee.create name: "B", designation: "manager", month_salary: 60000, company_id: c1.id, office_id: o1.id
Employee.create name: "C", designation: "secretary", month_salary: 20000, company_id: c1.id, office_id: o2.id
Employee.create name: "D", designation: "receptionist", month_salary: 40000, company_id: c1.id, office_id: o2.id
Employee.create name: "E", designation: "founder", month_salary: 100000, company_id: c1.id, office_id: o2.id
