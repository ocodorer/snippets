ASSERT( NOT EXISTS
    ( SELECT * FROM employee
    WHERE email is NULL));