ALTER TABLE `ApplicationModel`
	DROP INDEX `1ac62d0f8f809b38fe5e0d41bb315a`,
	MODIFY `id` VARCHAR(40) NOT NULL,
	ADD CONSTRAINT `1ac62d0f8f809b38fe5e0d41bb315a` UNIQUE KEY(`id`);
