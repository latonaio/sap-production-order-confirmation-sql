CREATE TABLE `sap_production_order_confirmation_batch_characteristic_data`
(
  `ConfirmationGroup`             varchar(10) NOT NULL,
  `ConfirmationCount`             varchar(8) NOT NULL,
  `MaterialDocument`              varchar(10) NOT NULL,
  `MaterialDocumentItem`          varchar(4) NOT NULL,
  `MaterialDocumentYear`          varchar(4) NOT NULL,
  `Batch`                         varchar(10) DEFAULT NULL,
  `CharcInternalID`               varchar(10) DEFAULT NULL,
  `Characteristic`                varchar(30) DEFAULT NULL,
  `CharcValue`                    varchar(70) DEFAULT NULL,
    PRIMARY KEY (`ConfirmationGroup`, `ConfirmationCount`, `MaterialDocument`, `MaterialDocumentItem`, `MaterialDocumentYear`),
    CONSTRAINT `SAPProductionOrderConfirmationBatchCharateristicData_fk` FOREIGN KEY (`ConfirmationGroup`, `ConfirmationCount`) REFERENCES`sap_production_order_confirmation_confirmation_data`(`ConfirmationGroup`, `ConfirmationCount`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
