

--month 6
CREATE TABLE featrue_label_6_one
AS
SELECT b.user_c_num
	, c.user_b
	, f.b_dis
	, j.b_num
	, i.c_num
	, g.dis
	, k.user_b_dis
	, l.user_c_dis
	, m.user_dis
	, n.user_get_num
	, a.*
FROM data_label_6 a
JOIN user_c_num_6 b
ON a.user_id = b.user_id
	AND a.coupon_id = b.coupon_id
JOIN user_b_6 c
ON a.user_id = c.user_id
	AND a.merchant_id = c.merchant_id
JOIN b_dis_6 f
ON a.merchant_id = f.merchant_id
	AND a.discount_rate = f.discount_rate
JOIN b_num_6 j
ON j.merchant_id = a.merchant_id
JOIN c_num_6 i
ON i.coupon_id = a.coupon_id
JOIN dis_6 g
ON g.discount_rate = a.discount_rate
JOIN user_b_dis_6 k
ON k.user_id = a.user_id
	AND k.merchant_id = a.merchant_id
	AND k.discount_rate = a.discount_rate
JOIN user_c_dis_6 l
ON l.user_id = a.user_id
	AND l.coupon_id = a.coupon_id
	AND l.discount_rate = a.discount_rate
JOIN user_dis_6 m
ON m.user_id = a.user_id
	AND m.discount_rate = a.discount_rate
JOIN user_get_num_6 n
ON n.user_id = a.user_id;


CREATE TABLE featrue_label_6
AS
SELECT 
	o.c_time
	, p.user_time
	, q.b_time
	, r.d
	, s.dis_d
	, t.c_d
	, u.b_d
	, v.user_d
	, w.user_c_d
	, x.user_dis_d
	, y.b_c_d
	, z.b_dis_d
	, h.c_dis_d
	, aa.*
FROM featrue_label_6_one aa
JOIN c_time_6 o
ON o.coupon_id = aa.coupon_id
	AND o.date_received = aa.date_received
JOIN user_time_6 p
ON p.user_id = aa.user_id
	AND p.date_received = aa.date_received
JOIN b_time_6 q
ON q.merchant_id = aa.merchant_id
	AND q.date_received = aa.date_received
JOIN d_6 r
ON r.distance = aa.distance
JOIN dis_d_6 s
ON s.discount_rate = aa.discount_rate
	AND s.distance = aa.distance
JOIN c_d_6 t
ON t.coupon_id = aa.coupon_id
	AND t.distance = aa.distance
JOIN b_d_6 u
ON u.merchant_id = aa.merchant_id
	AND u.distance = aa.distance
JOIN user_d_6 v
ON v.user_id = aa.user_id
	AND v.distance = aa.distance
JOIN user_c_d_6 w
ON w.user_id = aa.user_id
	AND w.coupon_id = aa.coupon_id
	AND w.distance = aa.distance
JOIN user_dis_d_6 x
ON x.user_id = aa.user_id
	AND x.discount_rate = aa.discount_rate
	AND x.distance = aa.distance
JOIN b_c_d_6 y
ON y.merchant_id = aa.merchant_id
	AND y.coupon_id = aa.coupon_id
	AND y.distance = aa.distance
JOIN b_dis_d_6 z
ON z.merchant_id = aa.merchant_id
	AND z.discount_rate = aa.discount_rate
	AND z.distance = aa.distance
JOIN c_dis_d_6 h
ON h.coupon_id = aa.coupon_id
	AND h.discount_rate = aa.discount_rate
	AND h.distance = aa.distance;
	

CREATE TABLE featrue_label_6_more
AS
SELECT
	ee.times 
	,bb.user_c_time
	, cc.user_b_time
	, dd.user_dis_time
	, aaa.*
FROM featrue_label_6 aaa
JOIN user_c_time_6 bb
ON bb.user_id = aaa.user_id
	AND bb.coupon_id = aaa.coupon_id
	AND bb.date_received = aaa.date_received
JOIN user_b_time_6 cc
ON cc.user_id = aaa.user_id
	AND cc.merchant_id = aaa.merchant_id
	AND cc.date_received = aaa.date_received
JOIN user_dis_time_6 dd
ON dd.user_id = aaa.user_id
	AND dd.discount_rate = aaa.discount_rate
	AND dd.date_received = aaa.date_received
JOIN time_6 ee
ON ee.date_received = aaa.date_received



