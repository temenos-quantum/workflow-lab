ALTER TABLE `ApplicationModel`
	DROP INDEX `7650b56385b02b2c024d3b5d74f535`,
	CHANGE `uuid` `application_id` BIGINT NOT NULL AUTO_INCREMENT,
	ADD CONSTRAINT `9119321c4bc0b4332fcb6f05bc2020` UNIQUE KEY(`application_id`),
	DROP PRIMARY KEY,
	ADD PRIMARY KEY(`application_id`);
