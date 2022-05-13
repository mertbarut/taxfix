select u.user_id, u.user_name, count(b.booking_id) as n from user u
left join booking b
  on u.user_id = b.user_id
    group by u.user_id, u.user_name
    having n < 3
;