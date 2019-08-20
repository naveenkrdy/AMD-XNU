/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma	ident	"@(#)tst.multiend.d	1.1	06/08/28 SMI"

/*
 * ASSERTION:
 *	Tests Multiple END and single BEGIN
 *
 * SECTION: dtrace Provider
 *
 */


#pragma D option quiet
#pragma D option nolibs

END
{
	printf("End1 fired after exit\n");
}
END
{
	printf("End2 fired after exit\n");
}
END
{
	printf("End3 fired after exit\n");
}
END
{
	printf("End4 fired after exit\n");
}

BEGIN
{
	printf("Begin fired first\n");
	exit(0);
}
