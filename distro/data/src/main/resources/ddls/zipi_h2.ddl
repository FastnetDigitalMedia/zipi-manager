-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/master.xml
-- Ran at: 9/29/15 2:11 PM
-- Against: null@offline:h2?version=1.3&caseSensitive=true&changeLogFile=c:\Users\ewittman\git\zipi\zipi\distro\ddl/target/changelog/h2/databasechangelog.csv
-- Liquibase version: 3.4.1
-- *********************************************************************

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/000-zipi-manager-api.db.sequences.changelog.xml::1434723514712-2::zipi (generated)
CREATE SEQUENCE hibernate_sequence START WITH 999;

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-1::zipi (generated)
CREATE TABLE client_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, published_on TIMESTAMP, retired_on TIMESTAMP, status VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL, client_id VARCHAR(255), client_org_id VARCHAR(255), apikey VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-2::zipi (generated)
CREATE TABLE clients (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-3::zipi (generated)
CREATE TABLE auditlog (id BIGINT NOT NULL, created_on TIMESTAMP NOT NULL, data VARCHAR(2147483647), entity_id VARCHAR(255), entity_type VARCHAR(255) NOT NULL, entity_version VARCHAR(255), organization_id VARCHAR(255) NOT NULL, what VARCHAR(255) NOT NULL, who VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-4::zipi (generated)
CREATE TABLE contracts (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, clientv_id BIGINT, planv_id BIGINT, apiv_id BIGINT);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-5::zipi (generated)
CREATE TABLE endpoint_properties (api_version_id BIGINT NOT NULL, value VARCHAR(255), name VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-6::zipi (generated)
CREATE TABLE gateways (id VARCHAR(255) NOT NULL, configuration VARCHAR(2147483647) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, name VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-7::zipi (generated)
CREATE TABLE memberships (id BIGINT NOT NULL, created_on TIMESTAMP, org_id VARCHAR(255), role_id VARCHAR(255), user_id VARCHAR(255));

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-8::zipi (generated)
CREATE TABLE organizations (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, name VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-9::zipi (generated)
CREATE TABLE pd_templates (policydef_id VARCHAR(255) NOT NULL, language VARCHAR(255), template VARCHAR(2048));

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-10::zipi (generated)
CREATE TABLE permissions (role_id VARCHAR(255) NOT NULL, permissions INT);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-11::zipi (generated)
CREATE TABLE plan_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, locked_on TIMESTAMP, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, status VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL, plan_id VARCHAR(255), plan_org_id VARCHAR(255));

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-12::zipi (generated)
CREATE TABLE plans (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-13::zipi (generated)
CREATE TABLE plugins (id BIGINT NOT NULL, artifact_id VARCHAR(255) NOT NULL, classifier VARCHAR(255), created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), group_id VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, type VARCHAR(255), version VARCHAR(255) NOT NULL, deleted BOOLEAN);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-14::zipi (generated)
CREATE TABLE policies (id BIGINT NOT NULL, configuration VARCHAR(2147483647), created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, entity_id VARCHAR(255) NOT NULL, entity_version VARCHAR(255) NOT NULL, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, name VARCHAR(255) NOT NULL, order_index INT NOT NULL, organization_id VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, definition_id VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-15::zipi (generated)
CREATE TABLE policydefs (id VARCHAR(255) NOT NULL, description VARCHAR(512) NOT NULL, form VARCHAR(255), form_type VARCHAR(255), icon VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, plugin_id BIGINT, policy_impl VARCHAR(255) NOT NULL, deleted BOOLEAN);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-16::zipi (generated)
CREATE TABLE roles (id VARCHAR(255) NOT NULL, auto_grant BOOLEAN, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), name VARCHAR(255));

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-17::zipi (generated)
CREATE TABLE api_defs (id BIGINT NOT NULL, data BLOB, api_version_id BIGINT);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-18::zipi (generated)
CREATE TABLE api_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, definition_type VARCHAR(255), endpoint VARCHAR(255), endpoint_type VARCHAR(255), endpoint_ct VARCHAR(255), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP NOT NULL, public_api BOOLEAN NOT NULL, published_on TIMESTAMP, retired_on TIMESTAMP, status VARCHAR(255) NOT NULL, version VARCHAR(255), api_id VARCHAR(255), api_org_id VARCHAR(255), parse_payload BOOLEAN);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-19::zipi (generated)
CREATE TABLE apis (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL, num_published INT);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-20::zipi (generated)
CREATE TABLE api_gateways (api_version_id BIGINT NOT NULL, gateway_id VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-21::zipi (generated)
CREATE TABLE api_plans (api_version_id BIGINT NOT NULL, plan_id VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-22::zipi (generated)
CREATE TABLE users (username VARCHAR(255) NOT NULL, email VARCHAR(255), full_name VARCHAR(255), joined_on TIMESTAMP);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/010-zipi-manager-api.db.tables.changelog.xml::1436469846462-23::zipi (generated)
CREATE TABLE downloads (id VARCHAR(255) NOT NULL, type VARCHAR(255), path VARCHAR(255), expires TIMESTAMP);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-23::zipi (generated)
ALTER TABLE endpoint_properties ADD PRIMARY KEY (api_version_id, name);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-24::zipi (generated)
ALTER TABLE api_gateways ADD PRIMARY KEY (api_version_id, gateway_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-25::zipi (generated)
ALTER TABLE api_plans ADD PRIMARY KEY (api_version_id, plan_id, version);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-26::zipi (generated)
ALTER TABLE client_versions ADD CONSTRAINT client_versionsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-27::zipi (generated)
ALTER TABLE clients ADD CONSTRAINT clientsPK PRIMARY KEY (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-28::zipi (generated)
ALTER TABLE auditlog ADD CONSTRAINT auditlogPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-29::zipi (generated)
ALTER TABLE contracts ADD CONSTRAINT contractsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-30::zipi (generated)
ALTER TABLE gateways ADD CONSTRAINT gatewaysPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-31::zipi (generated)
ALTER TABLE memberships ADD CONSTRAINT membershipsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-32::zipi (generated)
ALTER TABLE organizations ADD CONSTRAINT organizationsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-33::zipi (generated)
ALTER TABLE plan_versions ADD CONSTRAINT plan_versionsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-34::zipi (generated)
ALTER TABLE plans ADD CONSTRAINT plansPK PRIMARY KEY (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-35::zipi (generated)
ALTER TABLE plugins ADD CONSTRAINT pluginsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-36::zipi (generated)
ALTER TABLE policies ADD CONSTRAINT policiesPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-37::zipi (generated)
ALTER TABLE policydefs ADD CONSTRAINT policydefsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-38::zipi (generated)
ALTER TABLE roles ADD CONSTRAINT rolesPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-39::zipi (generated)
ALTER TABLE api_defs ADD CONSTRAINT api_defsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-40::zipi (generated)
ALTER TABLE api_versions ADD CONSTRAINT api_versionsPK PRIMARY KEY (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-41::zipi (generated)
ALTER TABLE apis ADD CONSTRAINT apisPK PRIMARY KEY (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-42::zipi (generated)
ALTER TABLE users ADD CONSTRAINT usersPK PRIMARY KEY (username);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-43::zipi (generated)
ALTER TABLE apis ADD CONSTRAINT FK_31hj3xmhp1wedxjh5bklnlg15 FOREIGN KEY (organization_id) REFERENCES organizations (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-44::zipi (generated)
ALTER TABLE contracts ADD CONSTRAINT FK_6h06sgs4dudh1wehmk0us973g FOREIGN KEY (clientv_id) REFERENCES client_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-45::zipi (generated)
ALTER TABLE api_defs ADD CONSTRAINT FK_81fuw1n8afmvpw4buk7l4tyxk FOREIGN KEY (api_version_id) REFERENCES api_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-46::zipi (generated)
ALTER TABLE client_versions ADD CONSTRAINT FK_8epnoby31bt7xakegakigpikp FOREIGN KEY (client_id, client_org_id) REFERENCES clients (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-47::zipi (generated)
ALTER TABLE contracts ADD CONSTRAINT FK_8o6t1f3kg96rxy5uv51f6k9fy FOREIGN KEY (apiv_id) REFERENCES api_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-48::zipi (generated)
ALTER TABLE api_versions ADD CONSTRAINT FK_92erjg9k1lni97gd87nt6tq37 FOREIGN KEY (api_id, api_org_id) REFERENCES apis (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-49::zipi (generated)
ALTER TABLE endpoint_properties ADD CONSTRAINT FK_gn0ydqur10sxuvpyw2jvv4xxb FOREIGN KEY (api_version_id) REFERENCES api_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-50::zipi (generated)
ALTER TABLE clients ADD CONSTRAINT FK_jenpu34rtuncsgvtw0sfo8qq9 FOREIGN KEY (organization_id) REFERENCES organizations (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-51::zipi (generated)
ALTER TABLE policies ADD CONSTRAINT FK_l4q6we1bos1yl9unmogei6aja FOREIGN KEY (definition_id) REFERENCES policydefs (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-52::zipi (generated)
ALTER TABLE plans ADD CONSTRAINT FK_lwhc7xrdbsun1ak2uvfu0prj8 FOREIGN KEY (organization_id) REFERENCES organizations (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-53::zipi (generated)
ALTER TABLE contracts ADD CONSTRAINT FK_nyw8xu6m8cx4rwwbtrxbjneui FOREIGN KEY (planv_id) REFERENCES plan_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-54::zipi (generated)
ALTER TABLE api_gateways ADD CONSTRAINT FK_p5dm3cngljt6yrsnvc7uc6a75 FOREIGN KEY (api_version_id) REFERENCES api_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-55::zipi (generated)
ALTER TABLE pd_templates ADD CONSTRAINT FK_prbnn7j7m6m3pxt2dsn9gwlw8 FOREIGN KEY (policydef_id) REFERENCES policydefs (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-56::zipi (generated)
ALTER TABLE permissions ADD CONSTRAINT FK_sq51ihfrapwdr98uufenhcocg FOREIGN KEY (role_id) REFERENCES roles (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-57::zipi (generated)
ALTER TABLE api_plans ADD CONSTRAINT FK_t7uvfcsswopb9kh8wpa86blqr FOREIGN KEY (api_version_id) REFERENCES api_versions (id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/100-zipi-manager-api.db.constraints.changelog.xml::1436469846462-58::zipi (generated)
ALTER TABLE plan_versions ADD CONSTRAINT FK_tonylvm2ypnq3efxqr1g0m9fs FOREIGN KEY (plan_id, plan_org_id) REFERENCES plans (id, organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-1::zipi
ALTER TABLE plugins ADD CONSTRAINT UK_plugins_1 UNIQUE (group_id, artifact_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-2::zipi
ALTER TABLE memberships ADD CONSTRAINT UK_memberships_1 UNIQUE (user_id, role_id, org_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-3::zipi
ALTER TABLE plan_versions ADD CONSTRAINT UK_plan_versions_1 UNIQUE (plan_id, plan_org_id, version);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-4::zipi
ALTER TABLE client_versions ADD CONSTRAINT UK_client_versions_1 UNIQUE (client_id, client_org_id, version);
ALTER TABLE client_versions ADD CONSTRAINT UK_client_versions_2 UNIQUE (apikey);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-5::zipi
ALTER TABLE api_versions ADD CONSTRAINT UK_api_versions_1 UNIQUE (api_id, api_org_id, version);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-6::zipi
ALTER TABLE api_defs ADD CONSTRAINT UK_api_defs_1 UNIQUE (api_version_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/110-zipi-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-7::zipi
ALTER TABLE contracts ADD CONSTRAINT UK_contracts_1 UNIQUE (clientv_id, apiv_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-1::zipi
CREATE INDEX IDX_auditlog_1 ON auditlog(who);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-2::zipi
CREATE INDEX IDX_auditlog_2 ON auditlog(organization_id, entity_id, entity_version, entity_type);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-3::zipi
CREATE INDEX IDX_FK_pd_templates_1 ON pd_templates(policydef_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-4::zipi
CREATE INDEX IDX_users_1 ON users(username);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-5::zipi
CREATE INDEX IDX_users_2 ON users(full_name);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-6::zipi
CREATE INDEX IDX_FK_permissions_1 ON permissions(role_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-7::zipi
CREATE INDEX IDX_memberships_1 ON memberships(user_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-8::zipi
CREATE INDEX IDX_organizations_1 ON organizations(name);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-9::zipi
CREATE INDEX IDX_FK_plans_1 ON plans(organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-10::zipi
CREATE INDEX IDX_FK_clients_1 ON clients(organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-11::zipi
CREATE INDEX IDX_apis_1 ON apis(name);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-12::zipi
CREATE INDEX IDX_FK_apis_1 ON apis(organization_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-13::zipi
CREATE INDEX IDX_policies_1 ON policies(organization_id, entity_id, entity_version);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-14::zipi
CREATE INDEX IDX_policies_2 ON policies(order_index);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-15::zipi
CREATE INDEX IDX_FK_policies_1 ON policies(definition_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-16::zipi
CREATE INDEX IDX_FK_contracts_p ON contracts(planv_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-17::zipi
CREATE INDEX IDX_FK_contracts_s ON contracts(apiv_id);

-- Changeset c:/Users/ewittman/git/zipi/zipi/distro/ddl/src/main/liquibase/current/200-zipi-manager-api.db.indexes.changelog.xml::createIndex-18::zipi
CREATE INDEX IDX_FK_contracts_a ON contracts(clientv_id);