drop table o2o_result ;
select * from o2o_result ;

select count(*) from  odps_tc_257100_f673506e024.train_offline_stage2 where coupon_id<>'null' group by user_id,coupon_id;

select * from featrue_7



alter table o2o_result rename to o2o_result_next;

alter table o2o_result_2 rename to o2o_result;

--ȥ���ظ������Ҳ���Ϊ
--������Ŀ��500 ѧϰ�ʣ�0.05 ����������1 ����������1 ���Ҷ������200 �������ݱ�����0 �������ȣ�6 Ҷ�ڵ�������������500 ��������0 �������ࣺ500
--0.70015

--���ظ��������޵���
--���£�0.65615
--0.70509088 

--���ظ��������޵���,����1�·�ͳ��
--���£�0.6563981027965156

--ȥ���ظ��������޵��Σ�����1�·�ͳ��
--���£�0.6565580556439823
--0.70580071

--����ʱ�䣬�����ֶ�����
--���£�0.7194215800001517
--���ϣ�0.7154

--��ʱ�䣬�������ֶκ�ʱ�������
--���£�0.7206294348650938
--0.71857

--�����������ʱ�䣬�ҵ����������ֶκ�ʱ�������,ȥ�� b_c_d�� b_dis_d�� c_dis_d
--���£� 0.7337647718668434
--0.73355

--�����������ʱ�䣬�ҵ����������ֶκ�ʱ�������,ȥ�� b_c_d�� b_dis_d�� c_dis_d��ǰ������ͳ����Ϣ
--���£� 0.736019020365392
--0.73660

--�����������ʱ�䣬�ҵ����������ֶκ�ʱ�������,ȥ�� b_c_d�� b_dis_d�� c_dis_d��ǰ������ͳ����Ϣ��ֻ��user��b��c����Ϣ��
--���£�0.7360594625579183
--

--0.7572562976925336
--0.7585231417699347 null������Ϊ11

-----0.7566928906436764 discount_rateת����ֵ
-----0.7579742948865807
----0.758991846552562

------0.761098093418025

select count(*) from data_label_123456 a join data7 b on a.coupon_id =b.coupon_id 


--estimate:  feature_label_2345   --feature_label_6


select count(label) from featrue_label where label=1;
select count(label) from featrue_label where label=0;
--��������	5721980 ��������485378 ������
select count(label) from featrue_label_1  where label=1;
select count(label) from featrue_label_1 where label=0;
--��������	3309489 ��������87844 ������


select user_id,date_received,count(label)  from data_label_1 where label = 1 group by date_received,user_id;
select user_id,date_received,count(label)  from data_label_2 where label = 1 group by date_received,user_id;
select user_id,date_received,count(label)  from data_label_3 where label = 1 group by date_received,user_id;
select user_id,date_received,count(label)  from data_label_4 where label = 1 group by date_received,user_id;
select user_id,date_received,count(label)  from data_label_5 where label = 1 group by date_received,user_id;
select user_id,date_received,count(label)  from data_label_6 where label = 1 group by date_received,user_id;

--�������ĸ������ߴ�С��label��û�������
SELECT SUM(IF(label = 1, 1, 0)) AS num_1
	, SUM(IF(label = 1, 0, 1)) AS num_0
FROM (
	SELECT user_b_u_c_rate
		, label
	FROM featrue_label_statistic
	ORDER BY 
	user_b_u_c_rate
	LIMIT 1000000
) t;


select * from pai_temp_17333_330588_1 order by feature_importance limit 89;



select * from data_label_2 order by user_id limit 10000
select * from data_label_5 order by user_id limit 10000
select * from featrue_label_5_flag_plus2 order by user_id limit 10000
select * from prj_tc_53354_8884afb138a2.feats_3_5_old_v12