select 
    st.state,
    sum(j.is_remote::int) as remote_jobs
from 
    job j
    join state st on j.state_id = st.id
group by 
    st.state  
order by
    remote_jobs asc;
	
select 
    st.state,
    count (j.id) as total_jobs
from 
    job j
    join state st on j.state_id = st.id
group by 
    st.state  
order by
    total_jobs desc;
	
select 
    s.status,
    count (j.id) as total_jobs
from 
    job j
    join status s on j.status_id = s.id
group by 
    s.status  
order by
    total_jobs desc;
	
select
    c.company,
    count (j.id) as num_jobs
FROM
    job j 
    join status s on j.status_id = s.id
    join company c on j.company_id = c.id
WHERE
    s.status = 'Full-time'
group by
    c.company
order by
    num_jobs desc;