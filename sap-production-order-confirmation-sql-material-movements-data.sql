CREATE TABLE `sap_production_order_confirmation_material_movements_data`
(
  `ConfirmationGroup`             varchar(10) NOT NULL,
  `ConfirmationCount`             varchar(8) NOT NULL,
  `MaterialDocument`              varchar(10) NOT NULL,
  `MaterialDocumentItem`          varchar(4) NOT NULL,
  `MaterialDocumentYear`          varchar(4) NOT NULL,
  `OrderType`                     varchar(4) DEFAULT NULL,
  `OrderID`                       varchar(12) DEFAULT NULL,
  `OrderItem`                     varchar(4) DEFAULT NULL,
  `ManufacturingOrderCategory`    varchar(2) DEFAULT NULL,
  `Material`                      varchar(40) DEFAULT NULL,
  `Plant`                         varchar(4) DEFAULT NULL,
  `Reservation`                   varchar(10) DEFAULT NULL,
  `ReservationItem`               varchar(4) DEFAULT NULL,
  `StorageLocation`               varchar(4) DEFAULT NULL,
  `ProductionSupplyArea`          varchar(10) DEFAULT NULL,
  `Batch`                         varchar(10) DEFAULT NULL,
  `InventoryValuationType`        varchar(10) DEFAULT NULL,
  `GoodsMovementType`             varchar(3) DEFAULT NULL,
  `GoodsMovementRefDocType`       varchar(1) DEFAULT NULL,
  `InventoryUsabilityCode`        varchar(1) DEFAULT NULL,
  `InventorySpecialStockType`     varchar(1) DEFAULT NULL,
  `SalesOrder`                    varchar(10) DEFAULT NULL,
  `SalesOrderItem`                varchar(6) DEFAULT NULL,
  `WBSElementExternalID`          varchar(24) DEFAULT NULL,
  `Supplier`                      varchar(10) DEFAULT NULL,
  `Customer`                      varchar(10) DEFAULT NULL,
  `ReservationIsFinallyIssued`    tinyint(1) DEFAULT NULL,
  `IsCompletelyDelivered`         tinyint(1) DEFAULT NULL,
  `ShelfLifeExpirationDate`       varchar(80) DEFAULT NULL,
  `ManufactureDate`               varchar(80) DEFAULT NULL,
  `StorageType`                   varchar(3) DEFAULT NULL,
  `StorageBin`                    varchar(10) DEFAULT NULL,
  `MaterialDocumentItemText`      varchar(50) DEFAULT NULL,
  `EntryUnit`                     varchar(3) DEFAULT NULL,
  `QuantityInEntryUnit`           varchar(15) DEFAULT NULL,
    PRIMARY KEY (`ConfirmationGroup`, `ConfirmationCount`, `MaterialDocument`, `MaterialDocumentItem`, `MaterialDocumentYear`),
    CONSTRAINT `SAPProductionOrderConfirmationMaterialMovementsData_fk` FOREIGN KEY (`ConfirmationGroup`, `ConfirmationCount`) REFERENCES`sap_production_order_confirmation_confirmation_data`(`ConfirmationGroup`, `ConfirmationCount`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
