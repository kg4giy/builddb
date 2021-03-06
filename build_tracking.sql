-- MySQL Script generated by MySQL Workbench
-- Thu Aug  4 10:11:36 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema build_tracking
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `build_tracking` ;

-- -----------------------------------------------------
-- Schema build_tracking
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `build_tracking` DEFAULT CHARACTER SET utf8 ;
USE `build_tracking` ;

-- -----------------------------------------------------
-- Table `build_tracking`.`build_name`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `build_tracking`.`build_name` ;

CREATE TABLE IF NOT EXISTS `build_tracking`.`build_name` (
  `idbuild_name` INT NOT NULL,
  `descr` VARCHAR(60) NULL,
  PRIMARY KEY (`idbuild_name`),
  UNIQUE INDEX `idbuild_name_UNIQUE` (`idbuild_name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `build_tracking`.`system_name`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `build_tracking`.`system_name` ;

CREATE TABLE IF NOT EXISTS `build_tracking`.`system_name` (
  `idsystem` INT NOT NULL,
  `descr` VARCHAR(45) NULL,
  UNIQUE INDEX `idsystem_UNIQUE` (`idsystem` ASC),
  PRIMARY KEY (`idsystem`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `build_tracking`.`reason`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `build_tracking`.`reason` ;

CREATE TABLE IF NOT EXISTS `build_tracking`.`reason` (
  `idreason` INT NOT NULL,
  `descr` VARCHAR(45) NULL,
  PRIMARY KEY (`idreason`),
  UNIQUE INDEX `idreason_UNIQUE` (`idreason` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `build_tracking`.`build_tracking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `build_tracking`.`build_tracking` ;

CREATE TABLE IF NOT EXISTS `build_tracking`.`build_tracking` (
  `idbuild_tracking` INT NOT NULL,
  `system_name` INT NULL,
  `build_name` INT NULL,
  `build_number` INT NULL,
  `date` DATE NULL,
  `time` TIME(4) NULL,
  `reason` INT NULL,
  `details` VARCHAR(255) NULL,
  PRIMARY KEY (`idbuild_tracking`),
  UNIQUE INDEX `idbuild_tracking_UNIQUE` (`idbuild_tracking` ASC),
  INDEX `idbuild_name_idx` (`build_name` ASC),
  INDEX `idsystem_idx` (`system_name` ASC),
  INDEX `idreason_idx` (`reason` ASC),
  CONSTRAINT `idbuild_name`
    FOREIGN KEY (`build_name`)
    REFERENCES `build_tracking`.`build_name` (`idbuild_name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idsystem`
    FOREIGN KEY (`system_name`)
    REFERENCES `build_tracking`.`system_name` (`idsystem`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `idreason`
    FOREIGN KEY (`reason`)
    REFERENCES `build_tracking`.`reason` (`idreason`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `build_tracking`.`build_name`
-- -----------------------------------------------------
START TRANSACTION;
USE `build_tracking`;
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (1, 'base-svs-job-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (2, 'base-svs-vis-mock-job-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (3, 'blue-green-svs-preview-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (4, 'build-bastion-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (5, 'build-capacity-test-jmeter');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (6, 'build-capacity-test-rails-app');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (7, 'build-jmeter-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (8, 'build-svs-base-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (9, 'build-svs-dev-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (10, 'build-svs-preview-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (11, 'configure-capacity-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (12, 'create-bastion-host');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (13, 'create-svs-dev-environment-perm-elb');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (14, 'create-svs-preview-environment-perm-elb');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (15, 'deploy-app-acceptance-tested-trigger-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (16, 'deploy-app-deploy-asgs-trigger-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (17, 'deploy-app-deploy-elb-trigger-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (18, 'deploy-app-deploy-svs-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (19, 'deploy-app-deploy-svs-elb-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (20, 'deploy-app-deploy-svs-vis-mock-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (21, 'deploy-app-deploy-svs-vis-mock-elb-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (22, 'deploy-app-self-service-trigger-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (23, 'deploy-svs-dev-environment-code');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (24, 'enr-create-acceptance-postgres-db');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (25, 'enr-deploy-nonprod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (26, 'enr-deploy-nonprod-rds');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (27, 'enr-deploy-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (28, 'enr-deploy-unstable-rds');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (29, 'enr-poll-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (30, 'enr-run-acceptance-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (31, 'enr-run-deployment-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (32, 'enr-run-static-analysis');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (33, 'enr-run-unit-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (34, 'enr-test-dev');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (35, 'enr-test-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (36, 'enrperf-build-performance-test-jmeter-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (37, 'enrperf-build-performance-test-rails-app');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (38, 'enrperf-configure-performance-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (39, 'enrperf-poll-performance-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (40, 'enrperf-results-performance-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (41, 'enrperf-run-performance-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (42, 'enrperf-terminate-performance-test-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (43, 'ev-create-acceptance-postgres-db');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (44, 'ev-create-build-artifact');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (45, 'ev-create-container-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (46, 'ev-deploy-dev');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (47, 'ev-deploy-elb-dev');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (48, 'ev-deploy-elb-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (49, 'ev-deploy-rds-postgres-dev');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (50, 'ev-deploy-rds-postgres-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (51, 'ev-deploy-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (52, 'ev-docker-cleanup');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (53, 'ev-poll-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (54, 'ev-promote-image-tag');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (55, 'ev-run-acceptance-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (56, 'ev-run-infrastructure-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (57, 'ev-run-static-analysis');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (58, 'ev-run-unit-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (59, 'ev-test-dev');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (60, 'ev-test-unstable');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (61, 'jonny-test-delete-me');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (62, 'launch-bastion-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (63, 'launch-jmeter-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (64, 'launch-svs-base-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (65, 'master-seed');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (66, 'metrics-blue-green-to-prod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (67, 'metrics-build-docker-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (68, 'metrics-build-elb-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (69, 'metrics-build-rds-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (70, 'metrics-deploy-docker-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (71, 'metrics-deploy-docker-image-to-prod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (72, 'metrics-non-prod-blue-green');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (73, 'metrics-poll-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (74, 'metrics-populate-data');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (75, 'metrics-promote-elb');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (76, 'metrics-promote-rds');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (77, 'metrics-run-static-analysis');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (78, 'metrics-run-unit-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (79, 'metrics-test-deployment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (80, 'metrics-test-deployment-to-prod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (81, 'metrics-test-elb-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (82, 'metrics-test-rds-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (83, 'metrics-trigger-elb-deployment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (84, 'metrics-trigger-rds-deployment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (85, 'metrics-update-data');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (86, 'metrics-update-data-prod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (87, 'metrics-wait-for-deployment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (88, 'metrics-wait-for-deployment-to-prod');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (89, 'metrics-wait-for-elb-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (90, 'metrics-wait-for-rds-stack');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (91, 'poll-bastion-ami-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (92, 'poll-capacity-test-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (93, 'poll-java-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (94, 'poll-jmeter-ami-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (95, 'poll-nginx-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (96, 'poll-svs-base-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (97, 'promote-bastion-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (98, 'promote-java-image-tag');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (99, 'promote-jmeter-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (100, 'promote-nginx-image-tag');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (101, 'promote-svs-base-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (102, 'results-capacity-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (103, 'ruby-build-docker-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (104, 'ruby-poll-version-control');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (105, 'run-capacity-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (106, 'run-java-acceptance-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (107, 'run-nginx-acceptance-tests');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (108, 'run-static-analysis-bastion_ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (109, 'run-static-analysis-jmeter');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (110, 'run-svs-base-static-analysis');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (111, 'seed-base-ami-pipeline');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (112, 'seed-bastion-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (113, 'seed-capacity-test');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (114, 'seed-csm');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (115, 'seed-dev-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (116, 'seed-enr');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (117, 'seed-everify');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (118, 'seed-java-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (119, 'seed-jmeter-ami');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (120, 'seed-metrics');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (121, 'seed-nginx-image');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (122, 'seed-performance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (123, 'seed-preview-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (124, 'seed-ruby');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (125, 'seed-self-service');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (126, 'seed-svs');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (127, 'seed-svs-vis-mock');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (128, 'smoke-test-svs-preview-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (129, 'svs-blue-green-deploy-dev-environment-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (130, 'svs-create-acceptance-environment-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (131, 'svs-create-system-image-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (132, 'svs-poll-version-control-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (133, 'svs-promote-ami-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (134, 'svs-run-acceptance-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (135, 'svs-run-infrastructure-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (136, 'svs-run-integration-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (137, 'svs-run-smoke-test-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (138, 'svs-run-static-analysis-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (139, 'svs-run-unit-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (140, 'svs-terminate-acceptance-environment-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (141, 'svs-test-deployment-scripts-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (142, 'svs-vis-mock-blue-green-deploy-dev-environment-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (143, 'svs-vis-mock-create-acceptance-environment-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (144, 'svs-vis-mock-create-system-image-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (145, 'svs-vis-mock-poll-version-control-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (146, 'svs-vis-mock-promote-ami-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (147, 'svs-vis-mock-run-acceptance-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (148, 'svs-vis-mock-run-infrastructure-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (149, 'svs-vis-mock-run-smoke-test-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (150, 'svs-vis-mock-run-static-analysis-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (151, 'svs-vis-mock-run-unit-tests-dsl');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (152, 'terminate-bastion-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (153, 'terminate-capacity-test-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (154, 'terminate-jmeter-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (155, 'terminate-svs-base-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (156, 'test-bastion-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (157, 'test-deployed-svs-dev-environment');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (158, 'test-jmeter-ami-instance');
INSERT INTO `build_tracking`.`build_name` (`idbuild_name`, `descr`) VALUES (159, 'test-svs-base-instance');

COMMIT;


-- -----------------------------------------------------
-- Data for table `build_tracking`.`system_name`
-- -----------------------------------------------------
START TRANSACTION;
USE `build_tracking`;
INSERT INTO `build_tracking`.`system_name` (`idsystem`, `descr`) VALUES (DEFAULT, 'SVS');
INSERT INTO `build_tracking`.`system_name` (`idsystem`, `descr`) VALUES (DEFAULT, 'ENR');
INSERT INTO `build_tracking`.`system_name` (`idsystem`, `descr`) VALUES (DEFAULT, 'VDM');
INSERT INTO `build_tracking`.`system_name` (`idsystem`, `descr`) VALUES (DEFAULT, 'DevOps');
INSERT INTO `build_tracking`.`system_name` (`idsystem`, `descr`) VALUES (DEFAULT, 'SVS-Prod');

COMMIT;


-- -----------------------------------------------------
-- Data for table `build_tracking`.`reason`
-- -----------------------------------------------------
START TRANSACTION;
USE `build_tracking`;
INSERT INTO `build_tracking`.`reason` (`idreason`, `descr`) VALUES (1, 'Cascade');
INSERT INTO `build_tracking`.`reason` (`idreason`, `descr`) VALUES (2, 'Code');
INSERT INTO `build_tracking`.`reason` (`idreason`, `descr`) VALUES (3, 'Network');
INSERT INTO `build_tracking`.`reason` (`idreason`, `descr`) VALUES (4, 'Other');
INSERT INTO `build_tracking`.`reason` (`idreason`, `descr`) VALUES (5, 'Test');

COMMIT;

