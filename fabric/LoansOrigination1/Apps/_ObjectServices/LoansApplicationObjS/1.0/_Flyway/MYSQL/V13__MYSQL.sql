ALTER TABLE `ApplicationModel`
	DROP INDEX `9119321c4bc0b4332fcb6f05bc2020`,
	CHANGE `application_id` `record_id` BIGINT NOT NULL AUTO_INCREMENT,
	ADD CONSTRAINT `89ec5b4f6c5cb35b1a7ca434c5b0be` UNIQUE KEY(`record_id`),
	DROP PRIMARY KEY,
	ADD PRIMARY KEY(`record_id`);
