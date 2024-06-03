ALTER TRIGGER ServerDDLEventTrigger
ON ALL SERVER
FOR DDL_DATABASE_LEVEL_EVENTS
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert event data into the logging table
    INSERT INTO SqlServerPractice.dbo.DDLEventLog (
        EventTime,
        EventType,
        DatabaseName,
        SchemaName,
        ObjectName,
        LoginName,
        EventData
    )
    VALUES (
        GETDATE(),
        EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'NVARCHAR(100)'),
        EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]', 'NVARCHAR(255)'),
        EVENTDATA().value('(/EVENT_INSTANCE/SchemaName)[1]', 'NVARCHAR(255)'),
        EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'NVARCHAR(255)'),
        EVENTDATA().value('(/EVENT_INSTANCE/LoginName)[1]', 'NVARCHAR(255)'),
        EVENTDATA()
    );
END;

