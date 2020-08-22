select * from role;
select * from user_new;
1)
select * from role inner join user_new
On role.id=user_new.id;

2)
SELECT * FROM role right join user_new
On role.id=user_new.id;

3)
SELECT user_new.name from user_new Inner JOIN role 
On user_new.role_id=role.id;

4)
Select user_new.phonenuber,user_new.emailid from user_new Inner Join profile
On user_new.profile_id=profile_id;
select * from experience;
UPDATE user_new SET name='ProGrad' WHERE id=1;
select * FROM user_new;
UPDATE experience SET currentvalue=1 WHERE id=2;
select user_new.phonenumber,user_new.emailid,profile.batch,department.name,profile.designation,
experience.company_name FROM user_new
INNER JOIN profile ON user_new.profile_id=profile.id
INNER JOIN degree ON profile.degree_id=degree.department_id
INNER JOIN department ON degree.department_id=department.id
INNER JOIN experience ON profile.id=experience.profile_id
WHERE user_new.name LIKE '%ProGrad%' AND experience.currentvalue=1;

select * FROM skill3;
select * FROM profile;
select * FROM role;
UPDATE role SET name='Alumini' WHERE id=1;
select * FROM user_new;
5)
SELECT user_new.id,skill3.name FROM user_new
LEFT JOIN role ON user_new.role_id=role.id
LEFT JOIN profile ON user_new.profile_id=profile.id
LEFT JOIN profile_skills ON profile.id=profile_skills.profile_id
LEFT JOIN skill3 ON profile_skills.skill_id=skill3.id
WHERE role.name LIKE '%Alumini%'
ORDER BY user_new.name,skill3.name;

6,7)
select * from experience;
SELECT * FROM role;
select * from profile;
SELECT user_new.name, experience.company_name FROM user_new
LEFT JOIN role ON user_new.role_id=role.id
LEFT JOIN profile ON user_new.profile_id=profile.id
LEFT JOIN experience ON experience.id=experience.id
WHERE role.name LIKE '%Alumini%'
ORDER BY user_new.name,experience.company_name;

8)
SELECT user_new.name, experience.company_name FROM user_new
LEFT JOIN role ON user_new.role_id=role.id
LEFT JOIN profile ON user_new.profile_id=profile.id
LEFT JOIN experience ON experience.id=experience.id
WHERE role.name LIKE '%Alumini%' AND experience.currentvalue=1
ORDER BY user_new.name;

9)
SELECT user_new.name, experience.company_name FROM user_new
LEFT JOIN role ON user_new.role_id=role.id
LEFT JOIN profile ON user_new.profile_id=profile.id
LEFT JOIN experience ON experience.id=experience.id
WHERE role.name LIKE '%Alumini%' AND experience.currentvalue=1 AND profile.batch='2008'
ORDER BY user_new.name;

10)
SELECT user_new.name,user_new.emailid,user_new.phonenumber,profile.address 
FROM user_new
Left join role ON user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
where  role.name Like '%Alumni' And user_new.profile_id!= null
ORDER BY user_new.name;

11)
SELECT user_new.name,user_new.emailid,user_new.phonenumber,profile.address 
FROM user_new
Left join role ON user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
where  role.name Like '%Alumni' and profile.batch='2008'
ORDER BY user_new.name;

12)
select * from degree;
SELECT user_new.name,user_new.emailid,user_new.phonenumber,profile.address 
FROM user_new
Left join role ON user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id
where  role.name Like '%Alumni' and degree.name='BSC_CT'
ORDER BY user_new.name;

13)
SELECT user_new.name,user_new.emailid,user_new.phonenumber,profile.address 
FROM user_new
Left join role ON user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id
left join department on department_id=degree.department_id
where  role.name Like '%Alumni' and department.name='CSE'
ORDER BY user_new.name;

14,15)
select * from higher_degree;
Select user_new.name,higher_degree.university_name From user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
left join higher_degree On higher_degree.id=higher_degree.id
left join department on department.id=department.id
where  role.name Like '%Alumni' and higher_degree.degree_name!= null
order by user_new.name,higher_degree.university_name;

16)
SELECT user_new.name,user_new.emailid,user_new.phonenumber,profile.address
From user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id
left join department on department.id=department.id
left join higher_degree On higher_degree.id=higher_degree.id
where  role.name Like '%Alumni' and higher_degree.university_name='Texas Univercity' 
order by user_new.name;

17)
Select user_new.name,profile.batch from user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join profile ON profile.gender=profile.gender
Where role.name Like '%Alumni%' and profile.gender='Female'
Order by user_new.name;

18)
Select user_new.name,profile.batch,degree.name from user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id 
Left join profile ON profile.gender=profile.gender
Where role.name Like '%Alumni%' and profile.gender='Female'
Order by user_new.name;

19)
Select user_new.name,profile.batch,degree.name,department.name
From user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id 
left join department on department.id=department.id
Left join profile ON profile.gender=profile.gender
Where role.name Like '%Alumni%' and profile.gender='Female'
Order by user_new.name;

19)
Select degree.name,department.name From degree
left join department On department.id=department.id
order by degree.name;

20)
Select user_new.name,profile.designation From user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Where role.name Like '%Alumni%' and profile.gender='male'
order by user_new.name;

21)
Select user_new.name,profile.designation From user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join experience On experience.id=experience.id
where role.name Like '%Alumni%' and experience.currentValue=1 and experience.company_name='TCS'
Order by user_new.name;

22)
select * FROM querytable;
select user_new.name,querytable.content from user_new
Left join querytable On querytable.id= querytable.id
Order by user_new.name;

23)
select user_new.name,querytable.content from user_new
Left join querytable On querytable.id= querytable.id
where parent_id!=null
Order by user_new.name;

24)
Select user_new.name,post.content from user_new
Left join post On post.id=post.id
Order by user_new.name;

25)
select * from post_type;
Select user_new.name,post.content from user_new
Left join post On post.id=post.id
Left join post_type On post_type.id=post_type.id
Where post_type.name Like '%Technology%'
Order by user_new.name;

26)
Select user_new.name,post.content from user_new
Left join post On post.id=post.id
Where post.dateof='2013'
Order by user_new.name;

27)
Select user_new.name,department.name from user_new
Left join role on user_new.role_id=role.id
Left join profile On user_new.profile_id=profile.id
Left join degree On degree_id=degree.id
left join department on department.id=department.id
LEFT JOIN profile_skills ON profile.id=profile_skills.profile_id
Left join skill3 On skill3.id=skill3.id
where skill3.name='Programming'
order by user_new.name;

28)
select user_new.name,event1.name from user_new
Left join event1 on event1.id=event1.id
Left join role on user_new.role_id=role.id
where role.name like '%alumni%'
Order by user_new.name,event1.dateof;

29)
select user_new.name,event1.name from user_new
Left join event1 on event1.id=event1.id
Left join role on user_new.role_id=role.id
where role.name like '%alumni%'
Order by user_new.name,event1.dateof;