# Copyright Materialize, Inc. and contributors. All rights reserved.
#
# Use of this software is governed by the Business Source License
# included in the LICENSE file at the root of this repository.
#
# As of the Change Date specified in that file, in accordance with
# the Business Source License, use of this software will be governed
# by the Apache License, Version 2.0.

$ mysql-connect name=mysql url=mysql://root@${arg.mysql-source-host} password=${arg.mysql-root-password}

$ mysql-execute name=mysql
USE public;
SELECT * FROM t0;
SELECT * FROM t1;
SELECT * FROM t2;
SELECT * FROM alter_fail_drop_constraint;
SELECT * FROM alter_fail_drop_col;
