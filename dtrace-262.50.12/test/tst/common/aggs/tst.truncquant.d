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

#pragma ident	"@(#)tst.truncquant.d	1.1	06/08/28 SMI"

#pragma D option quiet
#pragma D option statusrate=200ms

int i;

tick-1ms
/i < 100/
{
	@[i] = lquantize(i, 0, 150);
	@[i] = lquantize(i + 1, 0, 150);
	@[i] = lquantize(i + 2, 0, 150);
	@[i] = lquantize(i + 3, 0, 150);
	i++;
}

tick-1ms
/i == 100/
{
	exit(0);
}

END
{
	trunc(@, 5);
}
