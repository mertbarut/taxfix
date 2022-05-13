select distinct u.user_id, u.user_name from user u
left join booking b
  on u.user_id = b.user_id
where b.booking_id is null
;
