--Creating trigger to record actions performed on 'employee_details' table into 'TGR_INS_DEL' table
ALTER TRIGGER MyDML_Trigger_ins_del
on employee_details
after insert,delete
as
begin
insert into TGR_INS_DEL(EMP_ID,name,email,gender,INS_OR_DEL_TIME,action)
select EMP_ID,name,email,gender,getdate(),'Insertion' from inserted i
union all 
select EMP_ID,name,email,gender,getdate(),'deletion' from deleted i;
end