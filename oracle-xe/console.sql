select e.employee_id, e.first_name || ' ' || e.last_name as name,
       --j.job_title,
       jh.job_id,
       jh.start_date,
       jh.end_date,
       round(months_between( jh.end_date,jh.start_date))  as work_duration
from employees e
         left join job_history jh on e.employee_id = jh.employee_id
--left join jobs j on jh.job_id = j.job_id
where jh.job_id is not null
order by e.employee_id;
