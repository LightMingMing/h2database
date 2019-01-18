-- Copyright 2004-2019 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (http://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

CREATE TABLE TEST(T INT);
> ok

SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'T';
>> INT

-- SET DEFAULT
ALTER TABLE TEST ALTER COLUMN T SET DEFAULT 1;
> ok

SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'T';
>> INT DEFAULT 1

-- DROP DEFAULT
ALTER TABLE TEST ALTER COLUMN T DROP DEFAULT;
> ok

SELECT COLUMN_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'T';
>> INT

DROP TABLE TEST;
> ok
