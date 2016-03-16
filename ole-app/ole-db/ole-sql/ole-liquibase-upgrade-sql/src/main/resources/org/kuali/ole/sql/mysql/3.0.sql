--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: org/kuali/ole/3.0/db.changelog-20160208.xml
--  *********************************************************************

--  Lock Database
--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_KRIM_PERM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10502', 'OLE10502', '1', '1', 'OLE-CAT', 'MARC_EDITOR_COPY_BIB', 'user to Copy a bibliographic record will be created', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 1, '7:b4944d7e80f8bc23ac28c3d85bff9fa6', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_KRIM_ROLE_PERM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12506', 'OLE12506', 'OLE10077', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12507', 'OLE12507', 'OLE10078', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12508', 'OLE12508', 'OLE10079', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12509', 'OLE12509', 'OLE10080', 'OLE10502', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12510', 'OLE12510', 'OLE10082', 'OLE10502', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_ROLE_PERM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 2, '7:8dd09b35d8d014484483604dffbeee8c', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_CAT_SHVLG_SCHM_T_UPDATE::ole
UPDATE OLE_CAT_SHVLG_SCHM_T SET SHVLG_SCHM_CD = 'EIGHT', SHVLG_SCHM_ID = '10' WHERE SHVLG_SCHM_ID = 8
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CAT_SHVLG_SCHM_T_UPDATE', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 3, '7:07bcfea29f570366d060d68cbb549c8f', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_CAT_SHVLG_SCHM_T_INSERT1::ole
INSERT INTO OLE_CAT_SHVLG_SCHM_T (OBJ_ID,ROW_ACT_IND,SHVLG_SCHM_CD,SHVLG_SCHM_ID,SHVLG_SCHM_NM,SRC,SRC_DT,VER_NBR) VALUES ('fb8119a1-eafb-4150-ad72-0f9c67e7d7df','Y','SIX',8,'Shelved separately','MFHD 852 1st Indicator: http://www.loc.gov/marc/holdings/hd852.html','2012-03-22 00:00:00',1)
/

INSERT INTO OLE_CAT_SHVLG_SCHM_T (OBJ_ID,ROW_ACT_IND,SHVLG_SCHM_CD,SHVLG_SCHM_ID,SHVLG_SCHM_NM,SRC,SRC_DT,VER_NBR) VALUES ('fb8119a1-eafb-4150-ad72-0f9c67e7d7dg','Y','SEVEN',9,'Source specified in subfield $2','MFHD 852 1st Indicator: http://www.loc.gov/marc/holdings/hd852.html','2012-03-22 00:00:00',1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_CAT_SHVLG_SCHM_T_INSERT1', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 4, '7:1cf7eba53d543d0c6c10d8a3d9e7c94c', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_REQS_T_BILL_PHN_NBR_NULL::ole
ALTER TABLE PUR_REQS_T MODIFY BILL_PHN_NBR VARCHAR(20) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_REQS_T_BILL_PHN_NBR_NULL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 5, '7:0c66f770f71c621ab63c8ba4c67c8929', 'dropNotNullConstraint', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::ALERT_OLE_PUR_POBA_T_MYSQL::ole
ALTER TABLE OLE_PUR_POBA_T MODIFY UPLD_FILE_NM varchar(120)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ALERT_OLE_PUR_POBA_T_MYSQL', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 6, '7:b4013a468b9bfefdd66f79cc0cf1a10d', 'sql', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DS_HOLDINGS_T_ADD::ole
ALTER TABLE OLE_DS_HOLDINGS_T ADD MATERIALS_SPECIFIED VARCHAR(100) NULL
/

ALTER TABLE OLE_DS_HOLDINGS_T ADD FIRST_INDICATOR VARCHAR(20) NULL
/

ALTER TABLE OLE_DS_HOLDINGS_T ADD SECOND_INDICATOR VARCHAR(20) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_HOLDINGS_T_ADD', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 7, '7:177bc16fdd76c1e15e186a9d2978d739', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_PO_ITM_TOT_ENC_V_ALTER::ole
CREATE OR REPLACE VIEW ole.PUR_PO_ITM_TOT_ENC_V AS (SELECT A.FDOC_NBR AS FDOC_NBR,
            SUM(A.ITM_OSTND_ENC_AMT) AS TOTAL_ENCUMBRANCE,
            SUM(A.ITM_INV_TOT_QTY) AS INVOICED_QUANTITY
            FROM PUR_PO_ITM_T A group by A.FDOC_NBR)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_PO_ITM_TOT_ENC_V_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 8, '7:837fbcb817bc5be9220ce4d924bbec3d', 'createView', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::PUR_PO_V_ALTER::ole
CREATE OR REPLACE VIEW ole.PUR_PO_V AS (SELECT P.AP_PUR_DOC_LNK_ID,
            P.PO_ID,
            P.PO_CUR_IND,
            P.FDOC_NBR,
            P.OBJ_ID,
            D.APP_DOC_STAT,
            P.RECUR_PMT_TYP_CD,
            P.PO_VNDR_CHC_CD,
            P.PO_END_DT,
            E.TOTAL_ENCUMBRANCE,
            SUMMATION.TOTAL_AMOUNT,
            P.PO_CRTE_DT AS PO_CRTE_DT,
            E.INVOICED_QUANTITY AS INVOICED_QUANTITY,
            POTYPE.OLE_PO_TYPE
            FROM
            PUR_PO_T P,
            KREW_DOC_HDR_T D,
            OLE_PUR_PO_TYP_T POTYPE,
            PUR_PO_ITM_TOT_ENC_V E,
            PUR_PO_ITM_TOT_AMT_V SUMMATION
            WHERE
            P.FDOC_NBR = E.FDOC_NBR
            AND
            P.FDOC_NBR=D.DOC_HDR_ID
            AND P.FDOC_NBR = SUMMATION.FDOC_NBR
            AND P.OLE_PO_TYPE_ID = POTYPE.OLE_PO_TYPE_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('PUR_PO_V_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 9, '7:0e7d877d5744c6d2cd5e4a94f843dd46', 'createView', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::ADD_LOCN_POPUP::ole
ALTER TABLE OLE_CRCL_DSK_LOCN_T ADD LOCN_POPUP VARCHAR(1) NULL
/

ALTER TABLE OLE_CRCL_DSK_LOCN_T ADD LOCN_POPUP_MSG VARCHAR(4000) NULL
/

ALTER TABLE OLE_CRCL_DSK_LOCN_T ALTER LOCN_POPUP SET DEFAULT 'N'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ADD_LOCN_POPUP', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 10, '7:abc8f571e596b27bddbb33333e833f37', 'addColumn, addDefaultValue', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_LOAD_KRCR_PARM_T_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-PURAP', 'AutoClosePurchaseOrdersStep', 'AUTO_CLOSE_PO_ORDER_TYPE', 'OLEAC1001', '1', 'CONFG', 'Firm, Fixed;Approval;Blanket;', 'Order Types Included in AutoClose Job PO Job. Change it to ''All'' to include all open PO for AutoClose Job', 'A', 'OLE')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOAD_KRCR_PARM_T_mysql', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 11, '7:6af24b8b122a629979c0067963a1c2e7', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::OLE_DS_ITEM_T_ADD::ole
ALTER TABLE OLE_DS_ITEM_T ADD VOLUME_NUMBER VARCHAR(100) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_T_ADD', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 12, '7:657a752c1a6e90c5459a0b41601e45e3', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::CA_SUB_FUND_GRP_T_UPDT::ole
UPDATE CA_SUB_FUND_GRP_T SET SUB_FUND_GRP_CD = 'DEPOSI' WHERE SUB_FUND_GRP_CD = 'CLRREV'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('CA_SUB_FUND_GRP_T_UPDT', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 13, '7:cab6d187ff4158255d8a8f8fbb34779a', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::CA_SUB_FUND_GRP_T_UPDATE::ole
UPDATE CA_SUB_FUND_GRP_T SET FUND_GRP_CD = 'DP', SUB_FUND_GRP_DESC = 'DEPOSIT ACCOUNT' WHERE SUB_FUND_GRP_CD = 'DEPOSI'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('CA_SUB_FUND_GRP_T_UPDATE', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 14, '7:8e2c60bc05138a7505762bc8891c17cb', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::KRCR_PARM_T_UPDATE::ole
UPDATE KRCR_PARM_T SET PARM_DESC_TXT = 'Sub Fund Group Code DEPOSI.', VALUE = 'DEPOSI' WHERE PARM_NM = 'SUB_FUND_GRP_CD'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('KRCR_PARM_T_UPDATE', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 15, '7:a7e45f5a424a515931f3700bbc640018', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::GL_BALANCE_T_ALTER::ole
ALTER TABLE ole.GL_BALANCE_T ADD FUND_CD VARCHAR(10) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('GL_BALANCE_T_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 16, '7:3ef6267224a3e25aef6653cb369a124d', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::GL_BALANCE_T_FK::ole
ALTER TABLE ole.GL_BALANCE_T ADD CONSTRAINT GL_BALANCE_FUND_CD_FK FOREIGN KEY (FUND_CD) REFERENCES OLE_FUND_CD_T (FUND_CD_ID) ON UPDATE RESTRICT ON DELETE CASCADE
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('GL_BALANCE_T_FK', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 17, '7:186f1571cfa72168d55b2aac7dd5b2de', 'addForeignKeyConstraint', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::GL_ACCT_BALANCES_T_ALTER::ole
ALTER TABLE ole.GL_ACCT_BALANCES_T ADD FUND_CD VARCHAR(10) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('GL_ACCT_BALANCES_T_ALTER', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 18, '7:26e0890e346b0e1196be160f4bf77a85', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/3.0/db.changelog-20160208.xml::GL_ACCT_BALANCES_T_FK::ole
ALTER TABLE ole.GL_ACCT_BALANCES_T ADD CONSTRAINT GL_ACCT_BALANCES_FUND_CD_FK FOREIGN KEY (FUND_CD) REFERENCES OLE_FUND_CD_T (FUND_CD_ID) ON UPDATE RESTRICT ON DELETE CASCADE
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('GL_ACCT_BALANCES_T_FK', 'ole', 'org/kuali/ole/3.0/db.changelog-20160208.xml', NOW(), 19, '7:43c1959ec64c858e5d29549c735aec88', 'addForeignKeyConstraint', '', 'EXECUTED', '3.2.0')
/

--  Release Database Lock
--  Release Database Lock
