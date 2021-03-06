-- Table: public."ChallongeSettings"

-- DROP TABLE public."ChallongeSettings";

CREATE TABLE public."ChallongeSettings"
(
    "Id" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "ApiKey" text COLLATE pg_catalog."default",
    "SubDomain" text COLLATE pg_catalog."default",
    "UserId" integer NOT NULL,
    CONSTRAINT "PK_ChallongeSettings" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_ChallongeSettings_Users_UserId" FOREIGN KEY ("UserId")
        REFERENCES public."Users" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE RESTRICT
)

    TABLESPACE pg_default;

ALTER TABLE public."ChallongeSettings"
    OWNER to keyteki;
-- Index: IX_ChallongeSettings_UserId

-- DROP INDEX public."IX_ChallongeSettings_UserId";

CREATE INDEX "IX_ChallongeSettings_UserId"
    ON public."ChallongeSettings" USING btree
        ("UserId" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ix_challongesettings_userid_fk

-- DROP INDEX public.ix_challongesettings_userid_fk;

CREATE UNIQUE INDEX ix_challongesettings_userid_fk
    ON public."ChallongeSettings" USING btree
        ("UserId" ASC NULLS LAST)
    TABLESPACE pg_default;
