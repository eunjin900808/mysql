select
	std_no as'학번',
	std_name as '이름',
	if(std_gender='M','남','여')as '성별1',
    case
		when std_gender = 'M' then'남'
        when std_gender = 'F' then'여'
        else'모름'
	end as '성별2'
from student_info;