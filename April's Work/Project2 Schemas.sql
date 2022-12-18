-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ystc9f
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Glass" (
    "id" serial   NOT NULL,
    "job_title" varchar(50)   NOT NULL,
    "Industry" varchar(50)   NOT NULL,
    "avg_salary" float   NOT NULL,
    "job_state" varchar(10)   NOT NULL,
    "python_yn" varchar(10)   NOT NULL,
    "R_yn" varchar(10)   NOT NULL,
    "aws" varchar(10)   NOT NULL,
    "excel" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Glass" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "job_title" (
    "job_title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_job_title" PRIMARY KEY (
        "job_title"
     )
);

ALTER TABLE "Glass" ADD CONSTRAINT "fk_Glass_job_title" FOREIGN KEY("job_title")
REFERENCES "job_title" ("job_title");
