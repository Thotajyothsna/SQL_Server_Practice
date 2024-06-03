use SqlServerPractice;
go

-- Step 1: Declare variables to hold the data fetched by the cursor
DECLARE @emp_id INT;
DECLARE @project_id VARCHAR(5);
DECLARE @team_name VARCHAR(20);

-- Step 2: Declare the cursor
DECLARE team_leaders_cursor CURSOR FOR
SELECT emp_id, project_id, team_name
FROM team_leaders;

-- Step 3: Open the cursor
OPEN team_leaders_cursor;

-- Step 4: Fetch the first row
FETCH NEXT FROM team_leaders_cursor INTO @emp_id, @project_id, @team_name;

-- Step 5: Loop through the rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Process the data (for example, print it)
    PRINT 'Emp ID: ' + CAST(@emp_id AS VARCHAR) ;
	PRINT 'Project ID: ' + @project_id ;
	PRINT 'Team Name: ' + @team_name;
	PRINT'';

    -- Fetch the next row
    FETCH NEXT FROM team_leaders_cursor INTO @emp_id, @project_id, @team_name;
END

-- Step 6: Close the cursor
CLOSE team_leaders_cursor;

-- Step 7: Deallocate the cursor
DEALLOCATE team_leaders_cursor;
