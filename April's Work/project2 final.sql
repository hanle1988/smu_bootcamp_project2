-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/SdtjDm
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "company" (
    "id" serial   NOT NULL,
    "company" varchar(100)   NOT NULL,
    "company_link" varchar(500)   NOT NULL,
    "company_rating" int   NOT NULL,
    "last_updated" timestamp default localtimestamp   NOT NULL,
    CONSTRAINT "pk_company" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "job" (
    "id" serial   NOT NULL,
    "job_title" varchar(100)   NOT NULL,
    "job_link" varchar(500)   NOT NULL,
    "company" int   NOT NULL,
    "location" varchar(500)   NOT NULL,
    "salary" varchar(100)   NOT NULL,
    "status" int   NOT NULL,
    "state" int   NOT NULL,
    "remote" bool   NOT NULL,
    "last_updated" timestamp default localtimestamp  NOT NULL,
    CONSTRAINT "pk_job" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "status" (
    "id" serial   NOT NULL,
    "status" bool   NOT NULL,
    "last_updated" timestamp default localtimestamp  NOT NULL,
    CONSTRAINT "pk_status" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "state" (
    "id" serial   NOT NULL,
    "state" varchar(100)   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "job" ADD CONSTRAINT "fk_job_company" FOREIGN KEY("company")
REFERENCES "company" ("id");

ALTER TABLE "job" ADD CONSTRAINT "fk_job_status" FOREIGN KEY("status")
REFERENCES "status" ("id");

ALTER TABLE "job" ADD CONSTRAINT "fk_job_state" FOREIGN KEY("state")
REFERENCES "state" ("id");

