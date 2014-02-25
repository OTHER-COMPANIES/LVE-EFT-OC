-- 23/09/2013 07:10:58 PM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD COLUMN IsReconcilingItems CHAR(1) DEFAULT NULL CHECK (IsReconcilingItems IN ('Y','N'))
;

