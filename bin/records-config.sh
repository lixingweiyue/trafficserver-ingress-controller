#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set +x

if [ ! -z "${LOG_CONFIG_FNAME}" ]; then
	echo "CONFIG proxy.config.log.config.filename STRING ${LOG_CONFIG_FNAME}" >> /usr/local/etc/trafficserver/records.config
fi

if [ ! -z "${SSL_SERVERNAME_FNAME}" ]; then
	echo "CONFIG proxy.config.ssl.servername.filename STRING ${SSL_SERVERNAME_FNAME}" >> /usr/local/etc/trafficserver/records.config
fi
