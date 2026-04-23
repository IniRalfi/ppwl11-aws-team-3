PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "_prisma_migrations" (
    "id"                    TEXT PRIMARY KEY NOT NULL,
    "checksum"              TEXT NOT NULL,
    "finished_at"           DATETIME,
    "migration_name"        TEXT NOT NULL,
    "logs"                  TEXT,
    "rolled_back_at"        DATETIME,
    "started_at"            DATETIME NOT NULL DEFAULT current_timestamp,
    "applied_steps_count"   INTEGER UNSIGNED NOT NULL DEFAULT 0
);
INSERT INTO _prisma_migrations VALUES('e41a54a9-33da-4a4b-8f1d-aace93b67df5','6869bc790ec9d11e34c63a9330519becda6d6c7e804bf06937c7daf6352336b0',1774328619707,'20260324043817_init',NULL,NULL,1774328619675,1);
CREATE TABLE IF NOT EXISTS "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT
);
INSERT INTO User VALUES(1,'leo@example.com','Leo Tobing');
INSERT INTO User VALUES(2,'john@example.com','John Doe');
INSERT INTO User VALUES(3,'jane@example.com','Jane Smith');
PRAGMA writable_schema=ON;
CREATE TABLE IF NOT EXISTS sqlite_sequence(name,seq);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('User',3);
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
PRAGMA writable_schema=OFF;
COMMIT;
