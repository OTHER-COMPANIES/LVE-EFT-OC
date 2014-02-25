CREATE TABLE T_LVE_AccountStatementHeader
(
  ad_client_id numeric(10,0) DEFAULT NULL::numeric,
  ad_org_id numeric(10,0) NOT NULL,
  ad_pinstance_id numeric(10,0) DEFAULT NULL::numeric,
  c_bp_group_id numeric(10,0) DEFAULT NULL::numeric,
  c_bpartner_id numeric(10,0) DEFAULT NULL::numeric,
  created timestamp without time zone,
  createdby numeric(10,0) DEFAULT NULL::numeric,
  datefrom timestamp without time zone,
  dateto timestamp without time zone,
  issotrx character(1) DEFAULT NULL::bpchar,
  pastdue121 numeric,
  due91_120 numeric,
  due61_90 numeric,
  due31_60 numeric,
  due0_30 numeric,
  currentbalance numeric,
  c_bpartner_location_id numeric(10,0) DEFAULT NULL::numeric,
  CONSTRAINT T_LVE_AccountStatementHeader_issotrx_check CHECK (issotrx = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]))
);