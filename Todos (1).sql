CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "is_active" bool DEFAULT true
);

CREATE TABLE "todos" (
  "id" uuid,
  "title" varchar NOT NULL,
  "description" varchar,
  "user_id" uuid NOT NULL,
  "status" boolean
);

ALTER TABLE "todos" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
