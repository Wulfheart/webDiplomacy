ALTER TABLE `wD_Misc` CHANGE `value` `value` BIGINT(10) UNSIGNED NOT NULL; 
UPDATE `wD_Misc` SET `value` = '169' WHERE `name` = 'Version';

ALTER TABLE `wD_Users` ADD COLUMN `groupTag` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL; 
ALTER TABLE `wD_Members` ADD COLUMN `groupTag` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL; 
ALTER TABLE `wD_Backup_Members` ADD COLUMN `groupTag` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ;

ALTER TABLE `wD_AccessLog` ADD COLUMN `browserFingerprint` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL; 
ALTER TABLE `wD_Sessions` ADD COLUMN `browserFingerprint` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL; 