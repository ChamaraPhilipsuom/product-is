ALTER TABLE IDN_OAUTH_CONSUMER_APPS
  ADD COLUMN PKCE_MANDATORY CHAR(1) DEFAULT '0',
  ADD COLUMN PKCE_SUPPORT_PLAIN CHAR(1) DEFAULT '0';

ALTER TABLE IDN_OAUTH2_AUTHORIZATION_CODE
  ADD COLUMN PKCE_CODE_CHALLENGE VARCHAR(255),
  ADD COLUMN PKCE_CODE_CHALLENGE_METHOD VARCHAR(128);

ALTER TABLE WF_BPS_PROFILE MODIFY COLUMN HOST_URL_MANAGER VARCHAR(255);
ALTER TABLE WF_BPS_PROFILE MODIFY COLUMN HOST_URL_WORKER VARCHAR(255);