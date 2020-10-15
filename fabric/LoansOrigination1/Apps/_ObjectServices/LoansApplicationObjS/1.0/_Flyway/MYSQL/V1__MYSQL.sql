CREATE TABLE `ApplicationModel`(
	`CreatedBy` VARCHAR(32),
	`CreatedDateTime` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
	`email` VARCHAR(40),
	`firstName` VARCHAR(40),
	`id` BIGINT NOT NULL AUTO_INCREMENT,
	`lastName` VARCHAR(40),
	`LastUpdatedBy` VARCHAR(32),
	`LastUpdatedDateTime` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
	`score` BIGINT,
	`SoftDeleteFlag` BOOLEAN,
	`status` VARCHAR(100),
	PRIMARY KEY(`id`)
);
ALTER TABLE `ApplicationModel`
	ADD CONSTRAINT `1ac62d0f8f809b38fe5e0d41bb315a` UNIQUE KEY(`id`);