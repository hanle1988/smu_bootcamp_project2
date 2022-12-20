﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "company" (
    "id" serial   NOT NULL,
    "company" varchar(100)   NOT NULL,
    "company_link" varchar(500)   NOT NULL,
    "company_rating" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_company" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "job" (
    "id" serial   NOT NULL,
    "job_title" varchar(100)   NOT NULL,
    "job_link" varchar(500)   NOT NULL,
    "company" varchar(500)   NOT NULL,
    "location" varchar(500)   NOT NULL,
    "salary" varchar(100)   NOT NULL,
    "status" booleans   NOT NULL,
    "state" varchar(10)   NOT NULL,
    "remote" booleans   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_job" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "status" (
    "id" serial   NOT NULL,
    "status" booleans   NOT NULL,
    "last_updated" timestamp   NOT NULL,
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

ALTER TABLE "company" ADD CONSTRAINT "fk_company_id" FOREIGN KEY("id")
REFERENCES "job" ("company");

ALTER TABLE "status" ADD CONSTRAINT "fk_status_id" FOREIGN KEY("id")
REFERENCES "job" ("status");

ALTER TABLE "state" ADD CONSTRAINT "fk_state_id" FOREIGN KEY("id")
REFERENCES "job" ("state");

