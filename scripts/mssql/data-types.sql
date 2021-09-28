/*
 * Copyright (c) 2021, WSO2 Inc. (http://www.wso2.com).
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

Create TYPE DT_IDN_OAUTH2_SCOPE AS TABLE (
    SCOPE_ID INTEGER,
    NAME VARCHAR(255),
    DISPLAY_NAME VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    SCOPE_TYPE VARCHAR(255)
);

CREATE TYPE DT_IDN_OIDC_SCOPE_CLAIMS AS TABLE (
    SCOPE_ID INTEGER,
    CLAIM_ID INTEGER,
    CLAIM VARCHAR(255)
);

CREATE TYPE DT_IDN_CLAIM_DIALECT AS TABLE (
    DIALECT_ID INTEGER,
    DIALECT_URI VARCHAR(255)
);

CREATE TYPE DT_IDN_CLAIM AS TABLE (
    DIALECT_ID INTEGER,
    CLAIM_ID INTEGER,
    CLAIM_URI VARCHAR (255)
);

CREATE TYPE DT_IDN_CLAIM_MAPPED_ATTRIBUTE AS TABLE (
    DIALECT_ID INTEGER,
    CLAIM_ID INTEGER,
    ID INTEGER,
    USER_STORE_DOMAIN_NAME VARCHAR (255),
    ATTRIBUTE_NAME VARCHAR (255)
);

CREATE TYPE DT_IDN_CLAIM_PROPERTY AS TABLE (
    DIALECT_ID INTEGER,
    CLAIM_ID INTEGER,
    ID INTEGER,
    PROPERTY_NAME VARCHAR (255),
    PROPERTY_VALUE VARCHAR (255)
);

CREATE TYPE DT_CLAIM_MAPPING AS TABLE (
    DIALECT_ID INTEGER,
    CLAIM_ID INTEGER,
    MAPPED_CLAIM_URI VARCHAR (255)
);
