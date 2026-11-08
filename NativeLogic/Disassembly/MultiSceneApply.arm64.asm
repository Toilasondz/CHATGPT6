VideoStarTool.dylib ARM64 disassembly: 0x12c64..0x184e4
   12c64:	24 01 28 0a	bic	w4, w9, w8
   12c68:	04 15 00 33	bfxil	w4, w8, #0, #6
   12c6c:	aa 56 5d 39	ldrb	w10, [x21, #0x755]
   12c70:	5b 09 1b 12	and	w27, w10, #0xe0
   12c74:	ea 03 2a 2a	mvn	w10, w10
   12c78:	5b 11 00 33	bfxil	w27, w10, #0, #5
   12c7c:	aa ee 5a 39	ldrb	w10, [x21, #0x6bb]
   12c80:	eb 03 2a 2a	mvn	w11, w10
   12c84:	6b e9 02 12	and	w11, w11, #0xdddddddd
   12c88:	4a e1 03 12	and	w10, w10, #0x22222222
   12c8c:	68 01 0a 2a	orr	w8, w11, w10
   12c90:	a9 e3 0a d1	sub	x9, x29, #0x2b8
   12c94:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12c98:	aa f2 5a 39	ldrb	w10, [x21, #0x6bc]
   12c9c:	6c 13 80 52	mov	w12, #0x9b
   12ca0:	8b 01 2a 0a	bic	w11, w12, w10
   12ca4:	82 0c 80 52	mov	w2, #0x64
   12ca8:	4a 01 02 0a	and	w10, w10, w2
   12cac:	68 01 0a 2a	orr	w8, w11, w10
   12cb0:	a9 63 09 d1	sub	x9, x29, #0x258
   12cb4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12cb8:	ab fa 5a 39	ldrb	w11, [x21, #0x6be]
   12cbc:	68 15 80 52	mov	w8, #0xab
   12cc0:	6e 01 08 2a	orr	w14, w11, w8
   12cc4:	88 0a 80 52	mov	w8, #0x54
   12cc8:	0b 01 2b 2a	orn	w11, w8, w11
   12ccc:	c8 01 0b 0a	and	w8, w14, w11
   12cd0:	a9 b3 09 d1	sub	x9, x29, #0x26c
   12cd4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12cd8:	ae 0a 5b 39	ldrb	w14, [x21, #0x6c2]
   12cdc:	68 08 80 52	mov	w8, #0x43
   12ce0:	0f 01 2e 0a	bic	w15, w8, w14
   12ce4:	88 17 80 52	mov	w8, #0xbc
   12ce8:	ce 01 08 0a	and	w14, w14, w8
   12cec:	e8 01 0e 2a	orr	w8, w15, w14
   12cf0:	a9 d3 0a d1	sub	x9, x29, #0x2b4
   12cf4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12cf8:	af 16 5b 39	ldrb	w15, [x21, #0x6c5]
   12cfc:	89 1d 80 52	mov	w9, #0xec
   12d00:	f0 01 09 0a	and	w16, w15, w9
   12d04:	68 02 80 52	mov	w8, #0x13
   12d08:	0f 01 2f 0a	bic	w15, w8, w15
   12d0c:	0a 02 0f 2a	orr	w10, w16, w15
   12d10:	ab 93 0a d1	sub	x11, x29, #0x2a4
   12d14:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12d18:	af 1e 5b 39	ldrb	w15, [x21, #0x6c7]
   12d1c:	f0 03 2f 2a	mvn	w16, w15
   12d20:	ef 05 1d 12	and	w15, w15, #0x18
   12d24:	10 76 1b 12	and	w16, w16, #0xffffffe7
   12d28:	ea 01 10 2a	orr	w10, w15, w16
   12d2c:	ab a3 0a d1	sub	x11, x29, #0x2a8
   12d30:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12d34:	af 26 5b 39	ldrb	w15, [x21, #0x6c9]
   12d38:	11 00 2f 0a	bic	w17, w0, w15
   12d3c:	aa 09 80 52	mov	w10, #0x4d
   12d40:	ef 01 0a 0a	and	w15, w15, w10
   12d44:	2a 02 0f 2a	orr	w10, w17, w15
   12d48:	ab 83 0a d1	sub	x11, x29, #0x2a0
   12d4c:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12d50:	af 2a 5b 39	ldrb	w15, [x21, #0x6ca]
   12d54:	2a 0b 80 52	mov	w10, #0x59
   12d58:	51 01 2f 0a	bic	w17, w10, w15
   12d5c:	ef 01 07 0a	and	w15, w15, w7
   12d60:	2a 02 0f 2a	orr	w10, w17, w15
   12d64:	ab c3 0a d1	sub	x11, x29, #0x2b0
   12d68:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12d6c:	b1 3a 5b 39	ldrb	w17, [x21, #0x6ce]
   12d70:	e0 03 31 2a	mvn	w0, w17
   12d74:	00 78 1b 12	and	w0, w0, #0xffffffef
   12d78:	31 02 1c 12	and	w17, w17, #0x10
   12d7c:	0a 00 11 2a	orr	w10, w0, w17
   12d80:	ab 03 0b d1	sub	x11, x29, #0x2c0
   12d84:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12d88:	b1 42 5b 39	ldrb	w17, [x21, #0x6d0]
   12d8c:	2a 0a 80 52	mov	w10, #0x51
   12d90:	40 01 31 0a	bic	w0, w10, w17
   12d94:	ca 15 80 52	mov	w10, #0xae
   12d98:	31 02 0a 0a	and	w17, w17, w10
   12d9c:	0a 00 11 2a	orr	w10, w0, w17
   12da0:	ab f3 0a d1	sub	x11, x29, #0x2bc
   12da4:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12da8:	b1 46 5b 39	ldrb	w17, [x21, #0x6d1]
   12dac:	aa 16 80 52	mov	w10, #0xb5
   12db0:	40 01 31 0a	bic	w0, w10, w17
   12db4:	31 02 01 0a	and	w17, w17, w1
   12db8:	0a 00 11 2a	orr	w10, w0, w17
   12dbc:	ab b3 0a d1	sub	x11, x29, #0x2ac
   12dc0:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12dc4:	a0 4e 5b 39	ldrb	w0, [x21, #0x6d3]
   12dc8:	05 00 05 0a	and	w5, w0, w5
   12dcc:	c0 00 20 0a	bic	w0, w6, w0
   12dd0:	aa 00 00 2a	orr	w10, w5, w0
   12dd4:	ab e3 09 d1	sub	x11, x29, #0x278
   12dd8:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12ddc:	a5 62 5b 39	ldrb	w5, [x21, #0x6d8]
   12de0:	4a 0f 80 52	mov	w10, #0x7a
   12de4:	a6 00 0a 0a	and	w6, w5, w10
   12de8:	aa 10 80 52	mov	w10, #0x85
   12dec:	45 01 25 0a	bic	w5, w10, w5
   12df0:	c6 00 05 2a	orr	w6, w6, w5
   12df4:	a5 6a 5b 39	ldrb	w5, [x21, #0x6da]
   12df8:	a7 00 09 2a	orr	w7, w5, w9
   12dfc:	05 01 25 2a	orn	w5, w8, w5
   12e00:	e7 00 05 0a	and	w7, w7, w5
   12e04:	a5 6e 5b 39	ldrb	w5, [x21, #0x6db]
   12e08:	68 0c 80 52	mov	w8, #0x63
   12e0c:	b4 00 08 2a	orr	w20, w5, w8
   12e10:	c5 02 25 2a	orn	w5, w22, w5
   12e14:	85 02 05 0a	and	w5, w20, w5
   12e18:	b4 82 5b 39	ldrb	w20, [x21, #0x6e0]
   12e1c:	a9 0e 80 52	mov	w9, #0x75
   12e20:	36 01 34 0a	bic	w22, w9, w20
   12e24:	48 11 80 52	mov	w8, #0x8a
   12e28:	94 02 08 0a	and	w20, w20, w8
   12e2c:	d4 02 14 2a	orr	w20, w22, w20
   12e30:	b6 8e 5b 39	ldrb	w22, [x21, #0x6e3]
   12e34:	f7 02 36 0a	bic	w23, w23, w22
   12e38:	ea 0c 80 52	mov	w10, #0x67
   12e3c:	d6 02 0a 0a	and	w22, w22, w10
   12e40:	f6 02 16 2a	orr	w22, w23, w22
   12e44:	b7 9a 5b 39	ldrb	w23, [x21, #0x6e6]
   12e48:	ea 0b 80 52	mov	w10, #0x5f
   12e4c:	58 01 37 0a	bic	w24, w10, w23
   12e50:	0a 14 80 52	mov	w10, #0xa0
   12e54:	f7 02 0a 0a	and	w23, w23, w10
   12e58:	0a 03 17 2a	orr	w10, w24, w23
   12e5c:	ab 53 07 d1	sub	x11, x29, #0x1d4
   12e60:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12e64:	b8 aa 5b 39	ldrb	w24, [x21, #0x6ea]
   12e68:	8a 09 80 52	mov	w10, #0x4c
   12e6c:	59 01 38 2a	orn	w25, w10, w24
   12e70:	6a 16 80 52	mov	w10, #0xb3
   12e74:	18 03 0a 2a	orr	w24, w24, w10
   12e78:	2a 03 18 0a	and	w10, w25, w24
   12e7c:	ab 13 07 d1	sub	x11, x29, #0x1c4
   12e80:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12e84:	b9 ba 5b 39	ldrb	w25, [x21, #0x6ee]
   12e88:	5a 03 39 0a	bic	w26, w26, w25
   12e8c:	aa 13 80 52	mov	w10, #0x9d
   12e90:	39 03 0a 0a	and	w25, w25, w10
   12e94:	4a 03 19 2a	orr	w10, w26, w25
   12e98:	ab 43 0a d1	sub	x11, x29, #0x290
   12e9c:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12ea0:	b9 be 5b 39	ldrb	w25, [x21, #0x6ef]
   12ea4:	3a 0b 1c 32	orr	w26, w25, #0x70
   12ea8:	f9 03 39 2a	mvn	w25, w25
   12eac:	39 73 19 32	orr	w25, w25, #0xffffff8f
   12eb0:	4a 03 19 0a	and	w10, w26, w25
   12eb4:	ab 73 0a d1	sub	x11, x29, #0x29c
   12eb8:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   12ebc:	b9 c6 5b 39	ldrb	w25, [x21, #0x6f1]
   12ec0:	3a 03 09 2a	orr	w26, w25, w9
   12ec4:	19 01 39 2a	orn	w25, w8, w25
   12ec8:	39 03 1a 0a	and	w25, w25, w26
   12ecc:	ba ce 5b 39	ldrb	w26, [x21, #0x6f3]
   12ed0:	28 06 80 52	mov	w8, #0x31
   12ed4:	5c 03 08 2a	orr	w28, w26, w8
   12ed8:	c8 19 80 52	mov	w8, #0xce
   12edc:	1a 01 3a 2a	orn	w26, w8, w26
   12ee0:	9a 03 1a 0a	and	w26, w28, w26
   12ee4:	bc d6 5b 39	ldrb	w28, [x21, #0x6f5]
   12ee8:	88 14 80 52	mov	w8, #0xa4
   12eec:	1e 01 3c 0a	bic	w30, w8, w28
   12ef0:	68 0b 80 52	mov	w8, #0x5b
   12ef4:	9c 03 08 0a	and	w28, w28, w8
   12ef8:	dc 03 1c 2a	orr	w28, w30, w28
   12efc:	be de 5b 39	ldrb	w30, [x21, #0x6f7]
   12f00:	58 10 80 52	mov	w24, #0x82
   12f04:	08 03 3e 0a	bic	w8, w24, w30
   12f08:	b7 0f 80 52	mov	w23, #0x7d
   12f0c:	de 03 17 0a	and	w30, w30, w23
   12f10:	08 01 1e 2a	orr	w8, w8, w30
   12f14:	a9 53 0a d1	sub	x9, x29, #0x294
   12f18:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12f1c:	a8 e6 5b 39	ldrb	w8, [x21, #0x6f9]
   12f20:	69 1a 80 52	mov	w9, #0xd3
   12f24:	1e 01 09 2a	orr	w30, w8, w9
   12f28:	8a 05 80 52	mov	w10, #0x2c
   12f2c:	48 01 28 2a	orn	w8, w10, w8
   12f30:	c8 03 08 0a	and	w8, w30, w8
   12f34:	ab 63 0a d1	sub	x11, x29, #0x298
   12f38:	68 01 10 b8	stur	w8, [x11, #-0x100]
   12f3c:	a8 02 5c 39	ldrb	w8, [x21, #0x700]
   12f40:	fe 03 28 2a	mvn	w30, w8
   12f44:	de 73 1c 32	orr	w30, w30, #0xfffffff1
   12f48:	08 09 1f 32	orr	w8, w8, #0xe
   12f4c:	c8 03 08 0a	and	w8, w30, w8
   12f50:	ab 23 0a d1	sub	x11, x29, #0x288
   12f54:	68 01 10 b8	stur	w8, [x11, #-0x100]
   12f58:	a8 06 5c 39	ldrb	w8, [x21, #0x701]
   12f5c:	1e 01 09 0a	and	w30, w8, w9
   12f60:	48 01 28 0a	bic	w8, w10, w8
   12f64:	c8 03 08 2a	orr	w8, w30, w8
   12f68:	a9 33 0a d1	sub	x9, x29, #0x28c
   12f6c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12f70:	a8 1e 5c 39	ldrb	w8, [x21, #0x707]
   12f74:	c9 0a 80 52	mov	w9, #0x56
   12f78:	1e 01 09 0a	and	w30, w8, w9
   12f7c:	29 15 80 52	mov	w9, #0xa9
   12f80:	28 01 28 0a	bic	w8, w9, w8
   12f84:	08 01 1e 2a	orr	w8, w8, w30
   12f88:	a9 13 0a d1	sub	x9, x29, #0x284
   12f8c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12f90:	a8 2e 5c 39	ldrb	w8, [x21, #0x70b]
   12f94:	be 01 28 2a	orn	w30, w13, w8
   12f98:	c9 1b 80 52	mov	w9, #0xde
   12f9c:	08 01 09 2a	orr	w8, w8, w9
   12fa0:	c8 03 08 0a	and	w8, w30, w8
   12fa4:	a9 03 0a d1	sub	x9, x29, #0x280
   12fa8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12fac:	a8 42 5c 39	ldrb	w8, [x21, #0x710]
   12fb0:	fe 03 28 2a	mvn	w30, w8
   12fb4:	08 e5 01 32	orr	w8, w8, #0x99999999
   12fb8:	de e7 03 32	orr	w30, w30, #0x66666666
   12fbc:	08 01 1e 0a	and	w8, w8, w30
   12fc0:	a9 93 09 d1	sub	x9, x29, #0x264
   12fc4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12fc8:	a8 56 5c 39	ldrb	w8, [x21, #0x715]
   12fcc:	89 06 80 52	mov	w9, #0x34
   12fd0:	3e 01 28 0a	bic	w30, w9, w8
   12fd4:	69 19 80 52	mov	w9, #0xcb
   12fd8:	08 01 09 0a	and	w8, w8, w9
   12fdc:	c8 03 08 2a	orr	w8, w30, w8
   12fe0:	a9 43 09 d1	sub	x9, x29, #0x250
   12fe4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   12fe8:	a8 5a 5c 39	ldrb	w8, [x21, #0x716]
   12fec:	5e 00 28 0a	bic	w30, w2, w8
   12ff0:	08 01 0c 0a	and	w8, w8, w12
   12ff4:	c8 03 08 2a	orr	w8, w30, w8
   12ff8:	a9 53 09 d1	sub	x9, x29, #0x254
   12ffc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13000:	a8 5e 5c 39	ldrb	w8, [x21, #0x717]
   13004:	1e 79 1a 12	and	w30, w8, #0xffffffdf
   13008:	09 04 80 52	mov	w9, #0x20
   1300c:	28 01 28 0a	bic	w8, w9, w8
   13010:	c8 03 08 2a	orr	w8, w30, w8
   13014:	a9 73 09 d1	sub	x9, x29, #0x25c
   13018:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1301c:	a8 62 5c 39	ldrb	w8, [x21, #0x718]
   13020:	6d 1b 80 52	mov	w13, #0xdb
   13024:	1e 01 0d 2a	orr	w30, w8, w13
   13028:	8f 04 80 52	mov	w15, #0x24
   1302c:	e8 01 28 2a	orn	w8, w15, w8
   13030:	c8 03 08 0a	and	w8, w30, w8
   13034:	a9 83 09 d1	sub	x9, x29, #0x260
   13038:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1303c:	a8 6a 5c 39	ldrb	w8, [x21, #0x71a]
   13040:	fe 03 28 2a	mvn	w30, w8
   13044:	08 e9 02 12	and	w8, w8, #0xdddddddd
   13048:	de e3 03 12	and	w30, w30, #0x22222222
   1304c:	c8 03 08 2a	orr	w8, w30, w8
   13050:	a9 a3 09 d1	sub	x9, x29, #0x268
   13054:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13058:	a8 6e 5c 39	ldrb	w8, [x21, #0x71b]
   1305c:	ee 12 80 52	mov	w14, #0x97
   13060:	1e 01 0e 0a	and	w30, w8, w14
   13064:	11 0d 80 52	mov	w17, #0x68
   13068:	28 02 28 0a	bic	w8, w17, w8
   1306c:	c8 03 08 2a	orr	w8, w30, w8
   13070:	a9 d3 09 d1	sub	x9, x29, #0x274
   13074:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13078:	a8 76 5c 39	ldrb	w8, [x21, #0x71d]
   1307c:	49 03 80 52	mov	w9, #0x1a
   13080:	1e 01 09 2a	orr	w30, w8, w9
   13084:	a9 1c 80 52	mov	w9, #0xe5
   13088:	28 01 28 2a	orn	w8, w9, w8
   1308c:	c8 03 08 0a	and	w8, w30, w8
   13090:	a9 c3 09 d1	sub	x9, x29, #0x270
   13094:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13098:	a8 7a 5c 39	ldrb	w8, [x21, #0x71e]
   1309c:	aa 01 80 52	mov	w10, #0xd
   130a0:	5e 01 28 0a	bic	w30, w10, w8
   130a4:	49 1e 80 52	mov	w9, #0xf2
   130a8:	08 01 09 0a	and	w8, w8, w9
   130ac:	c8 03 08 2a	orr	w8, w30, w8
   130b0:	ab f3 09 d1	sub	x11, x29, #0x27c
   130b4:	68 01 10 b8	stur	w8, [x11, #-0x100]
   130b8:	a8 a2 5c 39	ldrb	w8, [x21, #0x728]
   130bc:	4b 12 80 52	mov	w11, #0x92
   130c0:	7e 01 28 0a	bic	w30, w11, w8
   130c4:	a2 0d 80 52	mov	w2, #0x6d
   130c8:	08 01 02 0a	and	w8, w8, w2
   130cc:	c8 03 08 2a	orr	w8, w30, w8
   130d0:	ab 33 09 d1	sub	x11, x29, #0x24c
   130d4:	68 01 10 b8	stur	w8, [x11, #-0x100]
   130d8:	a8 ae 5c 39	ldrb	w8, [x21, #0x72b]
   130dc:	2c 01 80 52	mov	w12, #0x9
   130e0:	9e 01 28 0a	bic	w30, w12, w8
   130e4:	d0 1e 80 52	mov	w16, #0xf6
   130e8:	08 01 10 0a	and	w8, w8, w16
   130ec:	c8 03 08 2a	orr	w8, w30, w8
   130f0:	ab 23 09 d1	sub	x11, x29, #0x248
   130f4:	68 01 10 b8	stur	w8, [x11, #-0x100]
   130f8:	a8 d2 5c 39	ldrb	w8, [x21, #0x734]
   130fc:	3e 01 28 0a	bic	w30, w9, w8
   13100:	08 01 0a 0a	and	w8, w8, w10
   13104:	c8 03 08 2a	orr	w8, w30, w8
   13108:	a9 13 09 d1	sub	x9, x29, #0x244
   1310c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13110:	a8 ee 5c 39	ldrb	w8, [x21, #0x73b]
   13114:	09 03 80 52	mov	w9, #0x18
   13118:	3e 01 28 0a	bic	w30, w9, w8
   1311c:	08 75 1b 12	and	w8, w8, #0xffffffe7
   13120:	c8 03 08 2a	orr	w8, w30, w8
   13124:	a9 43 08 d1	sub	x9, x29, #0x210
   13128:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1312c:	a8 f6 5c 39	ldrb	w8, [x21, #0x73d]
   13130:	29 0e 80 52	mov	w9, #0x71
   13134:	3e 01 28 0a	bic	w30, w9, w8
   13138:	c9 11 80 52	mov	w9, #0x8e
   1313c:	08 01 09 0a	and	w8, w8, w9
   13140:	c8 03 08 2a	orr	w8, w30, w8
   13144:	a9 53 08 d1	sub	x9, x29, #0x214
   13148:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1314c:	a8 fe 5c 39	ldrb	w8, [x21, #0x73f]
   13150:	fe 03 28 2a	mvn	w30, w8
   13154:	08 79 1a 32	orr	w8, w8, #0xffffffdf
   13158:	de 03 1b 32	orr	w30, w30, #0x20
   1315c:	c8 03 08 0a	and	w8, w30, w8
   13160:	a9 63 08 d1	sub	x9, x29, #0x218
   13164:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13168:	a8 02 5d 39	ldrb	w8, [x21, #0x740]
   1316c:	fe 03 28 2a	mvn	w30, w8
   13170:	08 f1 00 32	orr	w8, w8, #0x55555555
   13174:	de f3 01 32	orr	w30, w30, #0xaaaaaaaa
   13178:	08 01 1e 0a	and	w8, w8, w30
   1317c:	a9 83 08 d1	sub	x9, x29, #0x220
   13180:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13184:	a8 06 5d 39	ldrb	w8, [x21, #0x741]
   13188:	a0 07 80 52	mov	w0, #0x3d
   1318c:	1e 01 00 2a	orr	w30, w8, w0
   13190:	41 18 80 52	mov	w1, #0xc2
   13194:	28 00 28 2a	orn	w8, w1, w8
   13198:	c8 03 08 0a	and	w8, w30, w8
   1319c:	a9 c3 08 d1	sub	x9, x29, #0x230
   131a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   131a4:	a8 0e 5d 39	ldrb	w8, [x21, #0x743]
   131a8:	29 1b 80 52	mov	w9, #0xd9
   131ac:	3e 01 28 0a	bic	w30, w9, w8
   131b0:	c9 04 80 52	mov	w9, #0x26
   131b4:	08 01 09 0a	and	w8, w8, w9
   131b8:	c8 03 08 2a	orr	w8, w30, w8
   131bc:	a9 a3 08 d1	sub	x9, x29, #0x228
   131c0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   131c4:	a8 16 5d 39	ldrb	w8, [x21, #0x745]
   131c8:	69 0a 80 52	mov	w9, #0x53
   131cc:	3e 01 28 0a	bic	w30, w9, w8
   131d0:	89 15 80 52	mov	w9, #0xac
   131d4:	08 01 09 0a	and	w8, w8, w9
   131d8:	c8 03 08 2a	orr	w8, w30, w8
   131dc:	a9 93 08 d1	sub	x9, x29, #0x224
   131e0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   131e4:	a8 1a 5d 39	ldrb	w8, [x21, #0x746]
   131e8:	29 1a 80 52	mov	w9, #0xd1
   131ec:	3e 01 28 0a	bic	w30, w9, w8
   131f0:	c9 05 80 52	mov	w9, #0x2e
   131f4:	08 01 09 0a	and	w8, w8, w9
   131f8:	c8 03 08 2a	orr	w8, w30, w8
   131fc:	a9 d3 08 d1	sub	x9, x29, #0x234
   13200:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13204:	a8 22 5d 39	ldrb	w8, [x21, #0x748]
   13208:	fe 03 28 2a	mvn	w30, w8
   1320c:	de 7b 1d 12	and	w30, w30, #0xfffffffb
   13210:	08 01 1e 12	and	w8, w8, #0x4
   13214:	c8 03 08 2a	orr	w8, w30, w8
   13218:	a9 e3 08 d1	sub	x9, x29, #0x238
   1321c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13220:	a8 26 5d 39	ldrb	w8, [x21, #0x749]
   13224:	09 00 80 12	mov	w9, #-0x1
   13228:	3e 05 08 4a	eor	w30, w9, w8, lsl #1
   1322c:	c8 03 08 0b	add	w8, w30, w8
   13230:	a9 f3 08 d1	sub	x9, x29, #0x23c
   13234:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13238:	a8 32 5d 39	ldrb	w8, [x21, #0x74c]
   1323c:	be 01 28 0a	bic	w30, w13, w8
   13240:	08 01 0f 0a	and	w8, w8, w15
   13244:	c8 03 08 2a	orr	w8, w30, w8
   13248:	a9 b3 08 d1	sub	x9, x29, #0x22c
   1324c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13250:	a8 36 5d 39	ldrb	w8, [x21, #0x74d]
   13254:	8b 1d 80 52	mov	w11, #0xec
   13258:	7e 01 28 0a	bic	w30, w11, w8
   1325c:	69 02 80 52	mov	w9, #0x13
   13260:	08 01 09 0a	and	w8, w8, w9
   13264:	c8 03 08 2a	orr	w8, w30, w8
   13268:	aa 03 09 d1	sub	x10, x29, #0x240
   1326c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13270:	a8 4a 5d 39	ldrb	w8, [x21, #0x752]
   13274:	aa 1a 80 52	mov	w10, #0xd5
   13278:	5e 01 28 0a	bic	w30, w10, w8
   1327c:	4a 05 80 52	mov	w10, #0x2a
   13280:	08 01 0a 0a	and	w8, w8, w10
   13284:	c8 03 08 2a	orr	w8, w30, w8
   13288:	aa 73 08 d1	sub	x10, x29, #0x21c
   1328c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13290:	a8 5e 5d 39	ldrb	w8, [x21, #0x757]
   13294:	fe 03 28 2a	mvn	w30, w8
   13298:	de e3 02 32	orr	w30, w30, #0x44444444
   1329c:	08 e9 01 32	orr	w8, w8, #0xbbbbbbbb
   132a0:	c8 03 08 0a	and	w8, w30, w8
   132a4:	aa d3 07 d1	sub	x10, x29, #0x1f4
   132a8:	48 01 10 b8	stur	w8, [x10, #-0x100]
   132ac:	a8 62 5d 39	ldrb	w8, [x21, #0x758]
   132b0:	fe 03 28 2a	mvn	w30, w8
   132b4:	08 75 1d 32	orr	w8, w8, #0xfffffff9
   132b8:	de 07 1f 32	orr	w30, w30, #0x6
   132bc:	08 01 1e 0a	and	w8, w8, w30
   132c0:	aa 13 08 d1	sub	x10, x29, #0x204
   132c4:	48 01 10 b8	stur	w8, [x10, #-0x100]
   132c8:	a8 6a 5d 39	ldrb	w8, [x21, #0x75a]
   132cc:	cd 0d 80 52	mov	w13, #0x6e
   132d0:	be 01 28 0a	bic	w30, w13, w8
   132d4:	2f 12 80 52	mov	w15, #0x91
   132d8:	08 01 0f 0a	and	w8, w8, w15
   132dc:	c8 03 08 2a	orr	w8, w30, w8
   132e0:	aa f3 07 d1	sub	x10, x29, #0x1fc
   132e4:	48 01 10 b8	stur	w8, [x10, #-0x100]
   132e8:	a8 6e 5d 39	ldrb	w8, [x21, #0x75b]
   132ec:	de 01 28 0a	bic	w30, w14, w8
   132f0:	08 01 11 0a	and	w8, w8, w17
   132f4:	c8 03 08 2a	orr	w8, w30, w8
   132f8:	aa 23 08 d1	sub	x10, x29, #0x208
   132fc:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13300:	a8 76 5d 39	ldrb	w8, [x21, #0x75d]
   13304:	fe 03 28 2a	mvn	w30, w8
   13308:	de 7b 1d 12	and	w30, w30, #0xfffffffb
   1330c:	08 01 1e 12	and	w8, w8, #0x4
   13310:	c8 03 08 2a	orr	w8, w30, w8
   13314:	aa 33 08 d1	sub	x10, x29, #0x20c
   13318:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1331c:	a8 82 5d 39	ldrb	w8, [x21, #0x760]
   13320:	aa 08 80 52	mov	w10, #0x45
   13324:	5e 01 28 0a	bic	w30, w10, w8
   13328:	4a 17 80 52	mov	w10, #0xba
   1332c:	08 01 0a 0a	and	w8, w8, w10
   13330:	c8 03 08 2a	orr	w8, w30, w8
   13334:	aa 03 08 d1	sub	x10, x29, #0x200
   13338:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1333c:	a8 8a 5d 39	ldrb	w8, [x21, #0x762]
   13340:	9e 01 28 2a	orn	w30, w12, w8
   13344:	08 01 10 2a	orr	w8, w8, w16
   13348:	d1 1e 80 52	mov	w17, #0xf6
   1334c:	c8 03 08 0a	and	w8, w30, w8
   13350:	aa e3 07 d1	sub	x10, x29, #0x1f8
   13354:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13358:	a8 9a 5d 39	ldrb	w8, [x21, #0x766]
   1335c:	6c 14 80 52	mov	w12, #0xa3
   13360:	1e 01 0c 0a	and	w30, w8, w12
   13364:	8a 0b 80 52	mov	w10, #0x5c
   13368:	48 01 28 0a	bic	w8, w10, w8
   1336c:	c8 03 08 2a	orr	w8, w30, w8
   13370:	ae c3 07 d1	sub	x14, x29, #0x1f0
   13374:	c8 01 10 b8	stur	w8, [x14, #-0x100]
   13378:	a8 b6 5d 39	ldrb	w8, [x21, #0x76d]
   1337c:	d0 15 80 52	mov	w16, #0xae
   13380:	1e 02 28 0a	bic	w30, w16, w8
   13384:	2e 0a 80 52	mov	w14, #0x51
   13388:	08 01 0e 0a	and	w8, w8, w14
   1338c:	c8 03 08 2a	orr	w8, w30, w8
   13390:	ae a3 07 d1	sub	x14, x29, #0x1e8
   13394:	c8 01 10 b8	stur	w8, [x14, #-0x100]
   13398:	a8 be 5d 39	ldrb	w8, [x21, #0x76f]
   1339c:	9e 1e 80 52	mov	w30, #0xf4
   133a0:	1e 01 1e 2a	orr	w30, w8, w30
   133a4:	6e 01 80 52	mov	w14, #0xb
   133a8:	c8 01 28 2a	orn	w8, w14, w8
   133ac:	c8 03 08 0a	and	w8, w30, w8
   133b0:	ae b3 07 d1	sub	x14, x29, #0x1ec
   133b4:	c8 01 10 b8	stur	w8, [x14, #-0x100]
   133b8:	a8 ca 5d 39	ldrb	w8, [x21, #0x772]
   133bc:	4e 0b 80 52	mov	w14, #0x5a
   133c0:	1e 01 0e 0a	and	w30, w8, w14
   133c4:	ae 14 80 52	mov	w14, #0xa5
   133c8:	c8 01 28 0a	bic	w8, w14, w8
   133cc:	c8 03 08 2a	orr	w8, w30, w8
   133d0:	ae 93 07 d1	sub	x14, x29, #0x1e4
   133d4:	c8 01 10 b8	stur	w8, [x14, #-0x100]
   133d8:	a8 d6 5d 39	ldrb	w8, [x21, #0x775]
   133dc:	ee 0d 80 52	mov	w14, #0x6f
   133e0:	de 01 28 0a	bic	w30, w14, w8
   133e4:	0e 12 80 52	mov	w14, #0x90
   133e8:	08 01 0e 0a	and	w8, w8, w14
   133ec:	c8 03 08 2a	orr	w8, w30, w8
   133f0:	ae 73 07 d1	sub	x14, x29, #0x1dc
   133f4:	c8 01 10 b8	stur	w8, [x14, #-0x100]
   133f8:	a8 da 5d 39	ldrb	w8, [x21, #0x776]
   133fc:	9e 01 28 0a	bic	w30, w12, w8
   13400:	08 01 0a 0a	and	w8, w8, w10
   13404:	c8 03 08 2a	orr	w8, w30, w8
   13408:	aa 83 07 d1	sub	x10, x29, #0x1e0
   1340c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13410:	a8 e6 5d 39	ldrb	w8, [x21, #0x779]
   13414:	0a 05 80 52	mov	w10, #0x28
   13418:	5e 01 28 0a	bic	w30, w10, w8
   1341c:	ea 1a 80 52	mov	w10, #0xd7
   13420:	08 01 0a 0a	and	w8, w8, w10
   13424:	c8 03 08 2a	orr	w8, w30, w8
   13428:	aa 63 07 d1	sub	x10, x29, #0x1d8
   1342c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13430:	a8 f6 5d 39	ldrb	w8, [x21, #0x77d]
   13434:	fe 03 28 2a	mvn	w30, w8
   13438:	08 01 1f 12	and	w8, w8, #0x2
   1343c:	de 7b 1e 12	and	w30, w30, #0xfffffffd
   13440:	08 01 1e 2a	orr	w8, w8, w30
   13444:	aa 43 07 d1	sub	x10, x29, #0x1d0
   13448:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1344c:	a8 fe 5d 39	ldrb	w8, [x21, #0x77f]
   13450:	3e 01 28 0a	bic	w30, w9, w8
   13454:	08 01 0b 0a	and	w8, w8, w11
   13458:	c8 03 08 2a	orr	w8, w30, w8
   1345c:	a9 23 07 d1	sub	x9, x29, #0x1c8
   13460:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13464:	a8 06 5e 39	ldrb	w8, [x21, #0x781]
   13468:	e9 16 80 52	mov	w9, #0xb7
   1346c:	3e 01 28 0a	bic	w30, w9, w8
   13470:	09 09 80 52	mov	w9, #0x48
   13474:	08 01 09 0a	and	w8, w8, w9
   13478:	c8 03 08 2a	orr	w8, w30, w8
   1347c:	a9 33 07 d1	sub	x9, x29, #0x1cc
   13480:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13484:	a8 12 5e 39	ldrb	w8, [x21, #0x784]
   13488:	ac 06 80 52	mov	w12, #0x35
   1348c:	9e 01 28 0a	bic	w30, w12, w8
   13490:	49 19 80 52	mov	w9, #0xca
   13494:	08 01 09 0a	and	w8, w8, w9
   13498:	c8 03 08 2a	orr	w8, w30, w8
   1349c:	a9 f3 06 d1	sub	x9, x29, #0x1bc
   134a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   134a4:	a8 1e 5e 39	ldrb	w8, [x21, #0x787]
   134a8:	29 0b 80 52	mov	w9, #0x59
   134ac:	3e 01 28 0a	bic	w30, w9, w8
   134b0:	cb 14 80 52	mov	w11, #0xa6
   134b4:	08 01 0b 0a	and	w8, w8, w11
   134b8:	c8 03 08 2a	orr	w8, w30, w8
   134bc:	a9 c3 06 d1	sub	x9, x29, #0x1b0
   134c0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   134c4:	a8 26 5e 39	ldrb	w8, [x21, #0x789]
   134c8:	fe 02 28 0a	bic	w30, w23, w8
   134cc:	08 01 18 0a	and	w8, w8, w24
   134d0:	c8 03 08 2a	orr	w8, w30, w8
   134d4:	a9 b3 06 d1	sub	x9, x29, #0x1ac
   134d8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   134dc:	a8 2e 5e 39	ldrb	w8, [x21, #0x78b]
   134e0:	49 0f 80 52	mov	w9, #0x7a
   134e4:	3e 01 28 0a	bic	w30, w9, w8
   134e8:	57 0f 80 52	mov	w23, #0x7a
   134ec:	a9 10 80 52	mov	w9, #0x85
   134f0:	08 01 09 0a	and	w8, w8, w9
   134f4:	c8 03 08 2a	orr	w8, w30, w8
   134f8:	a9 d3 06 d1	sub	x9, x29, #0x1b4
   134fc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   13500:	a8 32 5e 39	ldrb	w8, [x21, #0x78c]
   13504:	fe 03 28 2a	mvn	w30, w8
   13508:	de 73 1c 12	and	w30, w30, #0xfffffff1
   1350c:	08 09 1f 12	and	w8, w8, #0xe
   13510:	c8 03 08 2a	orr	w8, w30, w8
   13514:	a9 03 07 d1	sub	x9, x29, #0x1c0
   13518:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1351c:	a8 3e 5e 39	ldrb	w8, [x21, #0x78f]
   13520:	29 19 80 52	mov	w9, #0xc9
   13524:	3e 01 28 0a	bic	w30, w9, w8
   13528:	ca 06 80 52	mov	w10, #0x36
   1352c:	08 01 0a 0a	and	w8, w8, w10
   13530:	d8 06 80 52	mov	w24, #0x36
   13534:	c8 03 08 2a	orr	w8, w30, w8
   13538:	aa e3 06 d1	sub	x10, x29, #0x1b8
   1353c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13540:	a8 52 5e 39	ldrb	w8, [x21, #0x794]
   13544:	aa 04 80 52	mov	w10, #0x25
   13548:	5e 01 28 2a	orn	w30, w10, w8
   1354c:	4a 1b 80 52	mov	w10, #0xda
   13550:	08 01 0a 2a	orr	w8, w8, w10
   13554:	c8 03 08 0a	and	w8, w30, w8
   13558:	aa 93 06 d1	sub	x10, x29, #0x1a4
   1355c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   13560:	a8 5e 5e 39	ldrb	w8, [x21, #0x797]
   13564:	fe 03 28 2a	mvn	w30, w8
   13568:	de e7 02 32	orr	w30, w30, #0xcccccccc
   1356c:	08 e5 00 32	orr	w8, w8, #0x33333333
   13570:	c8 03 08 0a	and	w8, w30, w8
   13574:	aa 83 06 d1	sub	x10, x29, #0x1a0
   13578:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1357c:	a8 66 5e 39	ldrb	w8, [x21, #0x799]
   13580:	6a 15 80 52	mov	w10, #0xab
   13584:	1e 01 0a 2a	orr	w30, w8, w10
   13588:	8a 0a 80 52	mov	w10, #0x54
   1358c:	48 01 28 2a	orn	w8, w10, w8
   13590:	c8 03 08 0a	and	w8, w30, w8
   13594:	aa a3 06 d1	sub	x10, x29, #0x1a8
   13598:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1359c:	a8 72 5e 39	ldrb	w8, [x21, #0x79c]
   135a0:	3e 00 28 0a	bic	w30, w1, w8
   135a4:	08 01 00 0a	and	w8, w8, w0
   135a8:	a1 07 80 52	mov	w1, #0x3d
   135ac:	c8 03 08 2a	orr	w8, w30, w8
   135b0:	aa 73 06 d1	sub	x10, x29, #0x19c
   135b4:	48 01 10 b8	stur	w8, [x10, #-0x100]
   135b8:	a8 8a 5e 39	ldrb	w8, [x21, #0x7a2]
   135bc:	fe 03 28 2a	mvn	w30, w8
   135c0:	08 0d 1f 32	orr	w8, w8, #0x1e
   135c4:	de 6f 1b 32	orr	w30, w30, #0xffffffe1
   135c8:	08 01 1e 0a	and	w8, w8, w30
   135cc:	aa 53 06 d1	sub	x10, x29, #0x194
   135d0:	48 01 10 b8	stur	w8, [x10, #-0x100]
   135d4:	a8 8e 5e 39	ldrb	w8, [x21, #0x7a3]
   135d8:	6a 0e 80 52	mov	w10, #0x73
   135dc:	5e 01 28 0a	bic	w30, w10, w8
   135e0:	8a 11 80 52	mov	w10, #0x8c
   135e4:	08 01 0a 0a	and	w8, w8, w10
   135e8:	c8 03 08 2a	orr	w8, w30, w8
   135ec:	aa 63 06 d1	sub	x10, x29, #0x198
   135f0:	48 01 10 b8	stur	w8, [x10, #-0x100]
   135f4:	a8 9e 5e 39	ldrb	w8, [x21, #0x7a7]
   135f8:	be 01 28 0a	bic	w30, w13, w8
   135fc:	08 01 0f 0a	and	w8, w8, w15
   13600:	c8 03 08 2a	orr	w8, w30, w8
   13604:	aa 43 06 d1	sub	x10, x29, #0x190
   13608:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1360c:	a8 ae 5e 39	ldrb	w8, [x21, #0x7ab]
   13610:	ca 12 80 52	mov	w10, #0x96
   13614:	1e 01 0a 2a	orr	w30, w8, w10
   13618:	2a 0d 80 52	mov	w10, #0x69
   1361c:	48 01 28 2a	orn	w8, w10, w8
   13620:	c8 03 08 0a	and	w8, w30, w8
   13624:	aa 33 06 d1	sub	x10, x29, #0x18c
   13628:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1362c:	a8 c2 5e 39	ldrb	w8, [x21, #0x7b0]
   13630:	6a 05 80 52	mov	w10, #0x2b
   13634:	5e 01 28 0a	bic	w30, w10, w8
   13638:	8a 1a 80 52	mov	w10, #0xd4
   1363c:	08 01 0a 0a	and	w8, w8, w10
   13640:	c8 03 08 2a	orr	w8, w30, w8
   13644:	aa 23 06 d1	sub	x10, x29, #0x188
   13648:	48 01 10 b8	stur	w8, [x10, #-0x100]
   1364c:	e8 09 80 52	mov	w8, #0x4f
   13650:	aa d3 00 d1	sub	x10, x29, #0x34
   13654:	4a 01 50 b8	ldur	w10, [x10, #-0x100]
   13658:	48 01 08 4a	eor	w8, w10, w8
   1365c:	68 e6 1a 39	strb	w8, [x19, #0x6b9]
   13660:	a8 ea 5a 39	ldrb	w8, [x21, #0x6ba]
   13664:	08 01 1c 52	eor	w8, w8, #0x10
   13668:	68 ea 1a 39	strb	w8, [x19, #0x6ba]
   1366c:	a8 e3 0a d1	sub	x8, x29, #0x2b8
   13670:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13674:	68 ee 1a 39	strb	w8, [x19, #0x6bb]
   13678:	be 1d 80 52	mov	w30, #0xed
   1367c:	a8 63 09 d1	sub	x8, x29, #0x258
   13680:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13684:	08 01 1e 4a	eor	w8, w8, w30
   13688:	68 f2 1a 39	strb	w8, [x19, #0x6bc]
   1368c:	a8 f6 5a 39	ldrb	w8, [x21, #0x6bd]
   13690:	6a 16 80 52	mov	w10, #0xb3
   13694:	08 01 0a 4a	eor	w8, w8, w10
   13698:	68 f6 1a 39	strb	w8, [x19, #0x6bd]
   1369c:	a8 b3 09 d1	sub	x8, x29, #0x26c
   136a0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   136a4:	e8 03 28 2a	mvn	w8, w8
   136a8:	68 fa 1a 39	strb	w8, [x19, #0x6be]
   136ac:	a8 fe 5a 39	ldrb	w8, [x21, #0x6bf]
   136b0:	08 01 02 4a	eor	w8, w8, w2
   136b4:	68 fe 1a 39	strb	w8, [x19, #0x6bf]
   136b8:	a8 02 5b 39	ldrb	w8, [x21, #0x6c0]
   136bc:	ae 18 80 52	mov	w14, #0xc5
   136c0:	08 01 0e 4a	eor	w8, w8, w14
   136c4:	68 02 1b 39	strb	w8, [x19, #0x6c0]
   136c8:	a8 06 5b 39	ldrb	w8, [x21, #0x6c1]
   136cc:	42 1e 80 52	mov	w2, #0xf2
   136d0:	08 01 02 4a	eor	w8, w8, w2
   136d4:	68 06 1b 39	strb	w8, [x19, #0x6c1]
   136d8:	a8 d3 0a d1	sub	x8, x29, #0x2b4
   136dc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   136e0:	08 79 1e 52	eor	w8, w8, #0xfffffffd
   136e4:	68 0a 1b 39	strb	w8, [x19, #0x6c2]
   136e8:	a8 0e 5b 39	ldrb	w8, [x21, #0x6c3]
   136ec:	ed 08 80 52	mov	w13, #0x47
   136f0:	08 01 0d 4a	eor	w8, w8, w13
   136f4:	68 0e 1b 39	strb	w8, [x19, #0x6c3]
   136f8:	a8 12 5b 39	ldrb	w8, [x21, #0x6c4]
   136fc:	aa 17 80 52	mov	w10, #0xbd
   13700:	08 01 0a 4a	eor	w8, w8, w10
   13704:	68 12 1b 39	strb	w8, [x19, #0x6c4]
   13708:	a8 93 0a d1	sub	x8, x29, #0x2a4
   1370c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13710:	e8 03 28 2a	mvn	w8, w8
   13714:	68 16 1b 39	strb	w8, [x19, #0x6c5]
   13718:	a8 1a 5b 39	ldrb	w8, [x21, #0x6c6]
   1371c:	08 01 10 4a	eor	w8, w8, w16
   13720:	68 1a 1b 39	strb	w8, [x19, #0x6c6]
   13724:	a8 a3 0a d1	sub	x8, x29, #0x2a8
   13728:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1372c:	e8 03 28 2a	mvn	w8, w8
   13730:	68 1e 1b 39	strb	w8, [x19, #0x6c7]
   13734:	a8 22 5b 39	ldrb	w8, [x21, #0x6c8]
   13738:	8a 17 80 52	mov	w10, #0xbc
   1373c:	08 01 0a 4a	eor	w8, w8, w10
   13740:	68 22 1b 39	strb	w8, [x19, #0x6c8]
   13744:	88 16 80 52	mov	w8, #0xb4
   13748:	aa 83 0a d1	sub	x10, x29, #0x2a0
   1374c:	4a 01 50 b8	ldur	w10, [x10, #-0x100]
   13750:	48 01 08 4a	eor	w8, w10, w8
   13754:	68 26 1b 39	strb	w8, [x19, #0x6c9]
   13758:	a8 c3 0a d1	sub	x8, x29, #0x2b0
   1375c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13760:	08 01 00 52	eor	w8, w8, #0x1
   13764:	68 2a 1b 39	strb	w8, [x19, #0x6ca]
   13768:	a8 13 01 d1	sub	x8, x29, #0x44
   1376c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13770:	08 c5 01 11	add	w8, w8, #0x71
   13774:	68 2e 1b 39	strb	w8, [x19, #0x6cb]
   13778:	a8 33 01 d1	sub	x8, x29, #0x4c
   1377c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13780:	08 e1 01 51	sub	w8, w8, #0x78
   13784:	68 32 1b 39	strb	w8, [x19, #0x6cc]
   13788:	a8 43 01 d1	sub	x8, x29, #0x50
   1378c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13790:	08 5d 00 51	sub	w8, w8, #0x17
   13794:	68 36 1b 39	strb	w8, [x19, #0x6cd]
   13798:	a8 03 0b d1	sub	x8, x29, #0x2c0
   1379c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   137a0:	08 71 19 52	eor	w8, w8, #0xffffff8f
   137a4:	68 3a 1b 39	strb	w8, [x19, #0x6ce]
   137a8:	a8 3e 5b 39	ldrb	w8, [x21, #0x6cf]
   137ac:	aa 15 80 52	mov	w10, #0xad
   137b0:	08 01 0a 4a	eor	w8, w8, w10
   137b4:	68 3e 1b 39	strb	w8, [x19, #0x6cf]
   137b8:	a8 f3 0a d1	sub	x8, x29, #0x2bc
   137bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   137c0:	68 42 1b 39	strb	w8, [x19, #0x6d0]
   137c4:	a8 b3 0a d1	sub	x8, x29, #0x2ac
   137c8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   137cc:	68 46 1b 39	strb	w8, [x19, #0x6d1]
   137d0:	a8 4a 5b 39	ldrb	w8, [x21, #0x6d2]
   137d4:	08 65 19 52	eor	w8, w8, #0xffffff81
   137d8:	68 4a 1b 39	strb	w8, [x19, #0x6d2]
   137dc:	a8 e3 09 d1	sub	x8, x29, #0x278
   137e0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   137e4:	e8 03 28 2a	mvn	w8, w8
   137e8:	68 4e 1b 39	strb	w8, [x19, #0x6d3]
   137ec:	a8 52 5b 39	ldrb	w8, [x21, #0x6d4]
   137f0:	6a 0c 80 52	mov	w10, #0x63
   137f4:	08 01 0a 4a	eor	w8, w8, w10
   137f8:	68 52 1b 39	strb	w8, [x19, #0x6d4]
   137fc:	a8 56 5b 39	ldrb	w8, [x21, #0x6d5]
   13800:	4a 09 80 52	mov	w10, #0x4a
   13804:	08 01 0a 4a	eor	w8, w8, w10
   13808:	68 56 1b 39	strb	w8, [x19, #0x6d5]
   1380c:	a8 83 01 d1	sub	x8, x29, #0x60
   13810:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13814:	08 95 01 51	sub	w8, w8, #0x65
   13818:	68 5a 1b 39	strb	w8, [x19, #0x6d6]
   1381c:	a8 5e 5b 39	ldrb	w8, [x21, #0x6d7]
   13820:	08 01 09 4a	eor	w8, w8, w9
   13824:	68 5e 1b 39	strb	w8, [x19, #0x6d7]
   13828:	e8 03 26 2a	mvn	w8, w6
   1382c:	68 62 1b 39	strb	w8, [x19, #0x6d8]
   13830:	a8 66 5b 39	ldrb	w8, [x21, #0x6d9]
   13834:	89 0d 80 52	mov	w9, #0x6c
   13838:	08 01 09 4a	eor	w8, w8, w9
   1383c:	68 66 1b 39	strb	w8, [x19, #0x6d9]
   13840:	e8 03 27 2a	mvn	w8, w7
   13844:	68 6a 1b 39	strb	w8, [x19, #0x6da]
   13848:	e8 03 25 2a	mvn	w8, w5
   1384c:	68 6e 1b 39	strb	w8, [x19, #0x6db]
   13850:	a8 a3 01 d1	sub	x8, x29, #0x68
   13854:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13858:	08 d5 00 11	add	w8, w8, #0x35
   1385c:	68 72 1b 39	strb	w8, [x19, #0x6dc]
   13860:	a8 76 5b 39	ldrb	w8, [x21, #0x6dd]
   13864:	29 0f 80 52	mov	w9, #0x79
   13868:	08 01 09 4a	eor	w8, w8, w9
   1386c:	68 76 1b 39	strb	w8, [x19, #0x6dd]
   13870:	a8 7a 5b 39	ldrb	w8, [x21, #0x6de]
   13874:	49 1a 80 52	mov	w9, #0xd2
   13878:	08 01 09 4a	eor	w8, w8, w9
   1387c:	68 7a 1b 39	strb	w8, [x19, #0x6de]
   13880:	a8 7e 5b 39	ldrb	w8, [x21, #0x6df]
   13884:	29 0e 80 52	mov	w9, #0x71
   13888:	08 01 09 4a	eor	w8, w8, w9
   1388c:	68 7e 1b 39	strb	w8, [x19, #0x6df]
   13890:	74 82 1b 39	strb	w20, [x19, #0x6e0]
   13894:	a8 86 5b 39	ldrb	w8, [x21, #0x6e1]
   13898:	08 09 1e 52	eor	w8, w8, #0x1c
   1389c:	68 86 1b 39	strb	w8, [x19, #0x6e1]
   138a0:	a8 8a 5b 39	ldrb	w8, [x21, #0x6e2]
   138a4:	4a 17 80 52	mov	w10, #0xba
   138a8:	08 01 0a 4a	eor	w8, w8, w10
   138ac:	68 8a 1b 39	strb	w8, [x19, #0x6e2]
   138b0:	65 09 80 52	mov	w5, #0x4b
   138b4:	c8 02 05 4a	eor	w8, w22, w5
   138b8:	68 8e 1b 39	strb	w8, [x19, #0x6e3]
   138bc:	a8 92 5b 39	ldrb	w8, [x21, #0x6e4]
   138c0:	a9 13 80 52	mov	w9, #0x9d
   138c4:	08 01 09 4a	eor	w8, w8, w9
   138c8:	68 92 1b 39	strb	w8, [x19, #0x6e4]
   138cc:	a8 96 5b 39	ldrb	w8, [x21, #0x6e5]
   138d0:	08 79 1a 52	eor	w8, w8, #0xffffffdf
   138d4:	68 96 1b 39	strb	w8, [x19, #0x6e5]
   138d8:	28 1d 80 52	mov	w8, #0xe9
   138dc:	a9 53 07 d1	sub	x9, x29, #0x1d4
   138e0:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   138e4:	28 01 08 4a	eor	w8, w9, w8
   138e8:	68 9a 1b 39	strb	w8, [x19, #0x6e6]
   138ec:	a8 d3 01 d1	sub	x8, x29, #0x74
   138f0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   138f4:	08 21 01 51	sub	w8, w8, #0x48
   138f8:	68 9e 1b 39	strb	w8, [x19, #0x6e7]
   138fc:	a8 a2 5b 39	ldrb	w8, [x21, #0x6e8]
   13900:	08 69 1a 52	eor	w8, w8, #0xffffffc1
   13904:	68 a2 1b 39	strb	w8, [x19, #0x6e8]
   13908:	a8 a6 5b 39	ldrb	w8, [x21, #0x6e9]
   1390c:	08 05 1a 52	eor	w8, w8, #0xc0
   13910:	68 a6 1b 39	strb	w8, [x19, #0x6e9]
   13914:	a8 13 07 d1	sub	x8, x29, #0x1c4
   13918:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1391c:	68 aa 1b 39	strb	w8, [x19, #0x6ea]
   13920:	a8 f3 01 d1	sub	x8, x29, #0x7c
   13924:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13928:	08 3d 01 51	sub	w8, w8, #0x4f
   1392c:	68 ae 1b 39	strb	w8, [x19, #0x6eb]
   13930:	a8 b2 5b 39	ldrb	w8, [x21, #0x6ec]
   13934:	08 75 19 52	eor	w8, w8, #0xffffff9f
   13938:	68 b2 1b 39	strb	w8, [x19, #0x6ec]
   1393c:	a8 b6 5b 39	ldrb	w8, [x21, #0x6ed]
   13940:	af 0c 80 52	mov	w15, #0x65
   13944:	08 01 0f 4a	eor	w8, w8, w15
   13948:	68 b6 1b 39	strb	w8, [x19, #0x6ed]
   1394c:	a8 43 0a d1	sub	x8, x29, #0x290
   13950:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13954:	68 ba 1b 39	strb	w8, [x19, #0x6ee]
   13958:	a8 73 0a d1	sub	x8, x29, #0x29c
   1395c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13960:	e8 03 28 2a	mvn	w8, w8
   13964:	68 be 1b 39	strb	w8, [x19, #0x6ef]
   13968:	a8 03 02 d1	sub	x8, x29, #0x80
   1396c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13970:	08 79 01 11	add	w8, w8, #0x5e
   13974:	68 c2 1b 39	strb	w8, [x19, #0x6f0]
   13978:	79 c6 1b 39	strb	w25, [x19, #0x6f1]
   1397c:	a8 ca 5b 39	ldrb	w8, [x21, #0x6f2]
   13980:	08 01 11 4a	eor	w8, w8, w17
   13984:	68 ca 1b 39	strb	w8, [x19, #0x6f2]
   13988:	e8 03 3a 2a	mvn	w8, w26
   1398c:	68 ce 1b 39	strb	w8, [x19, #0x6f3]
   13990:	a8 d2 5b 39	ldrb	w8, [x21, #0x6f4]
   13994:	08 15 1f 52	eor	w8, w8, #0x7e
   13998:	68 d2 1b 39	strb	w8, [x19, #0x6f4]
   1399c:	c8 04 80 52	mov	w8, #0x26
   139a0:	88 03 08 4a	eor	w8, w28, w8
   139a4:	68 d6 1b 39	strb	w8, [x19, #0x6f5]
   139a8:	a8 da 5b 39	ldrb	w8, [x21, #0x6f6]
   139ac:	b1 0e 80 52	mov	w17, #0x75
   139b0:	08 01 11 4a	eor	w8, w8, w17
   139b4:	68 da 1b 39	strb	w8, [x19, #0x6f6]
   139b8:	a8 53 0a d1	sub	x8, x29, #0x294
   139bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   139c0:	68 de 1b 39	strb	w8, [x19, #0x6f7]
   139c4:	a8 e2 5b 39	ldrb	w8, [x21, #0x6f8]
   139c8:	08 11 1e 52	eor	w8, w8, #0x7c
   139cc:	68 e2 1b 39	strb	w8, [x19, #0x6f8]
   139d0:	a8 63 0a d1	sub	x8, x29, #0x298
   139d4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   139d8:	e8 03 28 2a	mvn	w8, w8
   139dc:	68 e6 1b 39	strb	w8, [x19, #0x6f9]
   139e0:	a8 ea 5b 39	ldrb	w8, [x21, #0x6fa]
   139e4:	09 1b 80 52	mov	w9, #0xd8
   139e8:	08 01 09 4a	eor	w8, w8, w9
   139ec:	68 ea 1b 39	strb	w8, [x19, #0x6fa]
   139f0:	a8 ee 5b 39	ldrb	w8, [x21, #0x6fb]
   139f4:	49 0e 80 52	mov	w9, #0x72
   139f8:	08 01 09 4a	eor	w8, w8, w9
   139fc:	68 ee 1b 39	strb	w8, [x19, #0x6fb]
   13a00:	a8 f2 5b 39	ldrb	w8, [x21, #0x6fc]
   13a04:	08 19 1f 52	eor	w8, w8, #0xfe
   13a08:	68 f2 1b 39	strb	w8, [x19, #0x6fc]
   13a0c:	a8 13 02 d1	sub	x8, x29, #0x84
   13a10:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13a14:	08 d5 01 51	sub	w8, w8, #0x75
   13a18:	68 f6 1b 39	strb	w8, [x19, #0x6fd]
   13a1c:	a8 fa 5b 39	ldrb	w8, [x21, #0x6fe]
   13a20:	69 14 80 52	mov	w9, #0xa3
   13a24:	08 01 09 4a	eor	w8, w8, w9
   13a28:	68 fa 1b 39	strb	w8, [x19, #0x6fe]
   13a2c:	a8 fe 5b 39	ldrb	w8, [x21, #0x6ff]
   13a30:	08 e5 02 52	eor	w8, w8, #0xcccccccc
   13a34:	68 fe 1b 39	strb	w8, [x19, #0x6ff]
   13a38:	a8 23 0a d1	sub	x8, x29, #0x288
   13a3c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13a40:	68 02 1c 39	strb	w8, [x19, #0x700]
   13a44:	a8 33 0a d1	sub	x8, x29, #0x28c
   13a48:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13a4c:	e8 03 28 2a	mvn	w8, w8
   13a50:	68 06 1c 39	strb	w8, [x19, #0x701]
   13a54:	a8 0a 5c 39	ldrb	w8, [x21, #0x702]
   13a58:	08 01 0e 4a	eor	w8, w8, w14
   13a5c:	68 0a 1c 39	strb	w8, [x19, #0x702]
   13a60:	a8 0e 5c 39	ldrb	w8, [x21, #0x703]
   13a64:	29 08 80 52	mov	w9, #0x41
   13a68:	08 01 09 4a	eor	w8, w8, w9
   13a6c:	68 0e 1c 39	strb	w8, [x19, #0x703]
   13a70:	a8 12 5c 39	ldrb	w8, [x21, #0x704]
   13a74:	29 01 80 52	mov	w9, #0x9
   13a78:	08 01 09 4a	eor	w8, w8, w9
   13a7c:	68 12 1c 39	strb	w8, [x19, #0x704]
   13a80:	a8 33 02 d1	sub	x8, x29, #0x8c
   13a84:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13a88:	08 81 00 11	add	w8, w8, #0x20
   13a8c:	68 16 1c 39	strb	w8, [x19, #0x705]
   13a90:	a8 43 02 d1	sub	x8, x29, #0x90
   13a94:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13a98:	08 49 01 11	add	w8, w8, #0x52
   13a9c:	68 1a 1c 39	strb	w8, [x19, #0x706]
   13aa0:	a8 13 0a d1	sub	x8, x29, #0x284
   13aa4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13aa8:	68 1e 1c 39	strb	w8, [x19, #0x707]
   13aac:	a8 63 02 d1	sub	x8, x29, #0x98
   13ab0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ab4:	08 05 01 11	add	w8, w8, #0x41
   13ab8:	68 22 1c 39	strb	w8, [x19, #0x708]
   13abc:	a8 26 5c 39	ldrb	w8, [x21, #0x709]
   13ac0:	a6 01 80 52	mov	w6, #0xd
   13ac4:	08 01 06 4a	eor	w8, w8, w6
   13ac8:	68 26 1c 39	strb	w8, [x19, #0x709]
   13acc:	a8 2a 5c 39	ldrb	w8, [x21, #0x70a]
   13ad0:	49 0a 80 52	mov	w9, #0x52
   13ad4:	08 01 09 4a	eor	w8, w8, w9
   13ad8:	68 2a 1c 39	strb	w8, [x19, #0x70a]
   13adc:	a8 03 0a d1	sub	x8, x29, #0x280
   13ae0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ae4:	68 2e 1c 39	strb	w8, [x19, #0x70b]
   13ae8:	68 0c 1c 52	eor	w8, w3, #0xf0
   13aec:	68 32 1c 39	strb	w8, [x19, #0x70c]
   13af0:	a8 36 5c 39	ldrb	w8, [x21, #0x70d]
   13af4:	29 06 80 52	mov	w9, #0x31
   13af8:	08 01 09 4a	eor	w8, w8, w9
   13afc:	68 36 1c 39	strb	w8, [x19, #0x70d]
   13b00:	a8 3a 5c 39	ldrb	w8, [x21, #0x70e]
   13b04:	08 69 1a 52	eor	w8, w8, #0xffffffc1
   13b08:	68 3a 1c 39	strb	w8, [x19, #0x70e]
   13b0c:	a8 83 02 d1	sub	x8, x29, #0xa0
   13b10:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b14:	08 65 00 51	sub	w8, w8, #0x19
   13b18:	68 3e 1c 39	strb	w8, [x19, #0x70f]
   13b1c:	a8 93 09 d1	sub	x8, x29, #0x264
   13b20:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b24:	e8 03 28 2a	mvn	w8, w8
   13b28:	68 42 1c 39	strb	w8, [x19, #0x710]
   13b2c:	a8 46 5c 39	ldrb	w8, [x21, #0x711]
   13b30:	08 01 1b 52	eor	w8, w8, #0x20
   13b34:	68 46 1c 39	strb	w8, [x19, #0x711]
   13b38:	a8 4a 5c 39	ldrb	w8, [x21, #0x712]
   13b3c:	08 01 0b 4a	eor	w8, w8, w11
   13b40:	68 4a 1c 39	strb	w8, [x19, #0x712]
   13b44:	a8 b3 02 d1	sub	x8, x29, #0xac
   13b48:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b4c:	08 31 00 51	sub	w8, w8, #0xc
   13b50:	68 4e 1c 39	strb	w8, [x19, #0x713]
   13b54:	a8 52 5c 39	ldrb	w8, [x21, #0x714]
   13b58:	4b 10 80 52	mov	w11, #0x82
   13b5c:	08 01 0b 4a	eor	w8, w8, w11
   13b60:	68 52 1c 39	strb	w8, [x19, #0x714]
   13b64:	a8 43 09 d1	sub	x8, x29, #0x250
   13b68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b6c:	68 56 1c 39	strb	w8, [x19, #0x715]
   13b70:	a8 53 09 d1	sub	x8, x29, #0x254
   13b74:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b78:	68 5a 1c 39	strb	w8, [x19, #0x716]
   13b7c:	a8 73 09 d1	sub	x8, x29, #0x25c
   13b80:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b84:	e8 03 28 2a	mvn	w8, w8
   13b88:	68 5e 1c 39	strb	w8, [x19, #0x717]
   13b8c:	a8 83 09 d1	sub	x8, x29, #0x260
   13b90:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13b94:	e8 03 28 2a	mvn	w8, w8
   13b98:	68 62 1c 39	strb	w8, [x19, #0x718]
   13b9c:	a8 d3 02 d1	sub	x8, x29, #0xb4
   13ba0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ba4:	08 f5 01 11	add	w8, w8, #0x7d
   13ba8:	68 66 1c 39	strb	w8, [x19, #0x719]
   13bac:	a8 a3 09 d1	sub	x8, x29, #0x268
   13bb0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13bb4:	68 6a 1c 39	strb	w8, [x19, #0x71a]
   13bb8:	a8 d3 09 d1	sub	x8, x29, #0x274
   13bbc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13bc0:	e8 03 28 2a	mvn	w8, w8
   13bc4:	68 6e 1c 39	strb	w8, [x19, #0x71b]
   13bc8:	a8 72 5c 39	ldrb	w8, [x21, #0x71c]
   13bcc:	70 0d 80 52	mov	w16, #0x6b
   13bd0:	08 01 10 4a	eor	w8, w8, w16
   13bd4:	68 72 1c 39	strb	w8, [x19, #0x71c]
   13bd8:	a8 c3 09 d1	sub	x8, x29, #0x270
   13bdc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13be0:	e8 03 28 2a	mvn	w8, w8
   13be4:	68 76 1c 39	strb	w8, [x19, #0x71d]
   13be8:	a8 f3 09 d1	sub	x8, x29, #0x27c
   13bec:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13bf0:	08 e1 03 52	eor	w8, w8, #0x22222222
   13bf4:	68 7a 1c 39	strb	w8, [x19, #0x71e]
   13bf8:	a8 7e 5c 39	ldrb	w8, [x21, #0x71f]
   13bfc:	08 05 1f 52	eor	w8, w8, #0x6
   13c00:	68 7e 1c 39	strb	w8, [x19, #0x71f]
   13c04:	a8 82 5c 39	ldrb	w8, [x21, #0x720]
   13c08:	09 17 80 52	mov	w9, #0xb8
   13c0c:	08 01 09 4a	eor	w8, w8, w9
   13c10:	68 82 1c 39	strb	w8, [x19, #0x720]
   13c14:	a8 86 5c 39	ldrb	w8, [x21, #0x721]
   13c18:	08 01 0c 4a	eor	w8, w8, w12
   13c1c:	68 86 1c 39	strb	w8, [x19, #0x721]
   13c20:	a8 8a 5c 39	ldrb	w8, [x21, #0x722]
   13c24:	69 0a 80 52	mov	w9, #0x53
   13c28:	08 01 09 4a	eor	w8, w8, w9
   13c2c:	6e 0a 80 52	mov	w14, #0x53
   13c30:	68 8a 1c 39	strb	w8, [x19, #0x722]
   13c34:	a8 f3 02 d1	sub	x8, x29, #0xbc
   13c38:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13c3c:	08 d1 00 11	add	w8, w8, #0x34
   13c40:	68 8e 1c 39	strb	w8, [x19, #0x723]
   13c44:	a8 92 5c 39	ldrb	w8, [x21, #0x724]
   13c48:	49 03 80 52	mov	w9, #0x1a
   13c4c:	08 01 09 4a	eor	w8, w8, w9
   13c50:	68 92 1c 39	strb	w8, [x19, #0x724]
   13c54:	a8 96 5c 39	ldrb	w8, [x21, #0x725]
   13c58:	5a 01 80 52	mov	w26, #0xa
   13c5c:	08 01 1a 4a	eor	w8, w8, w26
   13c60:	68 96 1c 39	strb	w8, [x19, #0x725]
   13c64:	a8 13 03 d1	sub	x8, x29, #0xc4
   13c68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13c6c:	08 3d 00 51	sub	w8, w8, #0xf
   13c70:	68 9a 1c 39	strb	w8, [x19, #0x726]
   13c74:	a8 9e 5c 39	ldrb	w8, [x21, #0x727]
   13c78:	08 e1 03 52	eor	w8, w8, #0x22222222
   13c7c:	68 9e 1c 39	strb	w8, [x19, #0x727]
   13c80:	28 1a 80 52	mov	w8, #0xd1
   13c84:	a9 33 09 d1	sub	x9, x29, #0x24c
   13c88:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   13c8c:	28 01 08 4a	eor	w8, w9, w8
   13c90:	68 a2 1c 39	strb	w8, [x19, #0x728]
   13c94:	a8 a6 5c 39	ldrb	w8, [x21, #0x729]
   13c98:	e9 15 80 52	mov	w9, #0xaf
   13c9c:	08 01 09 4a	eor	w8, w8, w9
   13ca0:	68 a6 1c 39	strb	w8, [x19, #0x729]
   13ca4:	a8 aa 5c 39	ldrb	w8, [x21, #0x72a]
   13ca8:	08 71 1c 52	eor	w8, w8, #0xfffffff1
   13cac:	68 aa 1c 39	strb	w8, [x19, #0x72a]
   13cb0:	a8 23 09 d1	sub	x8, x29, #0x248
   13cb4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13cb8:	68 ae 1c 39	strb	w8, [x19, #0x72b]
   13cbc:	a8 b2 5c 39	ldrb	w8, [x21, #0x72c]
   13cc0:	49 08 80 52	mov	w9, #0x42
   13cc4:	08 01 09 4a	eor	w8, w8, w9
   13cc8:	68 b2 1c 39	strb	w8, [x19, #0x72c]
   13ccc:	a8 b6 5c 39	ldrb	w8, [x21, #0x72d]
   13cd0:	49 1d 80 52	mov	w9, #0xea
   13cd4:	08 01 09 4a	eor	w8, w8, w9
   13cd8:	68 b6 1c 39	strb	w8, [x19, #0x72d]
   13cdc:	a8 43 03 d1	sub	x8, x29, #0xd0
   13ce0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ce4:	08 b9 01 51	sub	w8, w8, #0x6e
   13ce8:	68 ba 1c 39	strb	w8, [x19, #0x72e]
   13cec:	a8 be 5c 39	ldrb	w8, [x21, #0x72f]
   13cf0:	09 09 80 52	mov	w9, #0x48
   13cf4:	08 01 09 4a	eor	w8, w8, w9
   13cf8:	68 be 1c 39	strb	w8, [x19, #0x72f]
   13cfc:	a8 53 03 d1	sub	x8, x29, #0xd4
   13d00:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13d04:	08 59 01 11	add	w8, w8, #0x56
   13d08:	68 c2 1c 39	strb	w8, [x19, #0x730]
   13d0c:	a8 63 03 d1	sub	x8, x29, #0xd8
   13d10:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13d14:	08 f1 01 11	add	w8, w8, #0x7c
   13d18:	68 c6 1c 39	strb	w8, [x19, #0x731]
   13d1c:	a8 ca 5c 39	ldrb	w8, [x21, #0x732]
   13d20:	29 11 80 52	mov	w9, #0x89
   13d24:	08 01 09 4a	eor	w8, w8, w9
   13d28:	68 ca 1c 39	strb	w8, [x19, #0x732]
   13d2c:	a8 73 03 d1	sub	x8, x29, #0xdc
   13d30:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13d34:	08 bd 01 11	add	w8, w8, #0x6f
   13d38:	68 ce 1c 39	strb	w8, [x19, #0x733]
   13d3c:	a8 13 09 d1	sub	x8, x29, #0x244
   13d40:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13d44:	08 e9 00 52	eor	w8, w8, #0x77777777
   13d48:	68 d2 1c 39	strb	w8, [x19, #0x734]
   13d4c:	a8 d6 5c 39	ldrb	w8, [x21, #0x735]
   13d50:	49 11 80 52	mov	w9, #0x8a
   13d54:	08 01 09 4a	eor	w8, w8, w9
   13d58:	68 d6 1c 39	strb	w8, [x19, #0x735]
   13d5c:	a8 da 5c 39	ldrb	w8, [x21, #0x736]
   13d60:	08 09 1c 52	eor	w8, w8, #0x70
   13d64:	68 da 1c 39	strb	w8, [x19, #0x736]
   13d68:	a8 83 03 d1	sub	x8, x29, #0xe0
   13d6c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13d70:	08 05 00 11	add	w8, w8, #0x1
   13d74:	68 de 1c 39	strb	w8, [x19, #0x737]
   13d78:	a8 e2 5c 39	ldrb	w8, [x21, #0x738]
   13d7c:	08 11 1d 52	eor	w8, w8, #0xf8
   13d80:	68 e2 1c 39	strb	w8, [x19, #0x738]
   13d84:	a8 e6 5c 39	ldrb	w8, [x21, #0x739]
   13d88:	08 05 00 52	eor	w8, w8, #0x3
   13d8c:	68 e6 1c 39	strb	w8, [x19, #0x739]
   13d90:	a8 ea 5c 39	ldrb	w8, [x21, #0x73a]
   13d94:	08 01 0b 4a	eor	w8, w8, w11
   13d98:	4c 10 80 52	mov	w12, #0x82
   13d9c:	68 ea 1c 39	strb	w8, [x19, #0x73a]
   13da0:	a8 43 08 d1	sub	x8, x29, #0x210
   13da4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13da8:	68 ee 1c 39	strb	w8, [x19, #0x73b]
   13dac:	08 05 80 52	mov	w8, #0x28
   13db0:	88 00 08 4a	eor	w8, w4, w8
   13db4:	68 f2 1c 39	strb	w8, [x19, #0x73c]
   13db8:	c0 05 80 52	mov	w0, #0x2e
   13dbc:	a8 53 08 d1	sub	x8, x29, #0x214
   13dc0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13dc4:	08 01 00 4a	eor	w8, w8, w0
   13dc8:	68 f6 1c 39	strb	w8, [x19, #0x73d]
   13dcc:	a8 b3 03 d1	sub	x8, x29, #0xec
   13dd0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13dd4:	08 d9 00 51	sub	w8, w8, #0x36
   13dd8:	68 fa 1c 39	strb	w8, [x19, #0x73e]
   13ddc:	a8 63 08 d1	sub	x8, x29, #0x218
   13de0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13de4:	68 fe 1c 39	strb	w8, [x19, #0x73f]
   13de8:	a8 83 08 d1	sub	x8, x29, #0x220
   13dec:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13df0:	e8 03 28 2a	mvn	w8, w8
   13df4:	68 02 1d 39	strb	w8, [x19, #0x740]
   13df8:	a8 c3 08 d1	sub	x8, x29, #0x230
   13dfc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13e00:	e8 03 28 2a	mvn	w8, w8
   13e04:	68 06 1d 39	strb	w8, [x19, #0x741]
   13e08:	a8 0a 5d 39	ldrb	w8, [x21, #0x742]
   13e0c:	ab 03 80 52	mov	w11, #0x1d
   13e10:	08 01 0b 4a	eor	w8, w8, w11
   13e14:	68 0a 1d 39	strb	w8, [x19, #0x742]
   13e18:	a8 a3 08 d1	sub	x8, x29, #0x228
   13e1c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13e20:	08 e5 01 52	eor	w8, w8, #0x99999999
   13e24:	68 0e 1d 39	strb	w8, [x19, #0x743]
   13e28:	a8 12 5d 39	ldrb	w8, [x21, #0x744]
   13e2c:	09 14 80 52	mov	w9, #0xa0
   13e30:	08 01 09 4a	eor	w8, w8, w9
   13e34:	68 12 1d 39	strb	w8, [x19, #0x744]
   13e38:	28 03 80 52	mov	w8, #0x19
   13e3c:	a9 93 08 d1	sub	x9, x29, #0x224
   13e40:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   13e44:	28 01 08 4a	eor	w8, w9, w8
   13e48:	68 16 1d 39	strb	w8, [x19, #0x745]
   13e4c:	a8 d3 08 d1	sub	x8, x29, #0x234
   13e50:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13e54:	68 1a 1d 39	strb	w8, [x19, #0x746]
   13e58:	a8 1e 5d 39	ldrb	w8, [x21, #0x747]
   13e5c:	08 01 02 4a	eor	w8, w8, w2
   13e60:	68 1e 1d 39	strb	w8, [x19, #0x747]
   13e64:	a8 e3 08 d1	sub	x8, x29, #0x238
   13e68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13e6c:	08 01 10 4a	eor	w8, w8, w16
   13e70:	68 22 1d 39	strb	w8, [x19, #0x748]
   13e74:	a8 f3 08 d1	sub	x8, x29, #0x23c
   13e78:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13e7c:	68 26 1d 39	strb	w8, [x19, #0x749]
   13e80:	a8 2a 5d 39	ldrb	w8, [x21, #0x74a]
   13e84:	08 79 1e 52	eor	w8, w8, #0xfffffffd
   13e88:	68 2a 1d 39	strb	w8, [x19, #0x74a]
   13e8c:	a8 2e 5d 39	ldrb	w8, [x21, #0x74b]
   13e90:	08 79 1b 52	eor	w8, w8, #0xffffffef
   13e94:	68 2e 1d 39	strb	w8, [x19, #0x74b]
   13e98:	a8 b3 08 d1	sub	x8, x29, #0x22c
   13e9c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ea0:	68 32 1d 39	strb	w8, [x19, #0x74c]
   13ea4:	a8 03 09 d1	sub	x8, x29, #0x240
   13ea8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13eac:	08 05 1b 52	eor	w8, w8, #0x60
   13eb0:	68 36 1d 39	strb	w8, [x19, #0x74d]
   13eb4:	a8 13 04 d1	sub	x8, x29, #0x104
   13eb8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ebc:	08 4d 01 51	sub	w8, w8, #0x53
   13ec0:	68 3a 1d 39	strb	w8, [x19, #0x74e]
   13ec4:	a8 23 04 d1	sub	x8, x29, #0x108
   13ec8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13ecc:	08 7d 01 11	add	w8, w8, #0x5f
   13ed0:	68 3e 1d 39	strb	w8, [x19, #0x74f]
   13ed4:	a8 42 5d 39	ldrb	w8, [x21, #0x750]
   13ed8:	08 01 06 4a	eor	w8, w8, w6
   13edc:	68 42 1d 39	strb	w8, [x19, #0x750]
   13ee0:	a8 46 5d 39	ldrb	w8, [x21, #0x751]
   13ee4:	29 0d 80 52	mov	w9, #0x69
   13ee8:	08 01 09 4a	eor	w8, w8, w9
   13eec:	68 46 1d 39	strb	w8, [x19, #0x751]
   13ef0:	88 14 80 52	mov	w8, #0xa4
   13ef4:	b0 73 08 d1	sub	x16, x29, #0x21c
   13ef8:	10 02 50 b8	ldur	w16, [x16, #-0x100]
   13efc:	08 02 08 4a	eor	w8, w16, w8
   13f00:	68 4a 1d 39	strb	w8, [x19, #0x752]
   13f04:	a8 4e 5d 39	ldrb	w8, [x21, #0x753]
   13f08:	08 09 00 52	eor	w8, w8, #0x7
   13f0c:	68 4e 1d 39	strb	w8, [x19, #0x753]
   13f10:	a8 52 5d 39	ldrb	w8, [x21, #0x754]
   13f14:	08 01 1f 52	eor	w8, w8, #0x2
   13f18:	68 52 1d 39	strb	w8, [x19, #0x754]
   13f1c:	e8 03 3b 2a	mvn	w8, w27
   13f20:	68 56 1d 39	strb	w8, [x19, #0x755]
   13f24:	a8 5a 5d 39	ldrb	w8, [x21, #0x756]
   13f28:	08 01 09 4a	eor	w8, w8, w9
   13f2c:	68 5a 1d 39	strb	w8, [x19, #0x756]
   13f30:	a8 d3 07 d1	sub	x8, x29, #0x1f4
   13f34:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f38:	68 5e 1d 39	strb	w8, [x19, #0x757]
   13f3c:	a8 13 08 d1	sub	x8, x29, #0x204
   13f40:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f44:	e8 03 28 2a	mvn	w8, w8
   13f48:	68 62 1d 39	strb	w8, [x19, #0x758]
   13f4c:	a8 66 5d 39	ldrb	w8, [x21, #0x759]
   13f50:	d0 0b 80 52	mov	w16, #0x5e
   13f54:	08 01 10 4a	eor	w8, w8, w16
   13f58:	68 66 1d 39	strb	w8, [x19, #0x759]
   13f5c:	a8 f3 07 d1	sub	x8, x29, #0x1fc
   13f60:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f64:	08 05 1c 52	eor	w8, w8, #0x30
   13f68:	68 6a 1d 39	strb	w8, [x19, #0x75a]
   13f6c:	a8 23 08 d1	sub	x8, x29, #0x208
   13f70:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f74:	08 01 0a 4a	eor	w8, w8, w10
   13f78:	68 6e 1d 39	strb	w8, [x19, #0x75b]
   13f7c:	a8 72 5d 39	ldrb	w8, [x21, #0x75c]
   13f80:	08 79 1e 52	eor	w8, w8, #0xfffffffd
   13f84:	68 72 1d 39	strb	w8, [x19, #0x75c]
   13f88:	a8 33 08 d1	sub	x8, x29, #0x20c
   13f8c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f90:	68 76 1d 39	strb	w8, [x19, #0x75d]
   13f94:	a8 43 04 d1	sub	x8, x29, #0x110
   13f98:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13f9c:	08 4d 00 51	sub	w8, w8, #0x13
   13fa0:	68 7a 1d 39	strb	w8, [x19, #0x75e]
   13fa4:	a8 7e 5d 39	ldrb	w8, [x21, #0x75f]
   13fa8:	08 01 0d 4a	eor	w8, w8, w13
   13fac:	68 7e 1d 39	strb	w8, [x19, #0x75f]
   13fb0:	28 0a 80 52	mov	w8, #0x51
   13fb4:	a9 03 08 d1	sub	x9, x29, #0x200
   13fb8:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   13fbc:	28 01 08 4a	eor	w8, w9, w8
   13fc0:	68 82 1d 39	strb	w8, [x19, #0x760]
   13fc4:	a8 86 5d 39	ldrb	w8, [x21, #0x761]
   13fc8:	08 01 17 4a	eor	w8, w8, w23
   13fcc:	68 86 1d 39	strb	w8, [x19, #0x761]
   13fd0:	a8 e3 07 d1	sub	x8, x29, #0x1f8
   13fd4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   13fd8:	68 8a 1d 39	strb	w8, [x19, #0x762]
   13fdc:	a8 8e 5d 39	ldrb	w8, [x21, #0x763]
   13fe0:	89 1a 80 52	mov	w9, #0xd4
   13fe4:	08 01 09 4a	eor	w8, w8, w9
   13fe8:	68 8e 1d 39	strb	w8, [x19, #0x763]
   13fec:	a8 92 5d 39	ldrb	w8, [x21, #0x764]
   13ff0:	08 75 1b 52	eor	w8, w8, #0xffffffe7
   13ff4:	68 92 1d 39	strb	w8, [x19, #0x764]
   13ff8:	a8 96 5d 39	ldrb	w8, [x21, #0x765]
   13ffc:	68 96 1d 39	strb	w8, [x19, #0x765]
   14000:	a8 c3 07 d1	sub	x8, x29, #0x1f0
   14004:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14008:	e8 03 28 2a	mvn	w8, w8
   1400c:	68 9a 1d 39	strb	w8, [x19, #0x766]
   14010:	a8 63 04 d1	sub	x8, x29, #0x118
   14014:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14018:	08 d1 01 11	add	w8, w8, #0x74
   1401c:	68 9e 1d 39	strb	w8, [x19, #0x767]
   14020:	a8 a2 5d 39	ldrb	w8, [x21, #0x768]
   14024:	08 01 11 4a	eor	w8, w8, w17
   14028:	68 a2 1d 39	strb	w8, [x19, #0x768]
   1402c:	a8 83 04 d1	sub	x8, x29, #0x120
   14030:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14034:	08 b9 00 51	sub	w8, w8, #0x2e
   14038:	68 a6 1d 39	strb	w8, [x19, #0x769]
   1403c:	a8 aa 5d 39	ldrb	w8, [x21, #0x76a]
   14040:	ea 1a 80 52	mov	w10, #0xd7
   14044:	08 01 0a 4a	eor	w8, w8, w10
   14048:	fc 1a 80 52	mov	w28, #0xd7
   1404c:	68 aa 1d 39	strb	w8, [x19, #0x76a]
   14050:	a8 ae 5d 39	ldrb	w8, [x21, #0x76b]
   14054:	08 01 0c 4a	eor	w8, w8, w12
   14058:	68 ae 1d 39	strb	w8, [x19, #0x76b]
   1405c:	a8 b2 5d 39	ldrb	w8, [x21, #0x76c]
   14060:	08 11 1f 52	eor	w8, w8, #0x3e
   14064:	68 b2 1d 39	strb	w8, [x19, #0x76c]
   14068:	8d 1b 80 52	mov	w13, #0xdc
   1406c:	a8 a3 07 d1	sub	x8, x29, #0x1e8
   14070:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14074:	08 01 0d 4a	eor	w8, w8, w13
   14078:	68 b6 1d 39	strb	w8, [x19, #0x76d]
   1407c:	a8 a3 04 d1	sub	x8, x29, #0x128
   14080:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14084:	08 95 00 51	sub	w8, w8, #0x25
   14088:	68 ba 1d 39	strb	w8, [x19, #0x76e]
   1408c:	a8 b3 07 d1	sub	x8, x29, #0x1ec
   14090:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14094:	e8 03 28 2a	mvn	w8, w8
   14098:	68 be 1d 39	strb	w8, [x19, #0x76f]
   1409c:	a8 c2 5d 39	ldrb	w8, [x21, #0x770]
   140a0:	08 6d 1a 52	eor	w8, w8, #0xffffffc3
   140a4:	68 c2 1d 39	strb	w8, [x19, #0x770]
   140a8:	a8 b3 04 d1	sub	x8, x29, #0x12c
   140ac:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   140b0:	08 05 01 11	add	w8, w8, #0x41
   140b4:	68 c6 1d 39	strb	w8, [x19, #0x771]
   140b8:	a8 93 07 d1	sub	x8, x29, #0x1e4
   140bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   140c0:	e8 03 28 2a	mvn	w8, w8
   140c4:	68 ca 1d 39	strb	w8, [x19, #0x772]
   140c8:	a8 ce 5d 39	ldrb	w8, [x21, #0x773]
   140cc:	2a 0f 80 52	mov	w10, #0x79
   140d0:	08 01 0a 4a	eor	w8, w8, w10
   140d4:	68 ce 1d 39	strb	w8, [x19, #0x773]
   140d8:	a8 d2 5d 39	ldrb	w8, [x21, #0x774]
   140dc:	cc 0e 80 52	mov	w12, #0x76
   140e0:	08 01 0c 4a	eor	w8, w8, w12
   140e4:	68 d2 1d 39	strb	w8, [x19, #0x774]
   140e8:	28 16 80 52	mov	w8, #0xb1
   140ec:	ac 73 07 d1	sub	x12, x29, #0x1dc
   140f0:	8c 01 50 b8	ldur	w12, [x12, #-0x100]
   140f4:	88 01 08 4a	eor	w8, w12, w8
   140f8:	68 d6 1d 39	strb	w8, [x19, #0x775]
   140fc:	48 13 80 52	mov	w8, #0x9a
   14100:	ac 83 07 d1	sub	x12, x29, #0x1e0
   14104:	8c 01 50 b8	ldur	w12, [x12, #-0x100]
   14108:	88 01 08 4a	eor	w8, w12, w8
   1410c:	68 da 1d 39	strb	w8, [x19, #0x776]
   14110:	a8 de 5d 39	ldrb	w8, [x21, #0x777]
   14114:	31 05 80 52	mov	w17, #0x29
   14118:	08 01 11 4a	eor	w8, w8, w17
   1411c:	68 de 1d 39	strb	w8, [x19, #0x777]
   14120:	a8 e2 5d 39	ldrb	w8, [x21, #0x778]
   14124:	08 01 0b 4a	eor	w8, w8, w11
   14128:	68 e2 1d 39	strb	w8, [x19, #0x778]
   1412c:	c8 02 80 52	mov	w8, #0x16
   14130:	ab 63 07 d1	sub	x11, x29, #0x1d8
   14134:	6b 01 50 b8	ldur	w11, [x11, #-0x100]
   14138:	68 01 08 4a	eor	w8, w11, w8
   1413c:	68 e6 1d 39	strb	w8, [x19, #0x779]
   14140:	a8 ea 5d 39	ldrb	w8, [x21, #0x77a]
   14144:	08 0d 00 52	eor	w8, w8, #0xf
   14148:	68 ea 1d 39	strb	w8, [x19, #0x77a]
   1414c:	a8 ee 5d 39	ldrb	w8, [x21, #0x77b]
   14150:	08 75 19 52	eor	w8, w8, #0xffffff9f
   14154:	68 ee 1d 39	strb	w8, [x19, #0x77b]
   14158:	a8 f2 5d 39	ldrb	w8, [x21, #0x77c]
   1415c:	4b 0b 80 52	mov	w11, #0x5a
   14160:	08 01 0b 4a	eor	w8, w8, w11
   14164:	68 f2 1d 39	strb	w8, [x19, #0x77c]
   14168:	a8 43 07 d1	sub	x8, x29, #0x1d0
   1416c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14170:	e8 03 28 2a	mvn	w8, w8
   14174:	68 f6 1d 39	strb	w8, [x19, #0x77d]
   14178:	a8 fa 5d 39	ldrb	w8, [x21, #0x77e]
   1417c:	08 11 1d 52	eor	w8, w8, #0xf8
   14180:	68 fa 1d 39	strb	w8, [x19, #0x77e]
   14184:	a8 23 07 d1	sub	x8, x29, #0x1c8
   14188:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1418c:	08 15 1e 52	eor	w8, w8, #0xfc
   14190:	68 fe 1d 39	strb	w8, [x19, #0x77f]
   14194:	a8 d3 04 d1	sub	x8, x29, #0x134
   14198:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1419c:	08 e5 01 11	add	w8, w8, #0x79
   141a0:	68 02 1e 39	strb	w8, [x19, #0x780]
   141a4:	a8 33 07 d1	sub	x8, x29, #0x1cc
   141a8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   141ac:	68 06 1e 39	strb	w8, [x19, #0x781]
   141b0:	a8 0a 5e 39	ldrb	w8, [x21, #0x782]
   141b4:	08 75 1c 52	eor	w8, w8, #0xfffffff3
   141b8:	68 0a 1e 39	strb	w8, [x19, #0x782]
   141bc:	a8 03 05 d1	sub	x8, x29, #0x140
   141c0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   141c4:	08 b9 01 51	sub	w8, w8, #0x6e
   141c8:	68 0e 1e 39	strb	w8, [x19, #0x783]
   141cc:	a8 f3 06 d1	sub	x8, x29, #0x1bc
   141d0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   141d4:	68 12 1e 39	strb	w8, [x19, #0x784]
   141d8:	a8 23 05 d1	sub	x8, x29, #0x148
   141dc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   141e0:	08 c5 00 51	sub	w8, w8, #0x31
   141e4:	68 16 1e 39	strb	w8, [x19, #0x785]
   141e8:	a8 1a 5e 39	ldrb	w8, [x21, #0x786]
   141ec:	8b 05 80 52	mov	w11, #0x2c
   141f0:	08 01 0b 4a	eor	w8, w8, w11
   141f4:	68 1a 1e 39	strb	w8, [x19, #0x786]
   141f8:	88 0a 80 52	mov	w8, #0x54
   141fc:	ab c3 06 d1	sub	x11, x29, #0x1b0
   14200:	6b 01 50 b8	ldur	w11, [x11, #-0x100]
   14204:	68 01 08 4a	eor	w8, w11, w8
   14208:	68 1e 1e 39	strb	w8, [x19, #0x787]
   1420c:	a8 22 5e 39	ldrb	w8, [x21, #0x788]
   14210:	08 09 1c 52	eor	w8, w8, #0x70
   14214:	68 22 1e 39	strb	w8, [x19, #0x788]
   14218:	a8 b3 06 d1	sub	x8, x29, #0x1ac
   1421c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14220:	68 26 1e 39	strb	w8, [x19, #0x789]
   14224:	a8 43 05 d1	sub	x8, x29, #0x150
   14228:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1422c:	08 19 00 51	sub	w8, w8, #0x6
   14230:	68 2a 1e 39	strb	w8, [x19, #0x78a]
   14234:	4b 18 80 52	mov	w11, #0xc2
   14238:	a8 d3 06 d1	sub	x8, x29, #0x1b4
   1423c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14240:	08 01 0b 4a	eor	w8, w8, w11
   14244:	68 2e 1e 39	strb	w8, [x19, #0x78b]
   14248:	a8 03 07 d1	sub	x8, x29, #0x1c0
   1424c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14250:	68 32 1e 39	strb	w8, [x19, #0x78c]
   14254:	a8 36 5e 39	ldrb	w8, [x21, #0x78d]
   14258:	08 01 09 4a	eor	w8, w8, w9
   1425c:	68 36 1e 39	strb	w8, [x19, #0x78d]
   14260:	a8 53 05 d1	sub	x8, x29, #0x154
   14264:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14268:	08 95 01 51	sub	w8, w8, #0x65
   1426c:	68 3a 1e 39	strb	w8, [x19, #0x78e]
   14270:	a8 e3 06 d1	sub	x8, x29, #0x1b8
   14274:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14278:	08 e1 03 52	eor	w8, w8, #0x22222222
   1427c:	68 3e 1e 39	strb	w8, [x19, #0x78f]
   14280:	a8 73 05 d1	sub	x8, x29, #0x15c
   14284:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14288:	08 11 00 51	sub	w8, w8, #0x4
   1428c:	68 42 1e 39	strb	w8, [x19, #0x790]
   14290:	a8 46 5e 39	ldrb	w8, [x21, #0x791]
   14294:	69 08 80 52	mov	w9, #0x43
   14298:	08 01 09 4a	eor	w8, w8, w9
   1429c:	68 46 1e 39	strb	w8, [x19, #0x791]
   142a0:	a8 4a 5e 39	ldrb	w8, [x21, #0x792]
   142a4:	08 75 1b 52	eor	w8, w8, #0xffffffe7
   142a8:	68 4a 1e 39	strb	w8, [x19, #0x792]
   142ac:	a8 4e 5e 39	ldrb	w8, [x21, #0x793]
   142b0:	08 01 1e 4a	eor	w8, w8, w30
   142b4:	68 4e 1e 39	strb	w8, [x19, #0x793]
   142b8:	a8 93 06 d1	sub	x8, x29, #0x1a4
   142bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   142c0:	68 52 1e 39	strb	w8, [x19, #0x794]
   142c4:	a8 83 05 d1	sub	x8, x29, #0x160
   142c8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   142cc:	08 91 01 51	sub	w8, w8, #0x64
   142d0:	68 56 1e 39	strb	w8, [x19, #0x795]
   142d4:	a8 5a 5e 39	ldrb	w8, [x21, #0x796]
   142d8:	08 15 1f 52	eor	w8, w8, #0x7e
   142dc:	68 5a 1e 39	strb	w8, [x19, #0x796]
   142e0:	a8 83 06 d1	sub	x8, x29, #0x1a0
   142e4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   142e8:	68 5e 1e 39	strb	w8, [x19, #0x797]
   142ec:	a8 93 05 d1	sub	x8, x29, #0x164
   142f0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   142f4:	08 a9 00 51	sub	w8, w8, #0x2a
   142f8:	68 62 1e 39	strb	w8, [x19, #0x798]
   142fc:	a8 a3 06 d1	sub	x8, x29, #0x1a8
   14300:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14304:	e8 03 28 2a	mvn	w8, w8
   14308:	68 66 1e 39	strb	w8, [x19, #0x799]
   1430c:	a8 6a 5e 39	ldrb	w8, [x21, #0x79a]
   14310:	08 01 0d 4a	eor	w8, w8, w13
   14314:	68 6a 1e 39	strb	w8, [x19, #0x79a]
   14318:	a8 6e 5e 39	ldrb	w8, [x21, #0x79b]
   1431c:	08 01 1d 52	eor	w8, w8, #0x8
   14320:	68 6e 1e 39	strb	w8, [x19, #0x79b]
   14324:	a8 73 06 d1	sub	x8, x29, #0x19c
   14328:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1432c:	68 72 1e 39	strb	w8, [x19, #0x79c]
   14330:	a8 76 5e 39	ldrb	w8, [x21, #0x79d]
   14334:	2d 07 80 52	mov	w13, #0x39
   14338:	08 01 0d 4a	eor	w8, w8, w13
   1433c:	68 76 1e 39	strb	w8, [x19, #0x79d]
   14340:	a8 7a 5e 39	ldrb	w8, [x21, #0x79e]
   14344:	08 6d 19 52	eor	w8, w8, #0xffffff87
   14348:	68 7a 1e 39	strb	w8, [x19, #0x79e]
   1434c:	a8 7e 5e 39	ldrb	w8, [x21, #0x79f]
   14350:	08 71 1a 52	eor	w8, w8, #0xffffffc7
   14354:	68 7e 1e 39	strb	w8, [x19, #0x79f]
   14358:	a8 a3 05 d1	sub	x8, x29, #0x168
   1435c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14360:	08 85 01 11	add	w8, w8, #0x61
   14364:	68 82 1e 39	strb	w8, [x19, #0x7a0]
   14368:	a8 b3 05 d1	sub	x8, x29, #0x16c
   1436c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14370:	08 59 00 51	sub	w8, w8, #0x16
   14374:	68 86 1e 39	strb	w8, [x19, #0x7a1]
   14378:	a8 53 06 d1	sub	x8, x29, #0x194
   1437c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14380:	e8 03 28 2a	mvn	w8, w8
   14384:	68 8a 1e 39	strb	w8, [x19, #0x7a2]
   14388:	a8 63 06 d1	sub	x8, x29, #0x198
   1438c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14390:	68 8e 1e 39	strb	w8, [x19, #0x7a3]
   14394:	a8 92 5e 39	ldrb	w8, [x21, #0x7a4]
   14398:	08 01 0f 4a	eor	w8, w8, w15
   1439c:	68 92 1e 39	strb	w8, [x19, #0x7a4]
   143a0:	a8 c3 05 d1	sub	x8, x29, #0x170
   143a4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   143a8:	08 89 00 51	sub	w8, w8, #0x22
   143ac:	68 96 1e 39	strb	w8, [x19, #0x7a5]
   143b0:	a8 9a 5e 39	ldrb	w8, [x21, #0x7a6]
   143b4:	2c 09 80 52	mov	w12, #0x49
   143b8:	08 01 0c 4a	eor	w8, w8, w12
   143bc:	68 9a 1e 39	strb	w8, [x19, #0x7a6]
   143c0:	a8 43 06 d1	sub	x8, x29, #0x190
   143c4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   143c8:	08 0d 00 52	eor	w8, w8, #0xf
   143cc:	68 9e 1e 39	strb	w8, [x19, #0x7a7]
   143d0:	a8 a2 5e 39	ldrb	w8, [x21, #0x7a8]
   143d4:	08 01 0b 4a	eor	w8, w8, w11
   143d8:	43 18 80 52	mov	w3, #0xc2
   143dc:	68 a2 1e 39	strb	w8, [x19, #0x7a8]
   143e0:	a8 a6 5e 39	ldrb	w8, [x21, #0x7a9]
   143e4:	08 19 1f 52	eor	w8, w8, #0xfe
   143e8:	68 a6 1e 39	strb	w8, [x19, #0x7a9]
   143ec:	a8 aa 5e 39	ldrb	w8, [x21, #0x7aa]
   143f0:	08 6d 1a 52	eor	w8, w8, #0xffffffc3
   143f4:	68 aa 1e 39	strb	w8, [x19, #0x7aa]
   143f8:	a8 33 06 d1	sub	x8, x29, #0x18c
   143fc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14400:	e8 03 28 2a	mvn	w8, w8
   14404:	68 ae 1e 39	strb	w8, [x19, #0x7ab]
   14408:	a8 b2 5e 39	ldrb	w8, [x21, #0x7ac]
   1440c:	af 12 80 52	mov	w15, #0x95
   14410:	08 01 0f 4a	eor	w8, w8, w15
   14414:	68 b2 1e 39	strb	w8, [x19, #0x7ac]
   14418:	a8 b6 5e 39	ldrb	w8, [x21, #0x7ad]
   1441c:	09 1d 80 52	mov	w9, #0xe8
   14420:	08 01 09 4a	eor	w8, w8, w9
   14424:	68 b6 1e 39	strb	w8, [x19, #0x7ad]
   14428:	a8 ba 5e 39	ldrb	w8, [x21, #0x7ae]
   1442c:	08 01 0a 4a	eor	w8, w8, w10
   14430:	68 ba 1e 39	strb	w8, [x19, #0x7ae]
   14434:	a8 be 5e 39	ldrb	w8, [x21, #0x7af]
   14438:	08 01 10 4a	eor	w8, w8, w16
   1443c:	cb 0b 80 52	mov	w11, #0x5e
   14440:	68 be 1e 39	strb	w8, [x19, #0x7af]
   14444:	a8 23 06 d1	sub	x8, x29, #0x188
   14448:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1444c:	68 c2 1e 39	strb	w8, [x19, #0x7b0]
   14450:	a8 f3 05 d1	sub	x8, x29, #0x17c
   14454:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14458:	08 0d 00 51	sub	w8, w8, #0x3
   1445c:	68 c6 1e 39	strb	w8, [x19, #0x7b1]
   14460:	a8 03 06 d1	sub	x8, x29, #0x180
   14464:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   14468:	08 51 01 11	add	w8, w8, #0x54
   1446c:	68 ca 1e 39	strb	w8, [x19, #0x7b2]
   14470:	a8 b6 62 39	ldrb	w8, [x21, #0x8ad]
   14474:	a9 d3 00 d1	sub	x9, x29, #0x34
   14478:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1447c:	a8 ca 62 39	ldrb	w8, [x21, #0x8b2]
   14480:	09 09 1c 12	and	w9, w8, #0x70
   14484:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14488:	a9 13 01 d1	sub	x9, x29, #0x44
   1448c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14490:	a8 d2 62 39	ldrb	w8, [x21, #0x8b4]
   14494:	09 01 1e 12	and	w9, w8, #0x4
   14498:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1449c:	a9 33 01 d1	sub	x9, x29, #0x4c
   144a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   144a4:	a8 02 63 39	ldrb	w8, [x21, #0x8c0]
   144a8:	09 e9 03 12	and	w9, w8, #0xeeeeeeee
   144ac:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   144b0:	a9 43 01 d1	sub	x9, x29, #0x50
   144b4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   144b8:	a8 32 63 39	ldrb	w8, [x21, #0x8cc]
   144bc:	09 01 18 0a	and	w9, w8, w24
   144c0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   144c4:	a9 83 01 d1	sub	x9, x29, #0x60
   144c8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   144cc:	a8 46 63 39	ldrb	w8, [x21, #0x8d1]
   144d0:	0a 0d 80 52	mov	w10, #0x68
   144d4:	09 01 0a 0a	and	w9, w8, w10
   144d8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   144dc:	a9 a3 01 d1	sub	x9, x29, #0x68
   144e0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   144e4:	a8 52 63 39	ldrb	w8, [x21, #0x8d4]
   144e8:	29 0b 80 52	mov	w9, #0x59
   144ec:	09 01 09 0a	and	w9, w8, w9
   144f0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   144f4:	a9 d3 01 d1	sub	x9, x29, #0x74
   144f8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   144fc:	a8 ce 63 39	ldrb	w8, [x21, #0x8f3]
   14500:	09 01 0c 0a	and	w9, w8, w12
   14504:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14508:	a9 f3 01 d1	sub	x9, x29, #0x7c
   1450c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14510:	a8 da 63 39	ldrb	w8, [x21, #0x8f6]
   14514:	09 05 1f 12	and	w9, w8, #0x6
   14518:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1451c:	a9 03 02 d1	sub	x9, x29, #0x80
   14520:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14524:	a8 ea 63 39	ldrb	w8, [x21, #0x8fa]
   14528:	09 15 00 12	and	w9, w8, #0x3f
   1452c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14530:	a9 13 02 d1	sub	x9, x29, #0x84
   14534:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14538:	a8 ee 63 39	ldrb	w8, [x21, #0x8fb]
   1453c:	09 01 0d 0a	and	w9, w8, w13
   14540:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14544:	a9 33 02 d1	sub	x9, x29, #0x8c
   14548:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1454c:	a8 fa 63 39	ldrb	w8, [x21, #0x8fe]
   14550:	49 0c 80 52	mov	w9, #0x62
   14554:	09 01 09 0a	and	w9, w8, w9
   14558:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1455c:	a9 43 02 d1	sub	x9, x29, #0x90
   14560:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14564:	a8 1e 64 39	ldrb	w8, [x21, #0x907]
   14568:	09 79 1c 12	and	w9, w8, #0xfffffff7
   1456c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14570:	a9 63 02 d1	sub	x9, x29, #0x98
   14574:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14578:	a8 46 64 39	ldrb	w8, [x21, #0x911]
   1457c:	09 e9 02 12	and	w9, w8, #0xdddddddd
   14580:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14584:	a9 83 02 d1	sub	x9, x29, #0xa0
   14588:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1458c:	a8 4a 64 39	ldrb	w8, [x21, #0x912]
   14590:	09 11 00 12	and	w9, w8, #0x1f
   14594:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14598:	a9 b3 02 d1	sub	x9, x29, #0xac
   1459c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   145a0:	a8 aa 64 39	ldrb	w8, [x21, #0x92a]
   145a4:	09 01 0a 0a	and	w9, w8, w10
   145a8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   145ac:	a9 d3 02 d1	sub	x9, x29, #0xb4
   145b0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   145b4:	a8 c6 64 39	ldrb	w8, [x21, #0x931]
   145b8:	8a 0a 80 52	mov	w10, #0x54
   145bc:	09 01 0a 0a	and	w9, w8, w10
   145c0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   145c4:	a9 f3 02 d1	sub	x9, x29, #0xbc
   145c8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   145cc:	a8 ce 64 39	ldrb	w8, [x21, #0x933]
   145d0:	09 e9 02 12	and	w9, w8, #0xdddddddd
   145d4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   145d8:	a9 13 03 d1	sub	x9, x29, #0xc4
   145dc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   145e0:	a8 e6 64 39	ldrb	w8, [x21, #0x939]
   145e4:	09 79 1a 12	and	w9, w8, #0xffffffdf
   145e8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   145ec:	a9 43 03 d1	sub	x9, x29, #0xd0
   145f0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   145f4:	a8 f6 64 39	ldrb	w8, [x21, #0x93d]
   145f8:	09 01 00 0a	and	w9, w8, w0
   145fc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14600:	a9 53 03 d1	sub	x9, x29, #0xd4
   14604:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14608:	a8 0a 65 39	ldrb	w8, [x21, #0x942]
   1460c:	09 01 0b 0a	and	w9, w8, w11
   14610:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14614:	a9 73 03 d1	sub	x9, x29, #0xdc
   14618:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1461c:	a8 12 65 39	ldrb	w8, [x21, #0x944]
   14620:	09 e5 00 12	and	w9, w8, #0x33333333
   14624:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14628:	a9 b3 03 d1	sub	x9, x29, #0xec
   1462c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14630:	a8 1a 65 39	ldrb	w8, [x21, #0x946]
   14634:	09 05 1c 12	and	w9, w8, #0x30
   14638:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1463c:	a9 13 04 d1	sub	x9, x29, #0x104
   14640:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14644:	a8 2a 65 39	ldrb	w8, [x21, #0x94a]
   14648:	09 09 00 12	and	w9, w8, #0x7
   1464c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14650:	a9 23 04 d1	sub	x9, x29, #0x108
   14654:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14658:	a8 36 65 39	ldrb	w8, [x21, #0x94d]
   1465c:	09 05 1f 12	and	w9, w8, #0x6
   14660:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14664:	a9 43 04 d1	sub	x9, x29, #0x110
   14668:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1466c:	a8 3a 65 39	ldrb	w8, [x21, #0x94e]
   14670:	09 01 0a 0a	and	w9, w8, w10
   14674:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14678:	a9 63 04 d1	sub	x9, x29, #0x118
   1467c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14680:	a8 52 65 39	ldrb	w8, [x21, #0x954]
   14684:	09 01 0e 0a	and	w9, w8, w14
   14688:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1468c:	a9 83 04 d1	sub	x9, x29, #0x120
   14690:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14694:	a8 82 65 39	ldrb	w8, [x21, #0x960]
   14698:	09 e9 03 12	and	w9, w8, #0xeeeeeeee
   1469c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   146a0:	a9 a3 04 d1	sub	x9, x29, #0x128
   146a4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   146a8:	a8 92 65 39	ldrb	w8, [x21, #0x964]
   146ac:	aa 01 80 52	mov	w10, #0xd
   146b0:	09 01 0a 0a	and	w9, w8, w10
   146b4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   146b8:	a9 b3 04 d1	sub	x9, x29, #0x12c
   146bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   146c0:	a8 96 65 39	ldrb	w8, [x21, #0x965]
   146c4:	09 01 1c 12	and	w9, w8, #0x10
   146c8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   146cc:	a9 d3 04 d1	sub	x9, x29, #0x134
   146d0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   146d4:	a8 9a 65 39	ldrb	w8, [x21, #0x966]
   146d8:	50 0e 80 52	mov	w16, #0x72
   146dc:	09 01 10 0a	and	w9, w8, w16
   146e0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   146e4:	a9 03 05 d1	sub	x9, x29, #0x140
   146e8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   146ec:	a8 a2 65 39	ldrb	w8, [x21, #0x968]
   146f0:	09 01 05 0a	and	w9, w8, w5
   146f4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   146f8:	a9 23 05 d1	sub	x9, x29, #0x148
   146fc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14700:	a8 c6 65 39	ldrb	w8, [x21, #0x971]
   14704:	09 05 00 12	and	w9, w8, #0x3
   14708:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1470c:	a9 43 05 d1	sub	x9, x29, #0x150
   14710:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14714:	a8 d2 65 39	ldrb	w8, [x21, #0x974]
   14718:	09 f1 01 12	and	w9, w8, #0xaaaaaaaa
   1471c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14720:	a9 53 05 d1	sub	x9, x29, #0x154
   14724:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14728:	a8 ee 65 39	ldrb	w8, [x21, #0x97b]
   1472c:	09 01 0a 0a	and	w9, w8, w10
   14730:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14734:	a9 73 05 d1	sub	x9, x29, #0x15c
   14738:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1473c:	a8 f2 65 39	ldrb	w8, [x21, #0x97c]
   14740:	09 01 1e 12	and	w9, w8, #0x4
   14744:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14748:	a9 83 05 d1	sub	x9, x29, #0x160
   1474c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14750:	a8 f6 65 39	ldrb	w8, [x21, #0x97d]
   14754:	09 0d 00 12	and	w9, w8, #0xf
   14758:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1475c:	a9 93 05 d1	sub	x9, x29, #0x164
   14760:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14764:	a8 fe 65 39	ldrb	w8, [x21, #0x97f]
   14768:	09 e9 03 12	and	w9, w8, #0xeeeeeeee
   1476c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14770:	a9 a3 05 d1	sub	x9, x29, #0x168
   14774:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14778:	a8 06 66 39	ldrb	w8, [x21, #0x981]
   1477c:	09 05 00 12	and	w9, w8, #0x3
   14780:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   14784:	a9 b3 05 d1	sub	x9, x29, #0x16c
   14788:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1478c:	a8 46 66 39	ldrb	w8, [x21, #0x991]
   14790:	e7 04 80 52	mov	w7, #0x27
   14794:	09 01 07 0a	and	w9, w8, w7
   14798:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1479c:	a9 f3 05 d1	sub	x9, x29, #0x17c
   147a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   147a4:	a8 56 66 39	ldrb	w8, [x21, #0x995]
   147a8:	09 e1 03 12	and	w9, w8, #0x22222222
   147ac:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   147b0:	a9 23 06 d1	sub	x9, x29, #0x188
   147b4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   147b8:	a8 7e 66 39	ldrb	w8, [x21, #0x99f]
   147bc:	09 75 1c 12	and	w9, w8, #0xfffffff3
   147c0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   147c4:	a9 63 06 d1	sub	x9, x29, #0x198
   147c8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   147cc:	a8 96 5f 39	ldrb	w8, [x21, #0x7e5]
   147d0:	e9 03 28 2a	mvn	w9, w8
   147d4:	11 0d 1c 12	and	w17, w8, #0xf0
   147d8:	31 0d 00 33	bfxil	w17, w9, #0, #4
   147dc:	aa e2 5f 39	ldrb	w10, [x21, #0x7f8]
   147e0:	08 18 80 52	mov	w8, #0xc0
   147e4:	00 01 2a 0a	bic	w0, w8, w10
   147e8:	40 15 00 33	bfxil	w0, w10, #0, #6
   147ec:	ab ea 5f 39	ldrb	w11, [x21, #0x7fa]
   147f0:	88 1f 80 52	mov	w8, #0xfc
   147f4:	02 01 2b 0a	bic	w2, w8, w11
   147f8:	62 05 00 33	bfxil	w2, w11, #0, #2
   147fc:	ab 4e 62 39	ldrb	w11, [x21, #0x893]
   14800:	e8 03 2b 2a	mvn	w8, w11
   14804:	68 11 00 33	bfxil	w8, w11, #0, #5
   14808:	a9 83 03 d1	sub	x9, x29, #0xe0
   1480c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14810:	ab aa 62 39	ldrb	w11, [x21, #0x8aa]
   14814:	08 1f 80 52	mov	w8, #0xf8
   14818:	08 01 2b 0a	bic	w8, w8, w11
   1481c:	68 09 00 33	bfxil	w8, w11, #0, #3
   14820:	a9 63 03 d1	sub	x9, x29, #0xd8
   14824:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14828:	ab da 5e 39	ldrb	w11, [x21, #0x7b6]
   1482c:	ec 03 2b 2a	mvn	w12, w11
   14830:	8c 71 1b 12	and	w12, w12, #0xffffffe3
   14834:	6b 09 1e 12	and	w11, w11, #0x1c
   14838:	85 01 0b 2a	orr	w5, w12, w11
   1483c:	ac fa 5e 39	ldrb	w12, [x21, #0x7be]
   14840:	8d 01 01 2a	orr	w13, w12, w1
   14844:	6c 00 2c 2a	orn	w12, w3, w12
   14848:	a6 01 0c 0a	and	w6, w13, w12
   1484c:	ad 06 5f 39	ldrb	w13, [x21, #0x7c1]
   14850:	ee 03 2d 2a	mvn	w14, w13
   14854:	ad 09 1d 12	and	w13, w13, #0x38
   14858:	ce 71 1a 12	and	w14, w14, #0xffffffc7
   1485c:	d4 01 0d 2a	orr	w20, w14, w13
   14860:	ae 12 5f 39	ldrb	w14, [x21, #0x7c4]
   14864:	cf 01 0f 2a	orr	w15, w14, w15
   14868:	48 0d 80 52	mov	w8, #0x6a
   1486c:	0e 01 2e 2a	orn	w14, w8, w14
   14870:	f9 01 0e 0a	and	w25, w15, w14
   14874:	ae 1a 5f 39	ldrb	w14, [x21, #0x7c6]
   14878:	10 02 2e 0a	bic	w16, w16, w14
   1487c:	a8 11 80 52	mov	w8, #0x8d
   14880:	ce 01 08 0a	and	w14, w14, w8
   14884:	1e 02 0e 2a	orr	w30, w16, w14
   14888:	ae 22 5f 39	ldrb	w14, [x21, #0x7c8]
   1488c:	08 06 80 52	mov	w8, #0x30
   14890:	10 01 2e 0a	bic	w16, w8, w14
   14894:	ce 75 1a 12	and	w14, w14, #0xffffffcf
   14898:	1b 02 0e 2a	orr	w27, w16, w14
   1489c:	ae 26 5f 39	ldrb	w14, [x21, #0x7c9]
   148a0:	29 09 80 52	mov	w9, #0x49
   148a4:	30 01 2e 0a	bic	w16, w9, w14
   148a8:	c8 16 80 52	mov	w8, #0xb6
   148ac:	ce 01 08 0a	and	w14, w14, w8
   148b0:	16 02 0e 2a	orr	w22, w16, w14
   148b4:	b0 36 5f 39	ldrb	w16, [x21, #0x7cd]
   148b8:	2a 1b 80 52	mov	w10, #0xd9
   148bc:	41 01 30 0a	bic	w1, w10, w16
   148c0:	ca 04 80 52	mov	w10, #0x26
   148c4:	10 02 0a 0a	and	w16, w16, w10
   148c8:	2a 00 10 2a	orr	w10, w1, w16
   148cc:	ab 93 09 d1	sub	x11, x29, #0x264
   148d0:	6a 01 10 b8	stur	w10, [x11, #-0x100]
   148d4:	b0 3a 5f 39	ldrb	w16, [x21, #0x7ce]
   148d8:	8b 16 80 52	mov	w11, #0xb4
   148dc:	61 01 30 0a	bic	w1, w11, w16
   148e0:	6a 09 80 52	mov	w10, #0x4b
   148e4:	10 02 0a 0a	and	w16, w16, w10
   148e8:	2c 00 10 2a	orr	w12, w1, w16
   148ec:	ad a3 08 d1	sub	x13, x29, #0x228
   148f0:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   148f4:	a1 4e 5f 39	ldrb	w1, [x21, #0x7d3]
   148f8:	0c 16 80 52	mov	w12, #0xb0
   148fc:	23 00 0c 0a	and	w3, w1, w12
   14900:	ec 09 80 52	mov	w12, #0x4f
   14904:	81 01 21 0a	bic	w1, w12, w1
   14908:	6c 00 01 2a	orr	w12, w3, w1
   1490c:	ad 63 0b d1	sub	x13, x29, #0x2d8
   14910:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   14914:	a1 52 5f 39	ldrb	w1, [x21, #0x7d4]
   14918:	e3 03 21 2a	mvn	w3, w1
   1491c:	63 f0 00 12	and	w3, w3, #0x55555555
   14920:	21 f0 01 12	and	w1, w1, #0xaaaaaaaa
   14924:	6c 00 01 2a	orr	w12, w3, w1
   14928:	ad d3 0a d1	sub	x13, x29, #0x2b4
   1492c:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   14930:	a1 5e 5f 39	ldrb	w1, [x21, #0x7d7]
   14934:	0c 19 80 52	mov	w12, #0xc8
   14938:	83 01 21 2a	orn	w3, w12, w1
   1493c:	ec 06 80 52	mov	w12, #0x37
   14940:	21 00 0c 2a	orr	w1, w1, w12
   14944:	6c 00 01 0a	and	w12, w3, w1
   14948:	ad 73 0b d1	sub	x13, x29, #0x2dc
   1494c:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   14950:	a1 66 5f 39	ldrb	w1, [x21, #0x7d9]
   14954:	e3 03 21 2a	mvn	w3, w1
   14958:	21 e4 03 12	and	w1, w1, #0x66666666
   1495c:	63 e4 01 12	and	w3, w3, #0x99999999
   14960:	2c 00 03 2a	orr	w12, w1, w3
   14964:	ad e3 0a d1	sub	x13, x29, #0x2b8
   14968:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   1496c:	a1 6a 5f 39	ldrb	w1, [x21, #0x7da]
   14970:	70 1b 80 52	mov	w16, #0xdb
   14974:	03 02 21 0a	bic	w3, w16, w1
   14978:	8c 04 80 52	mov	w12, #0x24
   1497c:	21 00 0c 0a	and	w1, w1, w12
   14980:	6c 00 01 2a	orr	w12, w3, w1
   14984:	ad 73 09 d1	sub	x13, x29, #0x25c
   14988:	ac 01 10 b8	stur	w12, [x13, #-0x100]
   1498c:	a1 6e 5f 39	ldrb	w1, [x21, #0x7db]
   14990:	ac 1e 80 52	mov	w12, #0xf5
   14994:	84 01 21 0a	bic	w4, w12, w1
   14998:	21 00 1a 0a	and	w1, w1, w26
   1499c:	83 00 01 2a	orr	w3, w4, w1
   149a0:	a4 7a 5f 39	ldrb	w4, [x21, #0x7de]
   149a4:	81 1d 80 52	mov	w1, #0xec
   149a8:	37 00 24 0a	bic	w23, w1, w4
   149ac:	6d 02 80 52	mov	w13, #0x13
   149b0:	84 00 0d 0a	and	w4, w4, w13
   149b4:	ec 02 04 2a	orr	w12, w23, w4
   149b8:	ae 73 08 d1	sub	x14, x29, #0x21c
   149bc:	cc 01 10 b8	stur	w12, [x14, #-0x100]
   149c0:	b7 a2 5f 39	ldrb	w23, [x21, #0x7e8]
   149c4:	18 01 37 0a	bic	w24, w8, w23
   149c8:	f7 02 09 0a	and	w23, w23, w9
   149cc:	08 03 17 2a	orr	w8, w24, w23
   149d0:	a9 43 0b d1	sub	x9, x29, #0x2d0
   149d4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   149d8:	b7 ae 5f 39	ldrb	w23, [x21, #0x7eb]
   149dc:	f8 03 37 2a	mvn	w24, w23
   149e0:	18 77 1d 12	and	w24, w24, #0xfffffff9
   149e4:	f7 06 1f 12	and	w23, w23, #0x6
   149e8:	08 03 17 2a	orr	w8, w24, w23
   149ec:	a9 53 0b d1	sub	x9, x29, #0x2d4
   149f0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   149f4:	b7 b2 5f 39	ldrb	w23, [x21, #0x7ec]
   149f8:	f8 03 37 2a	mvn	w24, w23
   149fc:	18 73 1b 32	orr	w24, w24, #0xffffffe3
   14a00:	f7 0a 1e 32	orr	w23, w23, #0x1c
   14a04:	08 03 17 0a	and	w8, w24, w23
   14a08:	a9 23 0a d1	sub	x9, x29, #0x288
   14a0c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14a10:	b8 c2 5f 39	ldrb	w24, [x21, #0x7f0]
   14a14:	88 1e 80 52	mov	w8, #0xf4
   14a18:	1a 01 38 0a	bic	w26, w8, w24
   14a1c:	68 01 80 52	mov	w8, #0xb
   14a20:	18 03 08 0a	and	w24, w24, w8
   14a24:	48 03 18 2a	orr	w8, w26, w24
   14a28:	a9 23 0b d1	sub	x9, x29, #0x2c8
   14a2c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14a30:	b8 c6 5f 39	ldrb	w24, [x21, #0x7f1]
   14a34:	08 05 80 52	mov	w8, #0x28
   14a38:	1a 03 08 0a	and	w26, w24, w8
   14a3c:	98 03 38 0a	bic	w24, w28, w24
   14a40:	48 03 18 2a	orr	w8, w26, w24
   14a44:	a9 c3 05 d1	sub	x9, x29, #0x170
   14a48:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14a4c:	b8 d2 5f 39	ldrb	w24, [x21, #0x7f4]
   14a50:	48 08 80 52	mov	w8, #0x42
   14a54:	1c 03 08 0a	and	w28, w24, w8
   14a58:	a8 17 80 52	mov	w8, #0xbd
   14a5c:	18 01 38 0a	bic	w24, w8, w24
   14a60:	88 03 18 2a	orr	w8, w28, w24
   14a64:	a9 13 0b d1	sub	x9, x29, #0x2c4
   14a68:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14a6c:	b8 d6 5f 39	ldrb	w24, [x21, #0x7f5]
   14a70:	5c 01 38 0a	bic	w28, w10, w24
   14a74:	77 09 80 52	mov	w23, #0x4b
   14a78:	18 03 0b 0a	and	w24, w24, w11
   14a7c:	8f 16 80 52	mov	w15, #0xb4
   14a80:	88 03 18 2a	orr	w8, w28, w24
   14a84:	a9 33 0b d1	sub	x9, x29, #0x2cc
   14a88:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14a8c:	b8 da 5f 39	ldrb	w24, [x21, #0x7f6]
   14a90:	28 14 80 52	mov	w8, #0xa1
   14a94:	1c 01 38 0a	bic	w28, w8, w24
   14a98:	c8 0b 80 52	mov	w8, #0x5e
   14a9c:	18 03 08 0a	and	w24, w24, w8
   14aa0:	88 03 18 2a	orr	w8, w28, w24
   14aa4:	a9 03 06 d1	sub	x9, x29, #0x180
   14aa8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14aac:	bc e6 5f 39	ldrb	w28, [x21, #0x7f9]
   14ab0:	88 12 80 52	mov	w8, #0x94
   14ab4:	08 01 3c 0a	bic	w8, w8, w28
   14ab8:	69 0d 80 52	mov	w9, #0x6b
   14abc:	9c 03 09 0a	and	w28, w28, w9
   14ac0:	1c 01 1c 2a	orr	w28, w8, w28
   14ac4:	a8 f6 5f 39	ldrb	w8, [x21, #0x7fd]
   14ac8:	69 08 80 52	mov	w9, #0x43
   14acc:	29 01 28 0a	bic	w9, w9, w8
   14ad0:	8a 17 80 52	mov	w10, #0xbc
   14ad4:	08 01 0a 0a	and	w8, w8, w10
   14ad8:	28 01 08 2a	orr	w8, w9, w8
   14adc:	a9 03 0b d1	sub	x9, x29, #0x2c0
   14ae0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ae4:	a8 06 60 39	ldrb	w8, [x21, #0x801]
   14ae8:	89 13 80 52	mov	w9, #0x9c
   14aec:	09 01 09 2a	orr	w9, w8, w9
   14af0:	6a 0c 80 52	mov	w10, #0x63
   14af4:	48 01 28 2a	orn	w8, w10, w8
   14af8:	28 01 08 0a	and	w8, w9, w8
   14afc:	a9 f3 0a d1	sub	x9, x29, #0x2bc
   14b00:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b04:	a8 1e 60 39	ldrb	w8, [x21, #0x807]
   14b08:	c9 0d 80 52	mov	w9, #0x6e
   14b0c:	09 01 09 2a	orr	w9, w8, w9
   14b10:	2a 12 80 52	mov	w10, #0x91
   14b14:	48 01 28 2a	orn	w8, w10, w8
   14b18:	28 01 08 0a	and	w8, w9, w8
   14b1c:	a9 a3 0a d1	sub	x9, x29, #0x2a8
   14b20:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b24:	a8 22 60 39	ldrb	w8, [x21, #0x808]
   14b28:	09 75 1c 12	and	w9, w8, #0xfffffff3
   14b2c:	8a 01 80 52	mov	w10, #0xc
   14b30:	48 01 28 0a	bic	w8, w10, w8
   14b34:	28 01 08 2a	orr	w8, w9, w8
   14b38:	a9 c3 0a d1	sub	x9, x29, #0x2b0
   14b3c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b40:	a8 2e 60 39	ldrb	w8, [x21, #0x80b]
   14b44:	c9 09 80 52	mov	w9, #0x4e
   14b48:	09 01 09 2a	orr	w9, w8, w9
   14b4c:	2a 16 80 52	mov	w10, #0xb1
   14b50:	48 01 28 2a	orn	w8, w10, w8
   14b54:	28 01 08 0a	and	w8, w9, w8
   14b58:	a9 b3 0a d1	sub	x9, x29, #0x2ac
   14b5c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b60:	a8 3e 60 39	ldrb	w8, [x21, #0x80f]
   14b64:	0b 03 80 52	mov	w11, #0x18
   14b68:	69 01 28 0a	bic	w9, w11, w8
   14b6c:	08 75 1b 12	and	w8, w8, #0xffffffe7
   14b70:	28 01 08 2a	orr	w8, w9, w8
   14b74:	a9 33 0a d1	sub	x9, x29, #0x28c
   14b78:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b7c:	a8 46 60 39	ldrb	w8, [x21, #0x811]
   14b80:	e9 03 28 2a	mvn	w9, w8
   14b84:	29 e5 00 32	orr	w9, w9, #0x33333333
   14b88:	08 e5 02 32	orr	w8, w8, #0xcccccccc
   14b8c:	28 01 08 0a	and	w8, w9, w8
   14b90:	a9 43 0a d1	sub	x9, x29, #0x290
   14b94:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14b98:	a8 4a 60 39	ldrb	w8, [x21, #0x812]
   14b9c:	89 0f 80 52	mov	w9, #0x7c
   14ba0:	29 01 28 0a	bic	w9, w9, w8
   14ba4:	08 69 19 12	and	w8, w8, #0xffffff83
   14ba8:	28 01 08 2a	orr	w8, w9, w8
   14bac:	a9 83 0a d1	sub	x9, x29, #0x2a0
   14bb0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14bb4:	a8 56 60 39	ldrb	w8, [x21, #0x815]
   14bb8:	89 0b 80 52	mov	w9, #0x5c
   14bbc:	09 01 09 2a	orr	w9, w8, w9
   14bc0:	64 14 80 52	mov	w4, #0xa3
   14bc4:	88 00 28 2a	orn	w8, w4, w8
   14bc8:	28 01 08 0a	and	w8, w9, w8
   14bcc:	a9 63 0a d1	sub	x9, x29, #0x298
   14bd0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14bd4:	a8 5a 60 39	ldrb	w8, [x21, #0x816]
   14bd8:	09 0d 80 52	mov	w9, #0x68
   14bdc:	09 01 09 2a	orr	w9, w8, w9
   14be0:	ea 12 80 52	mov	w10, #0x97
   14be4:	48 01 28 2a	orn	w8, w10, w8
   14be8:	28 01 08 0a	and	w8, w9, w8
   14bec:	a9 93 0a d1	sub	x9, x29, #0x2a4
   14bf0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14bf4:	a8 66 60 39	ldrb	w8, [x21, #0x819]
   14bf8:	49 1f 80 52	mov	w9, #0xfa
   14bfc:	29 01 28 0a	bic	w9, w9, w8
   14c00:	aa 00 80 52	mov	w10, #0x5
   14c04:	08 01 0a 0a	and	w8, w8, w10
   14c08:	28 01 08 2a	orr	w8, w9, w8
   14c0c:	a9 53 0a d1	sub	x9, x29, #0x294
   14c10:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14c14:	a8 6a 60 39	ldrb	w8, [x21, #0x81a]
   14c18:	89 1c 80 52	mov	w9, #0xe4
   14c1c:	09 01 09 0a	and	w9, w8, w9
   14c20:	6a 03 80 52	mov	w10, #0x1b
   14c24:	48 01 28 0a	bic	w8, w10, w8
   14c28:	28 01 08 2a	orr	w8, w9, w8
   14c2c:	a9 73 0a d1	sub	x9, x29, #0x29c
   14c30:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14c34:	a8 76 60 39	ldrb	w8, [x21, #0x81d]
   14c38:	09 17 80 52	mov	w9, #0xb8
   14c3c:	29 01 28 0a	bic	w9, w9, w8
   14c40:	ea 08 80 52	mov	w10, #0x47
   14c44:	08 01 0a 0a	and	w8, w8, w10
   14c48:	28 01 08 2a	orr	w8, w9, w8
   14c4c:	a9 13 0a d1	sub	x9, x29, #0x284
   14c50:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14c54:	a8 86 60 39	ldrb	w8, [x21, #0x821]
   14c58:	69 19 80 52	mov	w9, #0xcb
   14c5c:	09 01 09 0a	and	w9, w8, w9
   14c60:	8a 06 80 52	mov	w10, #0x34
   14c64:	48 01 28 0a	bic	w8, w10, w8
   14c68:	28 01 08 2a	orr	w8, w9, w8
   14c6c:	a9 03 0a d1	sub	x9, x29, #0x280
   14c70:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14c74:	a8 92 60 39	ldrb	w8, [x21, #0x824]
   14c78:	4c 1b 80 52	mov	w12, #0xda
   14c7c:	89 01 28 0a	bic	w9, w12, w8
   14c80:	aa 04 80 52	mov	w10, #0x25
   14c84:	08 01 0a 0a	and	w8, w8, w10
   14c88:	28 01 08 2a	orr	w8, w9, w8
   14c8c:	a9 e3 09 d1	sub	x9, x29, #0x278
   14c90:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14c94:	a8 9a 60 39	ldrb	w8, [x21, #0x826]
   14c98:	89 01 28 2a	orn	w9, w12, w8
   14c9c:	08 01 0a 2a	orr	w8, w8, w10
   14ca0:	28 01 08 0a	and	w8, w9, w8
   14ca4:	a9 c3 09 d1	sub	x9, x29, #0x270
   14ca8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14cac:	a8 a2 60 39	ldrb	w8, [x21, #0x828]
   14cb0:	69 01 28 0a	bic	w9, w11, w8
   14cb4:	08 75 1b 12	and	w8, w8, #0xffffffe7
   14cb8:	28 01 08 2a	orr	w8, w9, w8
   14cbc:	a9 d3 09 d1	sub	x9, x29, #0x274
   14cc0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14cc4:	a8 a6 60 39	ldrb	w8, [x21, #0x829]
   14cc8:	a9 10 80 52	mov	w9, #0x85
   14ccc:	09 01 09 2a	orr	w9, w8, w9
   14cd0:	4a 0f 80 52	mov	w10, #0x7a
   14cd4:	48 01 28 2a	orn	w8, w10, w8
   14cd8:	08 01 09 0a	and	w8, w8, w9
   14cdc:	a9 f3 09 d1	sub	x9, x29, #0x27c
   14ce0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ce4:	a8 b6 60 39	ldrb	w8, [x21, #0x82d]
   14ce8:	4b 07 80 52	mov	w11, #0x3a
   14cec:	69 01 28 0a	bic	w9, w11, w8
   14cf0:	aa 18 80 52	mov	w10, #0xc5
   14cf4:	08 01 0a 0a	and	w8, w8, w10
   14cf8:	28 01 08 2a	orr	w8, w9, w8
   14cfc:	a9 a3 09 d1	sub	x9, x29, #0x268
   14d00:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14d04:	a8 ba 60 39	ldrb	w8, [x21, #0x82e]
   14d08:	49 19 80 52	mov	w9, #0xca
   14d0c:	09 01 09 2a	orr	w9, w8, w9
   14d10:	ac 06 80 52	mov	w12, #0x35
   14d14:	88 01 28 2a	orn	w8, w12, w8
   14d18:	28 01 08 0a	and	w8, w9, w8
   14d1c:	a9 b3 09 d1	sub	x9, x29, #0x26c
   14d20:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14d24:	a8 d2 60 39	ldrb	w8, [x21, #0x834]
   14d28:	0c 06 80 52	mov	w12, #0x30
   14d2c:	89 01 28 0a	bic	w9, w12, w8
   14d30:	08 75 1a 12	and	w8, w8, #0xffffffcf
   14d34:	28 01 08 2a	orr	w8, w9, w8
   14d38:	a9 83 09 d1	sub	x9, x29, #0x260
   14d3c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14d40:	a8 e6 60 39	ldrb	w8, [x21, #0x839]
   14d44:	c9 1e 80 52	mov	w9, #0xf6
   14d48:	09 01 09 2a	orr	w9, w8, w9
   14d4c:	2e 01 80 52	mov	w14, #0x9
   14d50:	c8 01 28 2a	orn	w8, w14, w8
   14d54:	28 01 08 0a	and	w8, w9, w8
   14d58:	a9 33 09 d1	sub	x9, x29, #0x24c
   14d5c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14d60:	a8 ea 60 39	ldrb	w8, [x21, #0x83a]
   14d64:	89 18 80 52	mov	w9, #0xc4
   14d68:	09 01 09 0a	and	w9, w8, w9
   14d6c:	6e 07 80 52	mov	w14, #0x3b
   14d70:	c8 01 28 0a	bic	w8, w14, w8
   14d74:	28 01 08 2a	orr	w8, w9, w8
   14d78:	a9 43 09 d1	sub	x9, x29, #0x250
   14d7c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14d80:	a8 ee 60 39	ldrb	w8, [x21, #0x83b]
   14d84:	89 0d 80 52	mov	w9, #0x6c
   14d88:	29 01 28 0a	bic	w9, w9, w8
   14d8c:	6e 12 80 52	mov	w14, #0x93
   14d90:	08 01 0e 0a	and	w8, w8, w14
   14d94:	28 01 08 2a	orr	w8, w9, w8
   14d98:	a9 63 09 d1	sub	x9, x29, #0x258
   14d9c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14da0:	a8 f6 60 39	ldrb	w8, [x21, #0x83d]
   14da4:	09 08 80 52	mov	w9, #0x40
   14da8:	29 01 28 0a	bic	w9, w9, w8
   14dac:	08 79 19 12	and	w8, w8, #0xffffffbf
   14db0:	28 01 08 2a	orr	w8, w9, w8
   14db4:	a9 53 09 d1	sub	x9, x29, #0x254
   14db8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14dbc:	a8 06 61 39	ldrb	w8, [x21, #0x841]
   14dc0:	e9 00 28 0a	bic	w9, w7, w8
   14dc4:	0e 1b 80 52	mov	w14, #0xd8
   14dc8:	08 01 0e 0a	and	w8, w8, w14
   14dcc:	28 01 08 2a	orr	w8, w9, w8
   14dd0:	a9 13 09 d1	sub	x9, x29, #0x244
   14dd4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14dd8:	a8 22 61 39	ldrb	w8, [x21, #0x848]
   14ddc:	e9 0d 80 52	mov	w9, #0x6f
   14de0:	29 01 28 0a	bic	w9, w9, w8
   14de4:	0e 12 80 52	mov	w14, #0x90
   14de8:	08 01 0e 0a	and	w8, w8, w14
   14dec:	28 01 08 2a	orr	w8, w9, w8
   14df0:	a9 53 08 d1	sub	x9, x29, #0x214
   14df4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14df8:	a8 26 61 39	ldrb	w8, [x21, #0x849]
   14dfc:	69 01 28 0a	bic	w9, w11, w8
   14e00:	08 01 0a 0a	and	w8, w8, w10
   14e04:	28 01 08 2a	orr	w8, w9, w8
   14e08:	a9 83 08 d1	sub	x9, x29, #0x220
   14e0c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14e10:	a8 2e 61 39	ldrb	w8, [x21, #0x84b]
   14e14:	ca 09 80 52	mov	w10, #0x4e
   14e18:	09 01 0a 0a	and	w9, w8, w10
   14e1c:	2b 16 80 52	mov	w11, #0xb1
   14e20:	68 01 28 0a	bic	w8, w11, w8
   14e24:	08 01 09 2a	orr	w8, w8, w9
   14e28:	a9 93 08 d1	sub	x9, x29, #0x224
   14e2c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14e30:	a8 32 61 39	ldrb	w8, [x21, #0x84c]
   14e34:	89 10 80 52	mov	w9, #0x84
   14e38:	29 01 28 0a	bic	w9, w9, w8
   14e3c:	6e 0f 80 52	mov	w14, #0x7b
   14e40:	08 01 0e 0a	and	w8, w8, w14
   14e44:	28 01 08 2a	orr	w8, w9, w8
   14e48:	a9 b3 08 d1	sub	x9, x29, #0x22c
   14e4c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14e50:	a8 3a 61 39	ldrb	w8, [x21, #0x84e]
   14e54:	e9 02 28 0a	bic	w9, w23, w8
   14e58:	08 01 0f 0a	and	w8, w8, w15
   14e5c:	98 16 80 52	mov	w24, #0xb4
   14e60:	28 01 08 2a	orr	w8, w9, w8
   14e64:	a9 c3 08 d1	sub	x9, x29, #0x230
   14e68:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14e6c:	a8 3e 61 39	ldrb	w8, [x21, #0x84f]
   14e70:	09 09 80 52	mov	w9, #0x48
   14e74:	09 01 09 2a	orr	w9, w8, w9
   14e78:	ee 16 80 52	mov	w14, #0xb7
   14e7c:	c8 01 28 2a	orn	w8, w14, w8
   14e80:	28 01 08 0a	and	w8, w9, w8
   14e84:	a9 d3 08 d1	sub	x9, x29, #0x234
   14e88:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14e8c:	a8 42 61 39	ldrb	w8, [x21, #0x850]
   14e90:	29 00 28 0a	bic	w9, w1, w8
   14e94:	08 01 0d 0a	and	w8, w8, w13
   14e98:	28 01 08 2a	orr	w8, w9, w8
   14e9c:	a9 f3 08 d1	sub	x9, x29, #0x23c
   14ea0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ea4:	a8 4a 61 39	ldrb	w8, [x21, #0x852]
   14ea8:	29 08 80 52	mov	w9, #0x41
   14eac:	29 01 28 0a	bic	w9, w9, w8
   14eb0:	cd 17 80 52	mov	w13, #0xbe
   14eb4:	08 01 0d 0a	and	w8, w8, w13
   14eb8:	28 01 08 2a	orr	w8, w9, w8
   14ebc:	a9 03 09 d1	sub	x9, x29, #0x240
   14ec0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ec4:	a8 52 61 39	ldrb	w8, [x21, #0x854]
   14ec8:	09 01 0b 0a	and	w9, w8, w11
   14ecc:	48 01 28 0a	bic	w8, w10, w8
   14ed0:	08 01 09 2a	orr	w8, w8, w9
   14ed4:	a9 e3 08 d1	sub	x9, x29, #0x238
   14ed8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14edc:	a8 56 61 39	ldrb	w8, [x21, #0x855]
   14ee0:	89 01 28 0a	bic	w9, w12, w8
   14ee4:	08 75 1a 12	and	w8, w8, #0xffffffcf
   14ee8:	28 01 08 2a	orr	w8, w9, w8
   14eec:	a9 23 09 d1	sub	x9, x29, #0x248
   14ef0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ef4:	a8 6e 61 39	ldrb	w8, [x21, #0x85b]
   14ef8:	09 07 80 52	mov	w9, #0x38
   14efc:	29 01 28 0a	bic	w9, w9, w8
   14f00:	08 71 1a 12	and	w8, w8, #0xffffffc7
   14f04:	28 01 08 2a	orr	w8, w9, w8
   14f08:	a9 63 08 d1	sub	x9, x29, #0x218
   14f0c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14f10:	a8 7a 61 39	ldrb	w8, [x21, #0x85e]
   14f14:	e9 03 28 2a	mvn	w9, w8
   14f18:	29 71 1c 12	and	w9, w9, #0xfffffff1
   14f1c:	08 09 1f 12	and	w8, w8, #0xe
   14f20:	28 01 08 2a	orr	w8, w9, w8
   14f24:	a9 43 08 d1	sub	x9, x29, #0x210
   14f28:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14f2c:	a8 86 61 39	ldrb	w8, [x21, #0x861]
   14f30:	4e 02 80 52	mov	w14, #0x12
   14f34:	09 01 0e 2a	orr	w9, w8, w14
   14f38:	aa 1d 80 52	mov	w10, #0xed
   14f3c:	48 01 28 2a	orn	w8, w10, w8
   14f40:	28 01 08 0a	and	w8, w9, w8
   14f44:	a9 33 08 d1	sub	x9, x29, #0x20c
   14f48:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14f4c:	a8 a6 61 39	ldrb	w8, [x21, #0x869]
   14f50:	e9 03 28 2a	mvn	w9, w8
   14f54:	08 01 1a 12	and	w8, w8, #0x40
   14f58:	29 79 19 12	and	w9, w9, #0xffffffbf
   14f5c:	08 01 09 2a	orr	w8, w8, w9
   14f60:	a9 13 07 d1	sub	x9, x29, #0x1c4
   14f64:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14f68:	a8 aa 61 39	ldrb	w8, [x21, #0x86a]
   14f6c:	b7 0f 80 52	mov	w23, #0x7d
   14f70:	e9 02 28 2a	orn	w9, w23, w8
   14f74:	4a 10 80 52	mov	w10, #0x82
   14f78:	08 01 0a 2a	orr	w8, w8, w10
   14f7c:	28 01 08 0a	and	w8, w9, w8
   14f80:	a9 43 07 d1	sub	x9, x29, #0x1d0
   14f84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14f88:	a8 b2 61 39	ldrb	w8, [x21, #0x86c]
   14f8c:	c7 0e 80 52	mov	w7, #0x76
   14f90:	e9 00 28 0a	bic	w9, w7, w8
   14f94:	2d 11 80 52	mov	w13, #0x89
   14f98:	08 01 0d 0a	and	w8, w8, w13
   14f9c:	28 01 08 2a	orr	w8, w9, w8
   14fa0:	a9 53 07 d1	sub	x9, x29, #0x1d4
   14fa4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14fa8:	a8 ba 61 39	ldrb	w8, [x21, #0x86e]
   14fac:	2b 09 80 52	mov	w11, #0x49
   14fb0:	69 01 28 0a	bic	w9, w11, w8
   14fb4:	cc 16 80 52	mov	w12, #0xb6
   14fb8:	08 01 0c 0a	and	w8, w8, w12
   14fbc:	28 01 08 2a	orr	w8, w9, w8
   14fc0:	a9 63 07 d1	sub	x9, x29, #0x1d8
   14fc4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14fc8:	a8 c6 61 39	ldrb	w8, [x21, #0x871]
   14fcc:	89 04 80 52	mov	w9, #0x24
   14fd0:	09 01 09 0a	and	w9, w8, w9
   14fd4:	08 02 28 0a	bic	w8, w16, w8
   14fd8:	28 01 08 2a	orr	w8, w9, w8
   14fdc:	a9 23 07 d1	sub	x9, x29, #0x1c8
   14fe0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14fe4:	a8 ca 61 39	ldrb	w8, [x21, #0x872]
   14fe8:	e9 02 28 0a	bic	w9, w23, w8
   14fec:	08 01 0a 0a	and	w8, w8, w10
   14ff0:	28 01 08 2a	orr	w8, w9, w8
   14ff4:	a9 73 07 d1	sub	x9, x29, #0x1dc
   14ff8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   14ffc:	a8 d2 61 39	ldrb	w8, [x21, #0x874]
   15000:	e9 03 28 2a	mvn	w9, w8
   15004:	08 75 19 32	orr	w8, w8, #0xffffff9f
   15008:	29 05 1b 32	orr	w9, w9, #0x60
   1500c:	08 01 09 0a	and	w8, w8, w9
   15010:	a9 83 07 d1	sub	x9, x29, #0x1e0
   15014:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15018:	a8 d6 61 39	ldrb	w8, [x21, #0x875]
   1501c:	cf 15 80 52	mov	w15, #0xae
   15020:	e9 01 28 2a	orn	w9, w15, w8
   15024:	2a 0a 80 52	mov	w10, #0x51
   15028:	08 01 0a 2a	orr	w8, w8, w10
   1502c:	28 01 08 0a	and	w8, w9, w8
   15030:	a9 93 07 d1	sub	x9, x29, #0x1e4
   15034:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15038:	a8 de 61 39	ldrb	w8, [x21, #0x877]
   1503c:	41 1e 80 52	mov	w1, #0xf2
   15040:	29 00 28 0a	bic	w9, w1, w8
   15044:	aa 01 80 52	mov	w10, #0xd
   15048:	08 01 0a 0a	and	w8, w8, w10
   1504c:	28 01 08 2a	orr	w8, w9, w8
   15050:	a9 a3 07 d1	sub	x9, x29, #0x1e8
   15054:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15058:	a8 ee 61 39	ldrb	w8, [x21, #0x87b]
   1505c:	c9 08 80 52	mov	w9, #0x46
   15060:	29 01 28 0a	bic	w9, w9, w8
   15064:	2a 17 80 52	mov	w10, #0xb9
   15068:	08 01 0a 0a	and	w8, w8, w10
   1506c:	28 01 08 2a	orr	w8, w9, w8
   15070:	a9 f3 06 d1	sub	x9, x29, #0x1bc
   15074:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15078:	a8 fe 61 39	ldrb	w8, [x21, #0x87f]
   1507c:	e9 03 28 2a	mvn	w9, w8
   15080:	08 e1 00 32	orr	w8, w8, #0x11111111
   15084:	29 e9 03 32	orr	w9, w9, #0xeeeeeeee
   15088:	08 01 09 0a	and	w8, w8, w9
   1508c:	a9 93 06 d1	sub	x9, x29, #0x1a4
   15090:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15094:	a8 06 62 39	ldrb	w8, [x21, #0x881]
   15098:	69 13 80 52	mov	w9, #0x9b
   1509c:	29 01 28 2a	orn	w9, w9, w8
   150a0:	8a 0c 80 52	mov	w10, #0x64
   150a4:	08 01 0a 2a	orr	w8, w8, w10
   150a8:	28 01 08 0a	and	w8, w9, w8
   150ac:	a9 a3 06 d1	sub	x9, x29, #0x1a8
   150b0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   150b4:	a8 0e 62 39	ldrb	w8, [x21, #0x883]
   150b8:	a9 13 80 52	mov	w9, #0x9d
   150bc:	29 01 28 0a	bic	w9, w9, w8
   150c0:	4a 0c 80 52	mov	w10, #0x62
   150c4:	08 01 0a 0a	and	w8, w8, w10
   150c8:	28 01 08 2a	orr	w8, w9, w8
   150cc:	a9 b3 06 d1	sub	x9, x29, #0x1ac
   150d0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   150d4:	a8 12 62 39	ldrb	w8, [x21, #0x884]
   150d8:	c9 00 80 52	mov	w9, #0x6
   150dc:	29 01 28 0a	bic	w9, w9, w8
   150e0:	08 75 1d 12	and	w8, w8, #0xfffffff9
   150e4:	28 01 08 2a	orr	w8, w9, w8
   150e8:	a9 d3 06 d1	sub	x9, x29, #0x1b4
   150ec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   150f0:	a8 16 62 39	ldrb	w8, [x21, #0x885]
   150f4:	8a 03 80 52	mov	w10, #0x1c
   150f8:	49 01 28 0a	bic	w9, w10, w8
   150fc:	08 71 1b 12	and	w8, w8, #0xffffffe3
   15100:	28 01 08 2a	orr	w8, w9, w8
   15104:	a9 03 07 d1	sub	x9, x29, #0x1c0
   15108:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1510c:	a8 22 62 39	ldrb	w8, [x21, #0x888]
   15110:	c9 02 80 52	mov	w9, #0x16
   15114:	29 01 28 0a	bic	w9, w9, w8
   15118:	30 1d 80 52	mov	w16, #0xe9
   1511c:	08 01 10 0a	and	w8, w8, w16
   15120:	28 01 08 2a	orr	w8, w9, w8
   15124:	a9 c3 06 d1	sub	x9, x29, #0x1b0
   15128:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1512c:	a8 26 62 39	ldrb	w8, [x21, #0x889]
   15130:	c9 0a 80 52	mov	w9, #0x56
   15134:	09 01 09 0a	and	w9, w8, w9
   15138:	30 15 80 52	mov	w16, #0xa9
   1513c:	08 02 28 0a	bic	w8, w16, w8
   15140:	08 01 09 2a	orr	w8, w8, w9
   15144:	a9 e3 06 d1	sub	x9, x29, #0x1b8
   15148:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1514c:	a8 2a 62 39	ldrb	w8, [x21, #0x88a]
   15150:	c9 13 80 52	mov	w9, #0x9e
   15154:	29 01 28 2a	orn	w9, w9, w8
   15158:	3a 0c 80 52	mov	w26, #0x61
   1515c:	08 01 1a 2a	orr	w8, w8, w26
   15160:	28 01 08 0a	and	w8, w9, w8
   15164:	a9 33 07 d1	sub	x9, x29, #0x1cc
   15168:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1516c:	a8 2e 62 39	ldrb	w8, [x21, #0x88b]
   15170:	69 01 28 0a	bic	w9, w11, w8
   15174:	08 01 0c 0a	and	w8, w8, w12
   15178:	28 01 08 2a	orr	w8, w9, w8
   1517c:	a9 b3 07 d1	sub	x9, x29, #0x1ec
   15180:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15184:	a8 36 62 39	ldrb	w8, [x21, #0x88d]
   15188:	c9 1b 80 52	mov	w9, #0xde
   1518c:	29 01 28 2a	orn	w9, w9, w8
   15190:	2b 04 80 52	mov	w11, #0x21
   15194:	08 01 0b 2a	orr	w8, w8, w11
   15198:	28 01 08 0a	and	w8, w9, w8
   1519c:	a9 c3 07 d1	sub	x9, x29, #0x1f0
   151a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   151a4:	a8 3e 62 39	ldrb	w8, [x21, #0x88f]
   151a8:	e9 03 28 2a	mvn	w9, w8
   151ac:	29 e5 00 12	and	w9, w9, #0x33333333
   151b0:	08 e5 02 12	and	w8, w8, #0xcccccccc
   151b4:	28 01 08 2a	orr	w8, w9, w8
   151b8:	a9 d3 07 d1	sub	x9, x29, #0x1f4
   151bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   151c0:	a8 42 62 39	ldrb	w8, [x21, #0x890]
   151c4:	49 01 28 0a	bic	w9, w10, w8
   151c8:	08 71 1b 12	and	w8, w8, #0xffffffe3
   151cc:	28 01 08 2a	orr	w8, w9, w8
   151d0:	a9 f3 07 d1	sub	x9, x29, #0x1fc
   151d4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   151d8:	a8 46 62 39	ldrb	w8, [x21, #0x891]
   151dc:	c9 12 80 52	mov	w9, #0x96
   151e0:	09 01 09 2a	orr	w9, w8, w9
   151e4:	37 0d 80 52	mov	w23, #0x69
   151e8:	e8 02 28 2a	orn	w8, w23, w8
   151ec:	08 01 09 0a	and	w8, w8, w9
   151f0:	a9 03 08 d1	sub	x9, x29, #0x200
   151f4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   151f8:	a8 4a 62 39	ldrb	w8, [x21, #0x892]
   151fc:	09 01 07 0a	and	w9, w8, w7
   15200:	a8 01 28 0a	bic	w8, w13, w8
   15204:	08 01 09 2a	orr	w8, w8, w9
   15208:	a9 23 08 d1	sub	x9, x29, #0x208
   1520c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15210:	a8 56 62 39	ldrb	w8, [x21, #0x895]
   15214:	67 0e 80 52	mov	w7, #0x73
   15218:	09 01 07 2a	orr	w9, w8, w7
   1521c:	8a 11 80 52	mov	w10, #0x8c
   15220:	48 01 28 2a	orn	w8, w10, w8
   15224:	08 01 09 0a	and	w8, w8, w9
   15228:	a9 13 08 d1	sub	x9, x29, #0x204
   1522c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15230:	a8 6a 62 39	ldrb	w8, [x21, #0x89a]
   15234:	e9 03 28 2a	mvn	w9, w8
   15238:	29 75 19 12	and	w9, w9, #0xffffff9f
   1523c:	08 05 1b 12	and	w8, w8, #0x60
   15240:	28 01 08 2a	orr	w8, w9, w8
   15244:	a9 e3 07 d1	sub	x9, x29, #0x1f8
   15248:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1524c:	a8 8e 62 39	ldrb	w8, [x21, #0x8a3]
   15250:	6b 09 80 52	mov	w11, #0x4b
   15254:	09 01 0b 0a	and	w9, w8, w11
   15258:	08 03 28 0a	bic	w8, w24, w8
   1525c:	08 01 09 2a	orr	w8, w8, w9
   15260:	a9 33 06 d1	sub	x9, x29, #0x18c
   15264:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15268:	a8 96 62 39	ldrb	w8, [x21, #0x8a5]
   1526c:	e9 03 28 2a	mvn	w9, w8
   15270:	29 6d 1b 12	and	w9, w9, #0xffffffe1
   15274:	08 0d 1f 12	and	w8, w8, #0x1e
   15278:	28 01 08 2a	orr	w8, w9, w8
   1527c:	a9 43 06 d1	sub	x9, x29, #0x190
   15280:	28 01 10 b8	stur	w8, [x9, #-0x100]
   15284:	a8 9e 62 39	ldrb	w8, [x21, #0x8a7]
   15288:	89 00 28 0a	bic	w9, w4, w8
   1528c:	8a 0b 80 52	mov	w10, #0x5c
   15290:	08 01 0a 0a	and	w8, w8, w10
   15294:	28 01 08 2a	orr	w8, w9, w8
   15298:	a9 53 06 d1	sub	x9, x29, #0x194
   1529c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   152a0:	a8 a2 62 39	ldrb	w8, [x21, #0x8a8]
   152a4:	a9 05 80 52	mov	w9, #0x2d
   152a8:	29 01 28 0a	bic	w9, w9, w8
   152ac:	44 1a 80 52	mov	w4, #0xd2
   152b0:	08 01 04 0a	and	w8, w8, w4
   152b4:	28 01 08 2a	orr	w8, w9, w8
   152b8:	a9 73 06 d1	sub	x9, x29, #0x19c
   152bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   152c0:	a8 a6 62 39	ldrb	w8, [x21, #0x8a9]
   152c4:	49 1c 80 52	mov	w9, #0xe2
   152c8:	29 01 28 2a	orn	w9, w9, w8
   152cc:	aa 03 80 52	mov	w10, #0x1d
   152d0:	08 01 0a 2a	orr	w8, w8, w10
   152d4:	28 01 08 0a	and	w8, w9, w8
   152d8:	a9 83 06 d1	sub	x9, x29, #0x1a0
   152dc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   152e0:	a8 93 00 d1	sub	x8, x29, #0x24
   152e4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   152e8:	08 d9 00 51	sub	w8, w8, #0x36
   152ec:	68 ce 1e 39	strb	w8, [x19, #0x7b3]
   152f0:	a8 d2 5e 39	ldrb	w8, [x21, #0x7b4]
   152f4:	08 75 1a 52	eor	w8, w8, #0xffffffcf
   152f8:	68 d2 1e 39	strb	w8, [x19, #0x7b4]
   152fc:	a8 d6 5e 39	ldrb	w8, [x21, #0x7b5]
   15300:	89 17 80 52	mov	w9, #0xbc
   15304:	08 01 09 4a	eor	w8, w8, w9
   15308:	68 d6 1e 39	strb	w8, [x19, #0x7b5]
   1530c:	28 03 80 52	mov	w8, #0x19
   15310:	a8 00 08 4a	eor	w8, w5, w8
   15314:	68 da 1e 39	strb	w8, [x19, #0x7b6]
   15318:	a8 de 5e 39	ldrb	w8, [x21, #0x7b7]
   1531c:	a9 17 80 52	mov	w9, #0xbd
   15320:	08 01 09 4a	eor	w8, w8, w9
   15324:	68 de 1e 39	strb	w8, [x19, #0x7b7]
   15328:	a8 e2 5e 39	ldrb	w8, [x21, #0x7b8]
   1532c:	25 1a 80 52	mov	w5, #0xd1
   15330:	08 01 05 4a	eor	w8, w8, w5
   15334:	68 e2 1e 39	strb	w8, [x19, #0x7b8]
   15338:	a8 e6 5e 39	ldrb	w8, [x21, #0x7b9]
   1533c:	08 01 0e 4a	eor	w8, w8, w14
   15340:	68 e6 1e 39	strb	w8, [x19, #0x7b9]
   15344:	a8 ea 5e 39	ldrb	w8, [x21, #0x7ba]
   15348:	2c 07 80 52	mov	w12, #0x39
   1534c:	08 01 0c 4a	eor	w8, w8, w12
   15350:	68 ea 1e 39	strb	w8, [x19, #0x7ba]
   15354:	a8 ee 5e 39	ldrb	w8, [x21, #0x7bb]
   15358:	e9 0b 80 52	mov	w9, #0x5f
   1535c:	08 01 09 4a	eor	w8, w8, w9
   15360:	68 ee 1e 39	strb	w8, [x19, #0x7bb]
   15364:	a8 a3 00 d1	sub	x8, x29, #0x28
   15368:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1536c:	08 65 01 51	sub	w8, w8, #0x59
   15370:	68 f2 1e 39	strb	w8, [x19, #0x7bc]
   15374:	a8 b3 00 d1	sub	x8, x29, #0x2c
   15378:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1537c:	08 3d 00 51	sub	w8, w8, #0xf
   15380:	68 f6 1e 39	strb	w8, [x19, #0x7bd]
   15384:	e8 03 26 2a	mvn	w8, w6
   15388:	68 fa 1e 39	strb	w8, [x19, #0x7be]
   1538c:	a8 c3 00 d1	sub	x8, x29, #0x30
   15390:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15394:	08 05 01 11	add	w8, w8, #0x41
   15398:	68 fe 1e 39	strb	w8, [x19, #0x7bf]
   1539c:	a8 02 5f 39	ldrb	w8, [x21, #0x7c0]
   153a0:	09 0b 80 52	mov	w9, #0x58
   153a4:	08 01 09 4a	eor	w8, w8, w9
   153a8:	68 02 1f 39	strb	w8, [x19, #0x7c0]
   153ac:	74 06 1f 39	strb	w20, [x19, #0x7c1]
   153b0:	a8 e3 00 d1	sub	x8, x29, #0x38
   153b4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   153b8:	08 c1 00 11	add	w8, w8, #0x30
   153bc:	68 0a 1f 39	strb	w8, [x19, #0x7c2]
   153c0:	a8 0e 5f 39	ldrb	w8, [x21, #0x7c3]
   153c4:	a9 00 80 52	mov	w9, #0x5
   153c8:	08 01 09 4a	eor	w8, w8, w9
   153cc:	68 0e 1f 39	strb	w8, [x19, #0x7c3]
   153d0:	e8 03 39 2a	mvn	w8, w25
   153d4:	68 12 1f 39	strb	w8, [x19, #0x7c4]
   153d8:	a8 16 5f 39	ldrb	w8, [x21, #0x7c5]
   153dc:	08 e1 03 52	eor	w8, w8, #0x22222222
   153e0:	68 16 1f 39	strb	w8, [x19, #0x7c5]
   153e4:	7e 1a 1f 39	strb	w30, [x19, #0x7c6]
   153e8:	a8 1e 5f 39	ldrb	w8, [x21, #0x7c7]
   153ec:	08 01 01 4a	eor	w8, w8, w1
   153f0:	68 1e 1f 39	strb	w8, [x19, #0x7c7]
   153f4:	7b 22 1f 39	strb	w27, [x19, #0x7c8]
   153f8:	76 26 1f 39	strb	w22, [x19, #0x7c9]
   153fc:	a8 f3 00 d1	sub	x8, x29, #0x3c
   15400:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15404:	08 71 00 11	add	w8, w8, #0x1c
   15408:	68 2a 1f 39	strb	w8, [x19, #0x7ca]
   1540c:	a8 2e 5f 39	ldrb	w8, [x21, #0x7cb]
   15410:	cd 1e 80 52	mov	w13, #0xf6
   15414:	08 01 0d 4a	eor	w8, w8, w13
   15418:	68 2e 1f 39	strb	w8, [x19, #0x7cb]
   1541c:	a8 32 5f 39	ldrb	w8, [x21, #0x7cc]
   15420:	08 69 19 52	eor	w8, w8, #0xffffff83
   15424:	68 32 1f 39	strb	w8, [x19, #0x7cc]
   15428:	a8 93 09 d1	sub	x8, x29, #0x264
   1542c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15430:	8d 1d 80 52	mov	w13, #0xec
   15434:	08 01 0d 4a	eor	w8, w8, w13
   15438:	68 36 1f 39	strb	w8, [x19, #0x7cd]
   1543c:	a8 a3 08 d1	sub	x8, x29, #0x228
   15440:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15444:	08 e5 01 52	eor	w8, w8, #0x99999999
   15448:	68 3a 1f 39	strb	w8, [x19, #0x7ce]
   1544c:	a8 03 01 d1	sub	x8, x29, #0x40
   15450:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15454:	08 49 01 51	sub	w8, w8, #0x52
   15458:	68 3e 1f 39	strb	w8, [x19, #0x7cf]
   1545c:	a8 42 5f 39	ldrb	w8, [x21, #0x7d0]
   15460:	08 11 1d 52	eor	w8, w8, #0xf8
   15464:	68 42 1f 39	strb	w8, [x19, #0x7d0]
   15468:	a8 46 5f 39	ldrb	w8, [x21, #0x7d1]
   1546c:	a6 02 80 52	mov	w6, #0x15
   15470:	08 01 06 4a	eor	w8, w8, w6
   15474:	68 46 1f 39	strb	w8, [x19, #0x7d1]
   15478:	a8 23 01 d1	sub	x8, x29, #0x48
   1547c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15480:	08 11 00 51	sub	w8, w8, #0x4
   15484:	68 4a 1f 39	strb	w8, [x19, #0x7d2]
   15488:	a8 63 0b d1	sub	x8, x29, #0x2d8
   1548c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15490:	e8 03 28 2a	mvn	w8, w8
   15494:	68 4e 1f 39	strb	w8, [x19, #0x7d3]
   15498:	08 14 80 52	mov	w8, #0xa0
   1549c:	ad d3 0a d1	sub	x13, x29, #0x2b4
   154a0:	ad 01 50 b8	ldur	w13, [x13, #-0x100]
   154a4:	a8 01 08 4a	eor	w8, w13, w8
   154a8:	68 52 1f 39	strb	w8, [x19, #0x7d4]
   154ac:	a8 53 01 d1	sub	x8, x29, #0x54
   154b0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   154b4:	08 e9 00 51	sub	w8, w8, #0x3a
   154b8:	68 56 1f 39	strb	w8, [x19, #0x7d5]
   154bc:	a8 63 01 d1	sub	x8, x29, #0x58
   154c0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   154c4:	08 29 00 51	sub	w8, w8, #0xa
   154c8:	68 5a 1f 39	strb	w8, [x19, #0x7d6]
   154cc:	a8 73 0b d1	sub	x8, x29, #0x2dc
   154d0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   154d4:	68 5e 1f 39	strb	w8, [x19, #0x7d7]
   154d8:	a8 73 01 d1	sub	x8, x29, #0x5c
   154dc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   154e0:	08 55 01 51	sub	w8, w8, #0x55
   154e4:	68 62 1f 39	strb	w8, [x19, #0x7d8]
   154e8:	a8 e3 0a d1	sub	x8, x29, #0x2b8
   154ec:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   154f0:	e8 03 28 2a	mvn	w8, w8
   154f4:	68 66 1f 39	strb	w8, [x19, #0x7d9]
   154f8:	d9 0b 80 52	mov	w25, #0x5e
   154fc:	a8 73 09 d1	sub	x8, x29, #0x25c
   15500:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15504:	08 01 19 4a	eor	w8, w8, w25
   15508:	68 6a 1f 39	strb	w8, [x19, #0x7da]
   1550c:	68 78 19 52	eor	w8, w3, #0xffffffbf
   15510:	68 6e 1f 39	strb	w8, [x19, #0x7db]
   15514:	a8 93 01 d1	sub	x8, x29, #0x64
   15518:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1551c:	08 15 00 11	add	w8, w8, #0x5
   15520:	68 72 1f 39	strb	w8, [x19, #0x7dc]
   15524:	a8 76 5f 39	ldrb	w8, [x21, #0x7dd]
   15528:	6d 0c 80 52	mov	w13, #0x63
   1552c:	08 01 0d 4a	eor	w8, w8, w13
   15530:	68 76 1f 39	strb	w8, [x19, #0x7dd]
   15534:	a8 73 08 d1	sub	x8, x29, #0x21c
   15538:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1553c:	8e 06 80 52	mov	w14, #0x34
   15540:	08 01 0e 4a	eor	w8, w8, w14
   15544:	68 7a 1f 39	strb	w8, [x19, #0x7de]
   15548:	a8 7e 5f 39	ldrb	w8, [x21, #0x7df]
   1554c:	6e 0b 80 52	mov	w14, #0x5b
   15550:	08 01 0e 4a	eor	w8, w8, w14
   15554:	68 7e 1f 39	strb	w8, [x19, #0x7df]
   15558:	a8 b3 01 d1	sub	x8, x29, #0x6c
   1555c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15560:	08 45 00 51	sub	w8, w8, #0x11
   15564:	68 82 1f 39	strb	w8, [x19, #0x7e0]
   15568:	a8 86 5f 39	ldrb	w8, [x21, #0x7e1]
   1556c:	08 11 1d 52	eor	w8, w8, #0xf8
   15570:	68 86 1f 39	strb	w8, [x19, #0x7e1]
   15574:	a8 c3 01 d1	sub	x8, x29, #0x70
   15578:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1557c:	08 49 00 51	sub	w8, w8, #0x12
   15580:	68 8a 1f 39	strb	w8, [x19, #0x7e2]
   15584:	a8 8e 5f 39	ldrb	w8, [x21, #0x7e3]
   15588:	08 01 0f 4a	eor	w8, w8, w15
   1558c:	68 8e 1f 39	strb	w8, [x19, #0x7e3]
   15590:	a8 92 5f 39	ldrb	w8, [x21, #0x7e4]
   15594:	08 01 09 4a	eor	w8, w8, w9
   15598:	68 92 1f 39	strb	w8, [x19, #0x7e4]
   1559c:	cf 05 80 52	mov	w15, #0x2e
   155a0:	28 02 0f 4a	eor	w8, w17, w15
   155a4:	68 96 1f 39	strb	w8, [x19, #0x7e5]
   155a8:	a8 9a 5f 39	ldrb	w8, [x21, #0x7e6]
   155ac:	ae 06 80 52	mov	w14, #0x35
   155b0:	08 01 0e 4a	eor	w8, w8, w14
   155b4:	68 9a 1f 39	strb	w8, [x19, #0x7e6]
   155b8:	a8 9e 5f 39	ldrb	w8, [x21, #0x7e7]
   155bc:	08 e9 03 52	eor	w8, w8, #0xeeeeeeee
   155c0:	68 9e 1f 39	strb	w8, [x19, #0x7e7]
   155c4:	a8 43 0b d1	sub	x8, x29, #0x2d0
   155c8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   155cc:	68 a2 1f 39	strb	w8, [x19, #0x7e8]
   155d0:	a8 a6 5f 39	ldrb	w8, [x21, #0x7e9]
   155d4:	08 01 1b 52	eor	w8, w8, #0x20
   155d8:	68 a6 1f 39	strb	w8, [x19, #0x7e9]
   155dc:	a8 e3 01 d1	sub	x8, x29, #0x78
   155e0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   155e4:	08 45 01 11	add	w8, w8, #0x51
   155e8:	68 aa 1f 39	strb	w8, [x19, #0x7ea]
   155ec:	48 09 80 52	mov	w8, #0x4a
   155f0:	a9 53 0b d1	sub	x9, x29, #0x2d4
   155f4:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   155f8:	28 01 08 4a	eor	w8, w9, w8
   155fc:	68 ae 1f 39	strb	w8, [x19, #0x7eb]
   15600:	a8 23 0a d1	sub	x8, x29, #0x288
   15604:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15608:	68 b2 1f 39	strb	w8, [x19, #0x7ec]
   1560c:	a8 b6 5f 39	ldrb	w8, [x21, #0x7ed]
   15610:	08 e5 01 52	eor	w8, w8, #0x99999999
   15614:	68 b6 1f 39	strb	w8, [x19, #0x7ed]
   15618:	a8 ba 5f 39	ldrb	w8, [x21, #0x7ee]
   1561c:	89 1a 80 52	mov	w9, #0xd4
   15620:	08 01 09 4a	eor	w8, w8, w9
   15624:	68 ba 1f 39	strb	w8, [x19, #0x7ee]
   15628:	a8 be 5f 39	ldrb	w8, [x21, #0x7ef]
   1562c:	08 09 1c 52	eor	w8, w8, #0x70
   15630:	68 be 1f 39	strb	w8, [x19, #0x7ef]
   15634:	a8 23 0b d1	sub	x8, x29, #0x2c8
   15638:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1563c:	68 c2 1f 39	strb	w8, [x19, #0x7f0]
   15640:	a8 c3 05 d1	sub	x8, x29, #0x170
   15644:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15648:	e8 03 28 2a	mvn	w8, w8
   1564c:	68 c6 1f 39	strb	w8, [x19, #0x7f1]
   15650:	a8 ca 5f 39	ldrb	w8, [x21, #0x7f2]
   15654:	08 05 1d 52	eor	w8, w8, #0x18
   15658:	68 ca 1f 39	strb	w8, [x19, #0x7f2]
   1565c:	a8 ce 5f 39	ldrb	w8, [x21, #0x7f3]
   15660:	08 01 1b 52	eor	w8, w8, #0x20
   15664:	68 ce 1f 39	strb	w8, [x19, #0x7f3]
   15668:	a8 13 0b d1	sub	x8, x29, #0x2c4
   1566c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15670:	e8 03 28 2a	mvn	w8, w8
   15674:	68 d2 1f 39	strb	w8, [x19, #0x7f4]
   15678:	a8 33 0b d1	sub	x8, x29, #0x2cc
   1567c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15680:	68 d6 1f 39	strb	w8, [x19, #0x7f5]
   15684:	a8 03 06 d1	sub	x8, x29, #0x180
   15688:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1568c:	68 da 1f 39	strb	w8, [x19, #0x7f6]
   15690:	a8 de 5f 39	ldrb	w8, [x21, #0x7f7]
   15694:	08 79 1e 52	eor	w8, w8, #0xfffffffd
   15698:	68 de 1f 39	strb	w8, [x19, #0x7f7]
   1569c:	88 12 80 52	mov	w8, #0x94
   156a0:	08 00 08 4a	eor	w8, w0, w8
   156a4:	68 e2 1f 39	strb	w8, [x19, #0x7f8]
   156a8:	7c e6 1f 39	strb	w28, [x19, #0x7f9]
   156ac:	e8 03 22 2a	mvn	w8, w2
   156b0:	68 ea 1f 39	strb	w8, [x19, #0x7fa]
   156b4:	a8 23 02 d1	sub	x8, x29, #0x88
   156b8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   156bc:	08 69 01 51	sub	w8, w8, #0x5a
   156c0:	68 ee 1f 39	strb	w8, [x19, #0x7fb]
   156c4:	a8 f2 5f 39	ldrb	w8, [x21, #0x7fc]
   156c8:	e9 09 80 52	mov	w9, #0x4f
   156cc:	08 01 09 4a	eor	w8, w8, w9
   156d0:	68 f2 1f 39	strb	w8, [x19, #0x7fc]
   156d4:	a8 03 0b d1	sub	x8, x29, #0x2c0
   156d8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   156dc:	68 f6 1f 39	strb	w8, [x19, #0x7fd]
   156e0:	a8 53 02 d1	sub	x8, x29, #0x94
   156e4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   156e8:	08 75 00 51	sub	w8, w8, #0x1d
   156ec:	68 fa 1f 39	strb	w8, [x19, #0x7fe]
   156f0:	a8 fe 5f 39	ldrb	w8, [x21, #0x7ff]
   156f4:	08 01 0b 4a	eor	w8, w8, w11
   156f8:	7b 09 80 52	mov	w27, #0x4b
   156fc:	68 fe 1f 39	strb	w8, [x19, #0x7ff]
   15700:	a8 02 60 39	ldrb	w8, [x21, #0x800]
   15704:	08 05 1e 52	eor	w8, w8, #0xc
   15708:	68 02 20 39	strb	w8, [x19, #0x800]
   1570c:	a8 f3 0a d1	sub	x8, x29, #0x2bc
   15710:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15714:	e8 03 28 2a	mvn	w8, w8
   15718:	68 06 20 39	strb	w8, [x19, #0x801]
   1571c:	a8 0a 60 39	ldrb	w8, [x21, #0x802]
   15720:	49 0f 80 52	mov	w9, #0x7a
   15724:	08 01 09 4a	eor	w8, w8, w9
   15728:	68 0a 20 39	strb	w8, [x19, #0x802]
   1572c:	a8 0e 60 39	ldrb	w8, [x21, #0x803]
   15730:	08 01 0a 4a	eor	w8, w8, w10
   15734:	68 0e 20 39	strb	w8, [x19, #0x803]
   15738:	a8 12 60 39	ldrb	w8, [x21, #0x804]
   1573c:	0a 19 80 52	mov	w10, #0xc8
   15740:	08 01 0a 4a	eor	w8, w8, w10
   15744:	68 12 20 39	strb	w8, [x19, #0x804]
   15748:	a8 16 60 39	ldrb	w8, [x21, #0x805]
   1574c:	08 01 0d 4a	eor	w8, w8, w13
   15750:	6b 0c 80 52	mov	w11, #0x63
   15754:	68 16 20 39	strb	w8, [x19, #0x805]
   15758:	a8 1a 60 39	ldrb	w8, [x21, #0x806]
   1575c:	08 01 09 4a	eor	w8, w8, w9
   15760:	42 0f 80 52	mov	w2, #0x7a
   15764:	68 1a 20 39	strb	w8, [x19, #0x806]
   15768:	a8 a3 0a d1	sub	x8, x29, #0x2a8
   1576c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15770:	e8 03 28 2a	mvn	w8, w8
   15774:	68 1e 20 39	strb	w8, [x19, #0x807]
   15778:	a8 c3 0a d1	sub	x8, x29, #0x2b0
   1577c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15780:	e8 03 28 2a	mvn	w8, w8
   15784:	68 22 20 39	strb	w8, [x19, #0x808]
   15788:	a8 73 02 d1	sub	x8, x29, #0x9c
   1578c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15790:	08 15 01 11	add	w8, w8, #0x45
   15794:	68 26 20 39	strb	w8, [x19, #0x809]
   15798:	a8 93 02 d1	sub	x8, x29, #0xa4
   1579c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   157a0:	08 29 00 11	add	w8, w8, #0xa
   157a4:	68 2a 20 39	strb	w8, [x19, #0x80a]
   157a8:	a8 b3 0a d1	sub	x8, x29, #0x2ac
   157ac:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   157b0:	e8 03 28 2a	mvn	w8, w8
   157b4:	68 2e 20 39	strb	w8, [x19, #0x80b]
   157b8:	a8 a3 02 d1	sub	x8, x29, #0xa8
   157bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   157c0:	08 a9 01 51	sub	w8, w8, #0x6a
   157c4:	68 32 20 39	strb	w8, [x19, #0x80c]
   157c8:	a8 36 60 39	ldrb	w8, [x21, #0x80d]
   157cc:	90 0d 80 52	mov	w16, #0x6c
   157d0:	08 01 10 4a	eor	w8, w8, w16
   157d4:	68 36 20 39	strb	w8, [x19, #0x80d]
   157d8:	a8 3a 60 39	ldrb	w8, [x21, #0x80e]
   157dc:	08 05 1d 52	eor	w8, w8, #0x18
   157e0:	68 3a 20 39	strb	w8, [x19, #0x80e]
   157e4:	a8 33 0a d1	sub	x8, x29, #0x28c
   157e8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   157ec:	08 01 17 4a	eor	w8, w8, w23
   157f0:	68 3e 20 39	strb	w8, [x19, #0x80f]
   157f4:	a8 42 60 39	ldrb	w8, [x21, #0x810]
   157f8:	08 01 0e 4a	eor	w8, w8, w14
   157fc:	68 42 20 39	strb	w8, [x19, #0x810]
   15800:	a8 43 0a d1	sub	x8, x29, #0x290
   15804:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15808:	68 46 20 39	strb	w8, [x19, #0x811]
   1580c:	a8 83 0a d1	sub	x8, x29, #0x2a0
   15810:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15814:	68 4a 20 39	strb	w8, [x19, #0x812]
   15818:	a8 c3 02 d1	sub	x8, x29, #0xb0
   1581c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15820:	08 b9 01 51	sub	w8, w8, #0x6e
   15824:	68 4e 20 39	strb	w8, [x19, #0x813]
   15828:	a8 52 60 39	ldrb	w8, [x21, #0x814]
   1582c:	ed 05 80 52	mov	w13, #0x2f
   15830:	08 01 0d 4a	eor	w8, w8, w13
   15834:	68 52 20 39	strb	w8, [x19, #0x814]
   15838:	a8 63 0a d1	sub	x8, x29, #0x298
   1583c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15840:	e8 03 28 2a	mvn	w8, w8
   15844:	68 56 20 39	strb	w8, [x19, #0x815]
   15848:	a8 93 0a d1	sub	x8, x29, #0x2a4
   1584c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15850:	e8 03 28 2a	mvn	w8, w8
   15854:	68 5a 20 39	strb	w8, [x19, #0x816]
   15858:	a8 5e 60 39	ldrb	w8, [x21, #0x817]
   1585c:	34 09 80 52	mov	w20, #0x49
   15860:	08 01 14 4a	eor	w8, w8, w20
   15864:	68 5e 20 39	strb	w8, [x19, #0x817]
   15868:	a8 e3 02 d1	sub	x8, x29, #0xb8
   1586c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15870:	08 89 01 11	add	w8, w8, #0x62
   15874:	68 62 20 39	strb	w8, [x19, #0x818]
   15878:	a8 53 0a d1	sub	x8, x29, #0x294
   1587c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15880:	08 01 1a 52	eor	w8, w8, #0x40
   15884:	68 66 20 39	strb	w8, [x19, #0x819]
   15888:	a8 73 0a d1	sub	x8, x29, #0x29c
   1588c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15890:	e8 03 28 2a	mvn	w8, w8
   15894:	68 6a 20 39	strb	w8, [x19, #0x81a]
   15898:	a8 6e 60 39	ldrb	w8, [x21, #0x81b]
   1589c:	69 19 80 52	mov	w9, #0xcb
   158a0:	08 01 09 4a	eor	w8, w8, w9
   158a4:	68 6e 20 39	strb	w8, [x19, #0x81b]
   158a8:	a8 72 60 39	ldrb	w8, [x21, #0x81c]
   158ac:	c9 14 80 52	mov	w9, #0xa6
   158b0:	08 01 09 4a	eor	w8, w8, w9
   158b4:	68 72 20 39	strb	w8, [x19, #0x81c]
   158b8:	98 04 80 52	mov	w24, #0x24
   158bc:	a8 13 0a d1	sub	x8, x29, #0x284
   158c0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   158c4:	08 01 18 4a	eor	w8, w8, w24
   158c8:	68 76 20 39	strb	w8, [x19, #0x81d]
   158cc:	a8 7a 60 39	ldrb	w8, [x21, #0x81e]
   158d0:	08 0d 1c 52	eor	w8, w8, #0xf0
   158d4:	68 7a 20 39	strb	w8, [x19, #0x81e]
   158d8:	a8 7e 60 39	ldrb	w8, [x21, #0x81f]
   158dc:	08 01 1a 4a	eor	w8, w8, w26
   158e0:	68 7e 20 39	strb	w8, [x19, #0x81f]
   158e4:	a8 03 03 d1	sub	x8, x29, #0xc0
   158e8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   158ec:	08 7d 00 51	sub	w8, w8, #0x1f
   158f0:	68 82 20 39	strb	w8, [x19, #0x820]
   158f4:	a8 03 0a d1	sub	x8, x29, #0x280
   158f8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   158fc:	e8 03 28 2a	mvn	w8, w8
   15900:	68 86 20 39	strb	w8, [x19, #0x821]
   15904:	a8 23 03 d1	sub	x8, x29, #0xc8
   15908:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1590c:	08 bd 01 51	sub	w8, w8, #0x6f
   15910:	68 8a 20 39	strb	w8, [x19, #0x822]
   15914:	a8 33 03 d1	sub	x8, x29, #0xcc
   15918:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1591c:	08 69 01 11	add	w8, w8, #0x5a
   15920:	68 8e 20 39	strb	w8, [x19, #0x823]
   15924:	a8 e3 09 d1	sub	x8, x29, #0x278
   15928:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1592c:	08 01 06 4a	eor	w8, w8, w6
   15930:	a0 02 80 52	mov	w0, #0x15
   15934:	68 92 20 39	strb	w8, [x19, #0x824]
   15938:	a8 96 60 39	ldrb	w8, [x21, #0x825]
   1593c:	83 0b 80 52	mov	w3, #0x5c
   15940:	08 01 03 4a	eor	w8, w8, w3
   15944:	68 96 20 39	strb	w8, [x19, #0x825]
   15948:	a8 c3 09 d1	sub	x8, x29, #0x270
   1594c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15950:	68 9a 20 39	strb	w8, [x19, #0x826]
   15954:	a8 9e 60 39	ldrb	w8, [x21, #0x827]
   15958:	6e 15 80 52	mov	w14, #0xab
   1595c:	08 01 0e 4a	eor	w8, w8, w14
   15960:	68 9e 20 39	strb	w8, [x19, #0x827]
   15964:	68 1d 80 52	mov	w8, #0xeb
   15968:	a9 d3 09 d1	sub	x9, x29, #0x274
   1596c:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   15970:	28 01 08 4a	eor	w8, w9, w8
   15974:	68 a2 20 39	strb	w8, [x19, #0x828]
   15978:	a8 f3 09 d1	sub	x8, x29, #0x27c
   1597c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15980:	68 a6 20 39	strb	w8, [x19, #0x829]
   15984:	a8 aa 60 39	ldrb	w8, [x21, #0x82a]
   15988:	31 06 80 52	mov	w17, #0x31
   1598c:	08 01 11 4a	eor	w8, w8, w17
   15990:	68 aa 20 39	strb	w8, [x19, #0x82a]
   15994:	a8 ae 60 39	ldrb	w8, [x21, #0x82b]
   15998:	08 e5 00 52	eor	w8, w8, #0x33333333
   1599c:	68 ae 20 39	strb	w8, [x19, #0x82b]
   159a0:	a8 b2 60 39	ldrb	w8, [x21, #0x82c]
   159a4:	08 01 0c 4a	eor	w8, w8, w12
   159a8:	2a 07 80 52	mov	w10, #0x39
   159ac:	68 b2 20 39	strb	w8, [x19, #0x82c]
   159b0:	a8 a3 09 d1	sub	x8, x29, #0x268
   159b4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   159b8:	68 b6 20 39	strb	w8, [x19, #0x82d]
   159bc:	a8 b3 09 d1	sub	x8, x29, #0x26c
   159c0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   159c4:	e8 03 28 2a	mvn	w8, w8
   159c8:	68 ba 20 39	strb	w8, [x19, #0x82e]
   159cc:	a8 be 60 39	ldrb	w8, [x21, #0x82f]
   159d0:	89 15 80 52	mov	w9, #0xac
   159d4:	08 01 09 4a	eor	w8, w8, w9
   159d8:	68 be 20 39	strb	w8, [x19, #0x82f]
   159dc:	a8 93 03 d1	sub	x8, x29, #0xe4
   159e0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   159e4:	08 d9 00 51	sub	w8, w8, #0x36
   159e8:	68 c2 20 39	strb	w8, [x19, #0x830]
   159ec:	a8 c6 60 39	ldrb	w8, [x21, #0x831]
   159f0:	56 01 80 52	mov	w22, #0xa
   159f4:	08 01 16 4a	eor	w8, w8, w22
   159f8:	68 c6 20 39	strb	w8, [x19, #0x831]
   159fc:	a8 ca 60 39	ldrb	w8, [x21, #0x832]
   15a00:	08 01 04 4a	eor	w8, w8, w4
   15a04:	68 ca 20 39	strb	w8, [x19, #0x832]
   15a08:	a8 a3 03 d1	sub	x8, x29, #0xe8
   15a0c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15a10:	08 7d 01 51	sub	w8, w8, #0x5f
   15a14:	68 ce 20 39	strb	w8, [x19, #0x833]
   15a18:	e6 1a 80 52	mov	w6, #0xd7
   15a1c:	a8 83 09 d1	sub	x8, x29, #0x260
   15a20:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15a24:	08 01 06 4a	eor	w8, w8, w6
   15a28:	68 d2 20 39	strb	w8, [x19, #0x834]
   15a2c:	a8 d6 60 39	ldrb	w8, [x21, #0x835]
   15a30:	08 01 07 4a	eor	w8, w8, w7
   15a34:	68 d6 20 39	strb	w8, [x19, #0x835]
   15a38:	a8 da 60 39	ldrb	w8, [x21, #0x836]
   15a3c:	a4 1a 80 52	mov	w4, #0xd5
   15a40:	08 01 04 4a	eor	w8, w8, w4
   15a44:	68 da 20 39	strb	w8, [x19, #0x836]
   15a48:	a8 de 60 39	ldrb	w8, [x21, #0x837]
   15a4c:	87 0a 80 52	mov	w7, #0x54
   15a50:	08 01 07 4a	eor	w8, w8, w7
   15a54:	68 de 20 39	strb	w8, [x19, #0x837]
   15a58:	a8 e2 60 39	ldrb	w8, [x21, #0x838]
   15a5c:	08 e5 00 52	eor	w8, w8, #0x33333333
   15a60:	68 e2 20 39	strb	w8, [x19, #0x838]
   15a64:	a8 33 09 d1	sub	x8, x29, #0x24c
   15a68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15a6c:	e8 03 28 2a	mvn	w8, w8
   15a70:	68 e6 20 39	strb	w8, [x19, #0x839]
   15a74:	a8 43 09 d1	sub	x8, x29, #0x250
   15a78:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15a7c:	e8 03 28 2a	mvn	w8, w8
   15a80:	68 ea 20 39	strb	w8, [x19, #0x83a]
   15a84:	09 1a 80 52	mov	w9, #0xd0
   15a88:	a8 63 09 d1	sub	x8, x29, #0x258
   15a8c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15a90:	08 01 09 4a	eor	w8, w8, w9
   15a94:	68 ee 20 39	strb	w8, [x19, #0x83b]
   15a98:	a8 f2 60 39	ldrb	w8, [x21, #0x83c]
   15a9c:	8c 16 80 52	mov	w12, #0xb4
   15aa0:	08 01 0c 4a	eor	w8, w8, w12
   15aa4:	68 f2 20 39	strb	w8, [x19, #0x83c]
   15aa8:	a8 53 09 d1	sub	x8, x29, #0x254
   15aac:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ab0:	68 f6 20 39	strb	w8, [x19, #0x83d]
   15ab4:	a8 fa 60 39	ldrb	w8, [x21, #0x83e]
   15ab8:	cc 13 80 52	mov	w12, #0x9e
   15abc:	08 01 0c 4a	eor	w8, w8, w12
   15ac0:	68 fa 20 39	strb	w8, [x19, #0x83e]
   15ac4:	a8 fe 60 39	ldrb	w8, [x21, #0x83f]
   15ac8:	cc 0a 80 52	mov	w12, #0x56
   15acc:	08 01 0c 4a	eor	w8, w8, w12
   15ad0:	68 fe 20 39	strb	w8, [x19, #0x83f]
   15ad4:	a8 c3 03 d1	sub	x8, x29, #0xf0
   15ad8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15adc:	08 55 01 51	sub	w8, w8, #0x55
   15ae0:	68 02 21 39	strb	w8, [x19, #0x840]
   15ae4:	a8 13 09 d1	sub	x8, x29, #0x244
   15ae8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15aec:	08 01 09 4a	eor	w8, w8, w9
   15af0:	0c 1a 80 52	mov	w12, #0xd0
   15af4:	68 06 21 39	strb	w8, [x19, #0x841]
   15af8:	a8 d3 03 d1	sub	x8, x29, #0xf4
   15afc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b00:	08 7d 00 51	sub	w8, w8, #0x1f
   15b04:	68 0a 21 39	strb	w8, [x19, #0x842]
   15b08:	a8 0e 61 39	ldrb	w8, [x21, #0x843]
   15b0c:	08 01 0b 4a	eor	w8, w8, w11
   15b10:	68 0e 21 39	strb	w8, [x19, #0x843]
   15b14:	a8 12 61 39	ldrb	w8, [x21, #0x844]
   15b18:	08 6d 1b 52	eor	w8, w8, #0xffffffe1
   15b1c:	68 12 21 39	strb	w8, [x19, #0x844]
   15b20:	a8 16 61 39	ldrb	w8, [x21, #0x845]
   15b24:	a9 16 80 52	mov	w9, #0xb5
   15b28:	08 01 09 4a	eor	w8, w8, w9
   15b2c:	68 16 21 39	strb	w8, [x19, #0x845]
   15b30:	a8 e3 03 d1	sub	x8, x29, #0xf8
   15b34:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b38:	08 35 01 51	sub	w8, w8, #0x4d
   15b3c:	68 1a 21 39	strb	w8, [x19, #0x846]
   15b40:	a8 f3 03 d1	sub	x8, x29, #0xfc
   15b44:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b48:	08 ad 01 51	sub	w8, w8, #0x6b
   15b4c:	68 1e 21 39	strb	w8, [x19, #0x847]
   15b50:	a8 53 08 d1	sub	x8, x29, #0x214
   15b54:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b58:	68 22 21 39	strb	w8, [x19, #0x848]
   15b5c:	a8 83 08 d1	sub	x8, x29, #0x220
   15b60:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b64:	68 26 21 39	strb	w8, [x19, #0x849]
   15b68:	a8 03 04 d1	sub	x8, x29, #0x100
   15b6c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b70:	08 6d 00 51	sub	w8, w8, #0x1b
   15b74:	68 2a 21 39	strb	w8, [x19, #0x84a]
   15b78:	a8 93 08 d1	sub	x8, x29, #0x224
   15b7c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b80:	68 2e 21 39	strb	w8, [x19, #0x84b]
   15b84:	a8 b3 08 d1	sub	x8, x29, #0x22c
   15b88:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15b8c:	68 32 21 39	strb	w8, [x19, #0x84c]
   15b90:	a8 36 61 39	ldrb	w8, [x21, #0x84d]
   15b94:	69 08 80 52	mov	w9, #0x43
   15b98:	08 01 09 4a	eor	w8, w8, w9
   15b9c:	68 36 21 39	strb	w8, [x19, #0x84d]
   15ba0:	a8 c3 08 d1	sub	x8, x29, #0x230
   15ba4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ba8:	08 01 0e 4a	eor	w8, w8, w14
   15bac:	68 3a 21 39	strb	w8, [x19, #0x84e]
   15bb0:	a8 d3 08 d1	sub	x8, x29, #0x234
   15bb4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15bb8:	e8 03 28 2a	mvn	w8, w8
   15bbc:	68 3e 21 39	strb	w8, [x19, #0x84f]
   15bc0:	a8 f3 08 d1	sub	x8, x29, #0x23c
   15bc4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15bc8:	68 42 21 39	strb	w8, [x19, #0x850]
   15bcc:	a8 46 61 39	ldrb	w8, [x21, #0x851]
   15bd0:	08 01 0f 4a	eor	w8, w8, w15
   15bd4:	68 46 21 39	strb	w8, [x19, #0x851]
   15bd8:	a8 03 09 d1	sub	x8, x29, #0x240
   15bdc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15be0:	08 01 00 52	eor	w8, w8, #0x1
   15be4:	68 4a 21 39	strb	w8, [x19, #0x852]
   15be8:	a8 4e 61 39	ldrb	w8, [x21, #0x853]
   15bec:	49 18 80 52	mov	w9, #0xc2
   15bf0:	08 01 09 4a	eor	w8, w8, w9
   15bf4:	68 4e 21 39	strb	w8, [x19, #0x853]
   15bf8:	a8 e3 08 d1	sub	x8, x29, #0x238
   15bfc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15c00:	68 52 21 39	strb	w8, [x19, #0x854]
   15c04:	a8 23 09 d1	sub	x8, x29, #0x248
   15c08:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15c0c:	08 19 00 52	eor	w8, w8, #0x7f
   15c10:	68 56 21 39	strb	w8, [x19, #0x855]
   15c14:	a8 33 04 d1	sub	x8, x29, #0x10c
   15c18:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15c1c:	08 75 00 51	sub	w8, w8, #0x1d
   15c20:	68 5a 21 39	strb	w8, [x19, #0x856]
   15c24:	a8 5e 61 39	ldrb	w8, [x21, #0x857]
   15c28:	08 01 10 4a	eor	w8, w8, w16
   15c2c:	81 0d 80 52	mov	w1, #0x6c
   15c30:	68 5e 21 39	strb	w8, [x19, #0x857]
   15c34:	a8 62 61 39	ldrb	w8, [x21, #0x858]
   15c38:	e9 15 80 52	mov	w9, #0xaf
   15c3c:	08 01 09 4a	eor	w8, w8, w9
   15c40:	68 62 21 39	strb	w8, [x19, #0x858]
   15c44:	a8 66 61 39	ldrb	w8, [x21, #0x859]
   15c48:	08 01 05 4a	eor	w8, w8, w5
   15c4c:	68 66 21 39	strb	w8, [x19, #0x859]
   15c50:	a8 6a 61 39	ldrb	w8, [x21, #0x85a]
   15c54:	c9 0e 80 52	mov	w9, #0x76
   15c58:	08 01 09 4a	eor	w8, w8, w9
   15c5c:	68 6a 21 39	strb	w8, [x19, #0x85a]
   15c60:	08 15 80 52	mov	w8, #0xa8
   15c64:	a9 63 08 d1	sub	x9, x29, #0x218
   15c68:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   15c6c:	28 01 08 4a	eor	w8, w9, w8
   15c70:	68 6e 21 39	strb	w8, [x19, #0x85b]
   15c74:	a8 72 61 39	ldrb	w8, [x21, #0x85c]
   15c78:	50 05 80 52	mov	w16, #0x2a
   15c7c:	08 01 10 4a	eor	w8, w8, w16
   15c80:	68 72 21 39	strb	w8, [x19, #0x85c]
   15c84:	a8 76 61 39	ldrb	w8, [x21, #0x85d]
   15c88:	69 16 80 52	mov	w9, #0xb3
   15c8c:	08 01 09 4a	eor	w8, w8, w9
   15c90:	68 76 21 39	strb	w8, [x19, #0x85d]
   15c94:	a8 43 08 d1	sub	x8, x29, #0x210
   15c98:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15c9c:	68 7a 21 39	strb	w8, [x19, #0x85e]
   15ca0:	a8 7e 61 39	ldrb	w8, [x21, #0x85f]
   15ca4:	08 e5 03 52	eor	w8, w8, #0x66666666
   15ca8:	68 7e 21 39	strb	w8, [x19, #0x85f]
   15cac:	a8 82 61 39	ldrb	w8, [x21, #0x860]
   15cb0:	08 01 00 4a	eor	w8, w8, w0
   15cb4:	68 82 21 39	strb	w8, [x19, #0x860]
   15cb8:	a8 33 08 d1	sub	x8, x29, #0x20c
   15cbc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15cc0:	e8 03 28 2a	mvn	w8, w8
   15cc4:	68 86 21 39	strb	w8, [x19, #0x861]
   15cc8:	a8 8a 61 39	ldrb	w8, [x21, #0x862]
   15ccc:	c9 10 80 52	mov	w9, #0x86
   15cd0:	08 01 09 4a	eor	w8, w8, w9
   15cd4:	68 8a 21 39	strb	w8, [x19, #0x862]
   15cd8:	a8 8e 61 39	ldrb	w8, [x21, #0x863]
   15cdc:	08 11 1f 52	eor	w8, w8, #0x3e
   15ce0:	68 8e 21 39	strb	w8, [x19, #0x863]
   15ce4:	a8 53 04 d1	sub	x8, x29, #0x114
   15ce8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15cec:	08 69 01 11	add	w8, w8, #0x5a
   15cf0:	68 92 21 39	strb	w8, [x19, #0x864]
   15cf4:	a8 96 61 39	ldrb	w8, [x21, #0x865]
   15cf8:	49 0d 80 52	mov	w9, #0x6a
   15cfc:	08 01 09 4a	eor	w8, w8, w9
   15d00:	68 96 21 39	strb	w8, [x19, #0x865]
   15d04:	a8 73 04 d1	sub	x8, x29, #0x11c
   15d08:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d0c:	08 81 00 51	sub	w8, w8, #0x20
   15d10:	68 9a 21 39	strb	w8, [x19, #0x866]
   15d14:	a8 93 04 d1	sub	x8, x29, #0x124
   15d18:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d1c:	08 85 01 11	add	w8, w8, #0x61
   15d20:	68 9e 21 39	strb	w8, [x19, #0x867]
   15d24:	a8 a2 61 39	ldrb	w8, [x21, #0x868]
   15d28:	29 14 80 52	mov	w9, #0xa1
   15d2c:	08 01 09 4a	eor	w8, w8, w9
   15d30:	68 a2 21 39	strb	w8, [x19, #0x868]
   15d34:	a8 13 07 d1	sub	x8, x29, #0x1c4
   15d38:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d3c:	e8 03 28 2a	mvn	w8, w8
   15d40:	68 a6 21 39	strb	w8, [x19, #0x869]
   15d44:	a8 43 07 d1	sub	x8, x29, #0x1d0
   15d48:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d4c:	68 aa 21 39	strb	w8, [x19, #0x86a]
   15d50:	a8 ae 61 39	ldrb	w8, [x21, #0x86b]
   15d54:	c9 09 80 52	mov	w9, #0x4e
   15d58:	08 01 09 4a	eor	w8, w8, w9
   15d5c:	68 ae 21 39	strb	w8, [x19, #0x86b]
   15d60:	a8 53 07 d1	sub	x8, x29, #0x1d4
   15d64:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d68:	68 b2 21 39	strb	w8, [x19, #0x86c]
   15d6c:	a8 b6 61 39	ldrb	w8, [x21, #0x86d]
   15d70:	0e 0d 80 52	mov	w14, #0x68
   15d74:	08 01 0e 4a	eor	w8, w8, w14
   15d78:	68 b6 21 39	strb	w8, [x19, #0x86d]
   15d7c:	a8 63 07 d1	sub	x8, x29, #0x1d8
   15d80:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d84:	68 ba 21 39	strb	w8, [x19, #0x86e]
   15d88:	a8 c3 04 d1	sub	x8, x29, #0x130
   15d8c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15d90:	08 ed 00 11	add	w8, w8, #0x3b
   15d94:	68 be 21 39	strb	w8, [x19, #0x86f]
   15d98:	a8 c2 61 39	ldrb	w8, [x21, #0x870]
   15d9c:	08 01 18 4a	eor	w8, w8, w24
   15da0:	68 c2 21 39	strb	w8, [x19, #0x870]
   15da4:	a8 23 07 d1	sub	x8, x29, #0x1c8
   15da8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15dac:	e8 03 28 2a	mvn	w8, w8
   15db0:	68 c6 21 39	strb	w8, [x19, #0x871]
   15db4:	a8 73 07 d1	sub	x8, x29, #0x1dc
   15db8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15dbc:	29 03 80 52	mov	w9, #0x19
   15dc0:	08 01 09 4a	eor	w8, w8, w9
   15dc4:	68 ca 21 39	strb	w8, [x19, #0x872]
   15dc8:	a8 ce 61 39	ldrb	w8, [x21, #0x873]
   15dcc:	a9 19 80 52	mov	w9, #0xcd
   15dd0:	08 01 09 4a	eor	w8, w8, w9
   15dd4:	68 ce 21 39	strb	w8, [x19, #0x873]
   15dd8:	a8 83 07 d1	sub	x8, x29, #0x1e0
   15ddc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15de0:	e8 03 28 2a	mvn	w8, w8
   15de4:	68 d2 21 39	strb	w8, [x19, #0x874]
   15de8:	a8 93 07 d1	sub	x8, x29, #0x1e4
   15dec:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15df0:	68 d6 21 39	strb	w8, [x19, #0x875]
   15df4:	a8 da 61 39	ldrb	w8, [x21, #0x876]
   15df8:	49 12 80 52	mov	w9, #0x92
   15dfc:	08 01 09 4a	eor	w8, w8, w9
   15e00:	68 da 21 39	strb	w8, [x19, #0x876]
   15e04:	28 1d 80 52	mov	w8, #0xe9
   15e08:	a9 a3 07 d1	sub	x9, x29, #0x1e8
   15e0c:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   15e10:	28 01 08 4a	eor	w8, w9, w8
   15e14:	68 de 21 39	strb	w8, [x19, #0x877]
   15e18:	a8 e3 04 d1	sub	x8, x29, #0x138
   15e1c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e20:	08 85 00 11	add	w8, w8, #0x21
   15e24:	68 e2 21 39	strb	w8, [x19, #0x878]
   15e28:	a8 e6 61 39	ldrb	w8, [x21, #0x879]
   15e2c:	08 05 1e 52	eor	w8, w8, #0xc
   15e30:	68 e6 21 39	strb	w8, [x19, #0x879]
   15e34:	a8 f3 04 d1	sub	x8, x29, #0x13c
   15e38:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e3c:	08 6d 00 51	sub	w8, w8, #0x1b
   15e40:	68 ea 21 39	strb	w8, [x19, #0x87a]
   15e44:	a8 f3 06 d1	sub	x8, x29, #0x1bc
   15e48:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e4c:	68 ee 21 39	strb	w8, [x19, #0x87b]
   15e50:	a8 f2 61 39	ldrb	w8, [x21, #0x87c]
   15e54:	e9 0c 80 52	mov	w9, #0x67
   15e58:	08 01 09 4a	eor	w8, w8, w9
   15e5c:	68 f2 21 39	strb	w8, [x19, #0x87c]
   15e60:	a8 13 05 d1	sub	x8, x29, #0x144
   15e64:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e68:	08 21 00 11	add	w8, w8, #0x8
   15e6c:	68 f6 21 39	strb	w8, [x19, #0x87d]
   15e70:	a8 fa 61 39	ldrb	w8, [x21, #0x87e]
   15e74:	eb 16 80 52	mov	w11, #0xb7
   15e78:	08 01 0b 4a	eor	w8, w8, w11
   15e7c:	68 fa 21 39	strb	w8, [x19, #0x87e]
   15e80:	a8 93 06 d1	sub	x8, x29, #0x1a4
   15e84:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e88:	e8 03 28 2a	mvn	w8, w8
   15e8c:	68 fe 21 39	strb	w8, [x19, #0x87f]
   15e90:	a8 33 05 d1	sub	x8, x29, #0x14c
   15e94:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15e98:	08 61 00 11	add	w8, w8, #0x18
   15e9c:	68 02 22 39	strb	w8, [x19, #0x880]
   15ea0:	a8 a3 06 d1	sub	x8, x29, #0x1a8
   15ea4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ea8:	68 06 22 39	strb	w8, [x19, #0x881]
   15eac:	a8 0a 62 39	ldrb	w8, [x21, #0x882]
   15eb0:	08 75 1b 52	eor	w8, w8, #0xffffffe7
   15eb4:	68 0a 22 39	strb	w8, [x19, #0x882]
   15eb8:	a8 b3 06 d1	sub	x8, x29, #0x1ac
   15ebc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ec0:	08 01 19 4a	eor	w8, w8, w25
   15ec4:	68 0e 22 39	strb	w8, [x19, #0x883]
   15ec8:	a8 d3 06 d1	sub	x8, x29, #0x1b4
   15ecc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ed0:	08 79 1c 52	eor	w8, w8, #0xfffffff7
   15ed4:	68 12 22 39	strb	w8, [x19, #0x884]
   15ed8:	c8 08 80 52	mov	w8, #0x46
   15edc:	a9 03 07 d1	sub	x9, x29, #0x1c0
   15ee0:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   15ee4:	28 01 08 4a	eor	w8, w9, w8
   15ee8:	68 16 22 39	strb	w8, [x19, #0x885]
   15eec:	a8 63 05 d1	sub	x8, x29, #0x158
   15ef0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ef4:	08 e1 00 51	sub	w8, w8, #0x38
   15ef8:	68 1a 22 39	strb	w8, [x19, #0x886]
   15efc:	a8 1e 62 39	ldrb	w8, [x21, #0x887]
   15f00:	08 01 1e 52	eor	w8, w8, #0x4
   15f04:	68 1e 22 39	strb	w8, [x19, #0x887]
   15f08:	a8 c3 06 d1	sub	x8, x29, #0x1b0
   15f0c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f10:	08 e9 00 52	eor	w8, w8, #0x77777777
   15f14:	68 22 22 39	strb	w8, [x19, #0x888]
   15f18:	a8 e3 06 d1	sub	x8, x29, #0x1b8
   15f1c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f20:	68 26 22 39	strb	w8, [x19, #0x889]
   15f24:	a8 33 07 d1	sub	x8, x29, #0x1cc
   15f28:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f2c:	68 2a 22 39	strb	w8, [x19, #0x88a]
   15f30:	a8 b3 07 d1	sub	x8, x29, #0x1ec
   15f34:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f38:	68 2e 22 39	strb	w8, [x19, #0x88b]
   15f3c:	a8 32 62 39	ldrb	w8, [x21, #0x88c]
   15f40:	08 01 00 4a	eor	w8, w8, w0
   15f44:	68 32 22 39	strb	w8, [x19, #0x88c]
   15f48:	a8 c3 07 d1	sub	x8, x29, #0x1f0
   15f4c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f50:	68 36 22 39	strb	w8, [x19, #0x88d]
   15f54:	a8 3a 62 39	ldrb	w8, [x21, #0x88e]
   15f58:	a0 0e 80 52	mov	w0, #0x75
   15f5c:	08 01 00 4a	eor	w8, w8, w0
   15f60:	68 3a 22 39	strb	w8, [x19, #0x88e]
   15f64:	a8 d3 07 d1	sub	x8, x29, #0x1f4
   15f68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f6c:	68 3e 22 39	strb	w8, [x19, #0x88f]
   15f70:	a8 f3 07 d1	sub	x8, x29, #0x1fc
   15f74:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f78:	08 19 1f 52	eor	w8, w8, #0xfe
   15f7c:	68 42 22 39	strb	w8, [x19, #0x890]
   15f80:	a8 03 08 d1	sub	x8, x29, #0x200
   15f84:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f88:	68 46 22 39	strb	w8, [x19, #0x891]
   15f8c:	a8 23 08 d1	sub	x8, x29, #0x208
   15f90:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15f94:	68 4a 22 39	strb	w8, [x19, #0x892]
   15f98:	a8 83 03 d1	sub	x8, x29, #0xe0
   15f9c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15fa0:	68 4e 22 39	strb	w8, [x19, #0x893]
   15fa4:	a8 52 62 39	ldrb	w8, [x21, #0x894]
   15fa8:	3c 08 80 52	mov	w28, #0x41
   15fac:	08 01 1c 4a	eor	w8, w8, w28
   15fb0:	68 52 22 39	strb	w8, [x19, #0x894]
   15fb4:	a8 13 08 d1	sub	x8, x29, #0x204
   15fb8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15fbc:	68 56 22 39	strb	w8, [x19, #0x895]
   15fc0:	a8 5a 62 39	ldrb	w8, [x21, #0x896]
   15fc4:	c9 1c 80 52	mov	w9, #0xe6
   15fc8:	08 01 09 4a	eor	w8, w8, w9
   15fcc:	68 5a 22 39	strb	w8, [x19, #0x896]
   15fd0:	a8 5e 62 39	ldrb	w8, [x21, #0x897]
   15fd4:	08 01 06 4a	eor	w8, w8, w6
   15fd8:	68 5e 22 39	strb	w8, [x19, #0x897]
   15fdc:	a8 62 62 39	ldrb	w8, [x21, #0x898]
   15fe0:	e8 03 28 2a	mvn	w8, w8
   15fe4:	68 62 22 39	strb	w8, [x19, #0x898]
   15fe8:	a8 d3 05 d1	sub	x8, x29, #0x174
   15fec:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   15ff0:	08 31 00 11	add	w8, w8, #0xc
   15ff4:	68 66 22 39	strb	w8, [x19, #0x899]
   15ff8:	a8 e3 07 d1	sub	x8, x29, #0x1f8
   15ffc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16000:	68 6a 22 39	strb	w8, [x19, #0x89a]
   16004:	a8 6e 62 39	ldrb	w8, [x21, #0x89b]
   16008:	49 07 80 52	mov	w9, #0x3a
   1600c:	08 01 09 4a	eor	w8, w8, w9
   16010:	68 6e 22 39	strb	w8, [x19, #0x89b]
   16014:	a8 72 62 39	ldrb	w8, [x21, #0x89c]
   16018:	08 01 14 4a	eor	w8, w8, w20
   1601c:	68 72 22 39	strb	w8, [x19, #0x89c]
   16020:	a8 76 62 39	ldrb	w8, [x21, #0x89d]
   16024:	e9 02 80 52	mov	w9, #0x17
   16028:	08 01 09 4a	eor	w8, w8, w9
   1602c:	68 76 22 39	strb	w8, [x19, #0x89d]
   16030:	a8 7a 62 39	ldrb	w8, [x21, #0x89e]
   16034:	08 01 0b 4a	eor	w8, w8, w11
   16038:	68 7a 22 39	strb	w8, [x19, #0x89e]
   1603c:	a8 e3 05 d1	sub	x8, x29, #0x178
   16040:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16044:	08 e1 00 51	sub	w8, w8, #0x38
   16048:	68 7e 22 39	strb	w8, [x19, #0x89f]
   1604c:	a8 82 62 39	ldrb	w8, [x21, #0x8a0]
   16050:	49 14 80 52	mov	w9, #0xa2
   16054:	08 01 09 4a	eor	w8, w8, w9
   16058:	68 82 22 39	strb	w8, [x19, #0x8a0]
   1605c:	a8 86 62 39	ldrb	w8, [x21, #0x8a1]
   16060:	e9 04 80 52	mov	w9, #0x27
   16064:	08 01 09 4a	eor	w8, w8, w9
   16068:	68 86 22 39	strb	w8, [x19, #0x8a1]
   1606c:	a8 8a 62 39	ldrb	w8, [x21, #0x8a2]
   16070:	08 01 0e 4a	eor	w8, w8, w14
   16074:	68 8a 22 39	strb	w8, [x19, #0x8a2]
   16078:	a8 33 06 d1	sub	x8, x29, #0x18c
   1607c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16080:	68 8e 22 39	strb	w8, [x19, #0x8a3]
   16084:	a8 92 62 39	ldrb	w8, [x21, #0x8a4]
   16088:	a9 01 80 52	mov	w9, #0xd
   1608c:	08 01 09 4a	eor	w8, w8, w9
   16090:	68 92 22 39	strb	w8, [x19, #0x8a4]
   16094:	a8 43 06 d1	sub	x8, x29, #0x190
   16098:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1609c:	08 01 1b 4a	eor	w8, w8, w27
   160a0:	68 96 22 39	strb	w8, [x19, #0x8a5]
   160a4:	a8 13 06 d1	sub	x8, x29, #0x184
   160a8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   160ac:	08 e5 00 11	add	w8, w8, #0x39
   160b0:	68 9a 22 39	strb	w8, [x19, #0x8a6]
   160b4:	a8 53 06 d1	sub	x8, x29, #0x194
   160b8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   160bc:	08 01 03 4a	eor	w8, w8, w3
   160c0:	8f 0b 80 52	mov	w15, #0x5c
   160c4:	68 9e 22 39	strb	w8, [x19, #0x8a7]
   160c8:	a8 73 06 d1	sub	x8, x29, #0x19c
   160cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   160d0:	68 a2 22 39	strb	w8, [x19, #0x8a8]
   160d4:	a8 83 06 d1	sub	x8, x29, #0x1a0
   160d8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   160dc:	68 a6 22 39	strb	w8, [x19, #0x8a9]
   160e0:	a8 63 03 d1	sub	x8, x29, #0xd8
   160e4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   160e8:	e8 03 28 2a	mvn	w8, w8
   160ec:	68 aa 22 39	strb	w8, [x19, #0x8aa]
   160f0:	a8 ae 62 39	ldrb	w8, [x21, #0x8ab]
   160f4:	09 1b 80 52	mov	w9, #0xd8
   160f8:	08 01 09 4a	eor	w8, w8, w9
   160fc:	68 ae 22 39	strb	w8, [x19, #0x8ab]
   16100:	a8 b2 62 39	ldrb	w8, [x21, #0x8ac]
   16104:	e8 03 28 2a	mvn	w8, w8
   16108:	68 b2 22 39	strb	w8, [x19, #0x8ac]
   1610c:	a8 9e 66 39	ldrb	w8, [x21, #0x9a7]
   16110:	a9 93 00 d1	sub	x9, x29, #0x24
   16114:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16118:	a8 a6 66 39	ldrb	w8, [x21, #0x9a9]
   1611c:	09 01 11 0a	and	w9, w8, w17
   16120:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16124:	a9 a3 00 d1	sub	x9, x29, #0x28
   16128:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1612c:	a8 b6 66 39	ldrb	w8, [x21, #0x9ad]
   16130:	09 01 1b 12	and	w9, w8, #0x20
   16134:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16138:	a9 b3 00 d1	sub	x9, x29, #0x2c
   1613c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16140:	a8 f2 66 39	ldrb	w8, [x21, #0x9bc]
   16144:	09 11 1f 12	and	w9, w8, #0x3e
   16148:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1614c:	a9 c3 00 d1	sub	x9, x29, #0x30
   16150:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16154:	a8 12 67 39	ldrb	w8, [x21, #0x9c4]
   16158:	09 79 1b 12	and	w9, w8, #0xffffffef
   1615c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16160:	a9 e3 00 d1	sub	x9, x29, #0x38
   16164:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16168:	a8 1a 67 39	ldrb	w8, [x21, #0x9c6]
   1616c:	09 75 1d 12	and	w9, w8, #0xfffffff9
   16170:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16174:	a9 f3 00 d1	sub	x9, x29, #0x3c
   16178:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1617c:	a8 3a 67 39	ldrb	w8, [x21, #0x9ce]
   16180:	e9 0a 80 52	mov	w9, #0x57
   16184:	09 01 09 0a	and	w9, w8, w9
   16188:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1618c:	a9 03 01 d1	sub	x9, x29, #0x40
   16190:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16194:	a8 5e 67 39	ldrb	w8, [x21, #0x9d7]
   16198:	6e 01 80 52	mov	w14, #0xb
   1619c:	09 01 0e 0a	and	w9, w8, w14
   161a0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   161a4:	a9 23 01 d1	sub	x9, x29, #0x48
   161a8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   161ac:	a8 9a 67 39	ldrb	w8, [x21, #0x9e6]
   161b0:	09 01 00 0a	and	w9, w8, w0
   161b4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   161b8:	a9 73 01 d1	sub	x9, x29, #0x5c
   161bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   161c0:	a8 b6 67 39	ldrb	w8, [x21, #0x9ed]
   161c4:	09 75 1b 12	and	w9, w8, #0xffffffe7
   161c8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   161cc:	a9 23 02 d1	sub	x9, x29, #0x88
   161d0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   161d4:	a8 be 67 39	ldrb	w8, [x21, #0x9ef]
   161d8:	09 09 1e 12	and	w9, w8, #0x1c
   161dc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   161e0:	a9 53 02 d1	sub	x9, x29, #0x94
   161e4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   161e8:	a8 ce 67 39	ldrb	w8, [x21, #0x9f3]
   161ec:	09 05 1f 12	and	w9, w8, #0x6
   161f0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   161f4:	a9 73 02 d1	sub	x9, x29, #0x9c
   161f8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   161fc:	a8 fe 67 39	ldrb	w8, [x21, #0x9ff]
   16200:	09 05 1d 12	and	w9, w8, #0x18
   16204:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16208:	a9 93 02 d1	sub	x9, x29, #0xa4
   1620c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16210:	a8 06 68 39	ldrb	w8, [x21, #0xa01]
   16214:	09 01 02 0a	and	w9, w8, w2
   16218:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1621c:	a9 c3 02 d1	sub	x9, x29, #0xb0
   16220:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16224:	a8 0a 68 39	ldrb	w8, [x21, #0xa02]
   16228:	09 01 00 12	and	w9, w8, #0x1
   1622c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16230:	a9 e3 02 d1	sub	x9, x29, #0xb8
   16234:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16238:	a8 0e 68 39	ldrb	w8, [x21, #0xa03]
   1623c:	09 01 07 0a	and	w9, w8, w7
   16240:	83 0a 80 52	mov	w3, #0x54
   16244:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16248:	a9 03 03 d1	sub	x9, x29, #0xc0
   1624c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16250:	a8 12 68 39	ldrb	w8, [x21, #0xa04]
   16254:	6b 04 80 52	mov	w11, #0x23
   16258:	09 01 0b 0a	and	w9, w8, w11
   1625c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16260:	a9 23 03 d1	sub	x9, x29, #0xc8
   16264:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16268:	a8 1e 68 39	ldrb	w8, [x21, #0xa07]
   1626c:	09 11 1f 12	and	w9, w8, #0x3e
   16270:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16274:	a9 33 03 d1	sub	x9, x29, #0xcc
   16278:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1627c:	a8 3e 68 39	ldrb	w8, [x21, #0xa0f]
   16280:	09 01 0f 0a	and	w9, w8, w15
   16284:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16288:	a9 63 03 d1	sub	x9, x29, #0xd8
   1628c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16290:	a8 4e 68 39	ldrb	w8, [x21, #0xa13]
   16294:	49 08 80 52	mov	w9, #0x42
   16298:	09 01 09 0a	and	w9, w8, w9
   1629c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   162a0:	a9 83 03 d1	sub	x9, x29, #0xe0
   162a4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   162a8:	a8 5a 68 39	ldrb	w8, [x21, #0xa16]
   162ac:	6f 0b 80 52	mov	w15, #0x5b
   162b0:	09 01 0f 0a	and	w9, w8, w15
   162b4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   162b8:	a9 93 03 d1	sub	x9, x29, #0xe4
   162bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   162c0:	a8 96 68 39	ldrb	w8, [x21, #0xa25]
   162c4:	49 06 80 52	mov	w9, #0x32
   162c8:	09 01 09 0a	and	w9, w8, w9
   162cc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   162d0:	a9 c3 03 d1	sub	x9, x29, #0xf0
   162d4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   162d8:	a8 ca 68 39	ldrb	w8, [x21, #0xa32]
   162dc:	09 01 0a 0a	and	w9, w8, w10
   162e0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   162e4:	a9 e3 03 d1	sub	x9, x29, #0xf8
   162e8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   162ec:	a8 de 68 39	ldrb	w8, [x21, #0xa37]
   162f0:	09 75 1b 12	and	w9, w8, #0xffffffe7
   162f4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   162f8:	a9 33 04 d1	sub	x9, x29, #0x10c
   162fc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16300:	a8 ea 68 39	ldrb	w8, [x21, #0xa3a]
   16304:	09 11 1f 12	and	w9, w8, #0x3e
   16308:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1630c:	a9 53 04 d1	sub	x9, x29, #0x114
   16310:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16314:	a8 02 69 39	ldrb	w8, [x21, #0xa40]
   16318:	09 01 16 0a	and	w9, w8, w22
   1631c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16320:	a9 73 04 d1	sub	x9, x29, #0x11c
   16324:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16328:	a8 0a 69 39	ldrb	w8, [x21, #0xa42]
   1632c:	09 01 0b 0a	and	w9, w8, w11
   16330:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16334:	a9 93 04 d1	sub	x9, x29, #0x124
   16338:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1633c:	a8 1a 69 39	ldrb	w8, [x21, #0xa46]
   16340:	89 02 80 52	mov	w9, #0x14
   16344:	09 01 09 0a	and	w9, w8, w9
   16348:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1634c:	a9 c3 04 d1	sub	x9, x29, #0x130
   16350:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16354:	a8 2e 69 39	ldrb	w8, [x21, #0xa4b]
   16358:	09 71 1c 12	and	w9, w8, #0xfffffff1
   1635c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16360:	a9 e3 04 d1	sub	x9, x29, #0x138
   16364:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16368:	a8 3e 69 39	ldrb	w8, [x21, #0xa4f]
   1636c:	09 09 1d 12	and	w9, w8, #0x38
   16370:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16374:	a9 13 05 d1	sub	x9, x29, #0x144
   16378:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1637c:	a8 42 69 39	ldrb	w8, [x21, #0xa50]
   16380:	29 05 80 52	mov	w9, #0x29
   16384:	09 01 09 0a	and	w9, w8, w9
   16388:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1638c:	a9 33 05 d1	sub	x9, x29, #0x14c
   16390:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16394:	a8 6a 69 39	ldrb	w8, [x21, #0xa5a]
   16398:	49 0b 80 52	mov	w9, #0x5a
   1639c:	09 01 09 0a	and	w9, w8, w9
   163a0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   163a4:	a9 63 05 d1	sub	x9, x29, #0x158
   163a8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   163ac:	a8 82 69 39	ldrb	w8, [x21, #0xa60]
   163b0:	8a 0c 80 52	mov	w10, #0x64
   163b4:	09 01 0a 0a	and	w9, w8, w10
   163b8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   163bc:	a9 c3 05 d1	sub	x9, x29, #0x170
   163c0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   163c4:	a8 a2 69 39	ldrb	w8, [x21, #0xa68]
   163c8:	09 e5 02 12	and	w9, w8, #0xcccccccc
   163cc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   163d0:	a9 d3 05 d1	sub	x9, x29, #0x174
   163d4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   163d8:	a8 d2 69 39	ldrb	w8, [x21, #0xa74]
   163dc:	09 79 1e 12	and	w9, w8, #0xfffffffd
   163e0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   163e4:	a9 03 06 d1	sub	x9, x29, #0x180
   163e8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   163ec:	a8 d6 69 39	ldrb	w8, [x21, #0xa75]
   163f0:	49 0a 80 52	mov	w9, #0x52
   163f4:	09 01 09 0a	and	w9, w8, w9
   163f8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   163fc:	a9 13 06 d1	sub	x9, x29, #0x184
   16400:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16404:	a8 da 69 39	ldrb	w8, [x21, #0xa76]
   16408:	a9 07 80 52	mov	w9, #0x3d
   1640c:	09 01 09 0a	and	w9, w8, w9
   16410:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16414:	a9 33 06 d1	sub	x9, x29, #0x18c
   16418:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1641c:	a8 e6 69 39	ldrb	w8, [x21, #0xa79]
   16420:	09 01 0f 0a	and	w9, w8, w15
   16424:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16428:	a9 43 06 d1	sub	x9, x29, #0x190
   1642c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16430:	a8 ea 69 39	ldrb	w8, [x21, #0xa7a]
   16434:	09 e5 03 12	and	w9, w8, #0x66666666
   16438:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1643c:	a9 53 06 d1	sub	x9, x29, #0x194
   16440:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16444:	a8 02 6a 39	ldrb	w8, [x21, #0xa80]
   16448:	09 01 0a 0a	and	w9, w8, w10
   1644c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16450:	a9 83 06 d1	sub	x9, x29, #0x1a0
   16454:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16458:	a8 06 6a 39	ldrb	w8, [x21, #0xa81]
   1645c:	09 09 1c 12	and	w9, w8, #0x70
   16460:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16464:	a9 93 06 d1	sub	x9, x29, #0x1a4
   16468:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1646c:	a8 0a 6a 39	ldrb	w8, [x21, #0xa82]
   16470:	c9 04 80 52	mov	w9, #0x26
   16474:	09 01 09 0a	and	w9, w8, w9
   16478:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   1647c:	a9 b3 06 d1	sub	x9, x29, #0x1ac
   16480:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16484:	a8 16 6a 39	ldrb	w8, [x21, #0xa85]
   16488:	09 05 1d 12	and	w9, w8, #0x18
   1648c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   16490:	a9 d3 06 d1	sub	x9, x29, #0x1b4
   16494:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16498:	a8 66 6a 39	ldrb	w8, [x21, #0xa99]
   1649c:	09 01 11 0a	and	w9, w8, w17
   164a0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   164a4:	a9 03 07 d1	sub	x9, x29, #0x1c0
   164a8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   164ac:	a8 6a 6a 39	ldrb	w8, [x21, #0xa9a]
   164b0:	09 05 1e 12	and	w9, w8, #0xc
   164b4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   164b8:	a9 13 07 d1	sub	x9, x29, #0x1c4
   164bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   164c0:	a9 0a 64 39	ldrb	w9, [x21, #0x902]
   164c4:	08 1c 80 52	mov	w8, #0xe0
   164c8:	06 01 29 0a	bic	w6, w8, w9
   164cc:	26 11 00 33	bfxil	w6, w9, #0, #5
   164d0:	aa 2e 64 39	ldrb	w10, [x21, #0x90b]
   164d4:	f4 03 2a 2a	mvn	w20, w10
   164d8:	54 01 00 33	bfxil	w20, w10, #0, #1
   164dc:	aa b2 64 39	ldrb	w10, [x21, #0x92c]
   164e0:	e8 03 2a 2a	mvn	w8, w10
   164e4:	48 11 00 33	bfxil	w8, w10, #0, #5
   164e8:	a9 53 01 d1	sub	x9, x29, #0x54
   164ec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   164f0:	aa be 64 39	ldrb	w10, [x21, #0x92f]
   164f4:	88 1f 80 52	mov	w8, #0xfc
   164f8:	08 01 2a 0a	bic	w8, w8, w10
   164fc:	48 05 00 33	bfxil	w8, w10, #0, #2
   16500:	a9 b3 01 d1	sub	x9, x29, #0x6c
   16504:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16508:	aa 9e 65 39	ldrb	w10, [x21, #0x967]
   1650c:	e8 03 2a 2a	mvn	w8, w10
   16510:	48 0d 00 33	bfxil	w8, w10, #0, #4
   16514:	a9 93 01 d1	sub	x9, x29, #0x64
   16518:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1651c:	aa b2 65 39	ldrb	w10, [x21, #0x96c]
   16520:	08 10 80 52	mov	w8, #0x80
   16524:	08 01 2a 0a	bic	w8, w8, w10
   16528:	48 19 00 33	bfxil	w8, w10, #0, #7
   1652c:	a9 63 01 d1	sub	x9, x29, #0x58
   16530:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16534:	aa ce 62 39	ldrb	w10, [x21, #0x8b3]
   16538:	4b 01 0d 0a	and	w11, w10, w13
   1653c:	8a 01 2a 0a	bic	w10, w12, w10
   16540:	68 01 0a 2a	orr	w8, w11, w10
   16544:	a9 63 0a d1	sub	x9, x29, #0x298
   16548:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1654c:	ab d6 62 39	ldrb	w11, [x21, #0x8b5]
   16550:	68 03 80 52	mov	w8, #0x1b
   16554:	0c 01 2b 0a	bic	w12, w8, w11
   16558:	88 1c 80 52	mov	w8, #0xe4
   1655c:	6b 01 08 0a	and	w11, w11, w8
   16560:	88 01 0b 2a	orr	w8, w12, w11
   16564:	a9 73 0a d1	sub	x9, x29, #0x29c
   16568:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1656c:	ac e6 62 39	ldrb	w12, [x21, #0x8b9]
   16570:	ed 03 2c 2a	mvn	w13, w12
   16574:	ad e9 02 12	and	w13, w13, #0xdddddddd
   16578:	8c e1 03 12	and	w12, w12, #0x22222222
   1657c:	a8 01 0c 2a	orr	w8, w13, w12
   16580:	a9 33 0a d1	sub	x9, x29, #0x28c
   16584:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16588:	ac ea 62 39	ldrb	w12, [x21, #0x8ba]
   1658c:	6a 12 80 52	mov	w10, #0x93
   16590:	4d 01 2c 0a	bic	w13, w10, w12
   16594:	8c 01 01 0a	and	w12, w12, w1
   16598:	a8 01 0c 2a	orr	w8, w13, w12
   1659c:	a9 43 0a d1	sub	x9, x29, #0x290
   165a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   165a4:	ac f6 62 39	ldrb	w12, [x21, #0x8bd]
   165a8:	ce 01 2c 0a	bic	w14, w14, w12
   165ac:	88 1e 80 52	mov	w8, #0xf4
   165b0:	8c 01 08 0a	and	w12, w12, w8
   165b4:	c8 01 0c 2a	orr	w8, w14, w12
   165b8:	a9 83 0a d1	sub	x9, x29, #0x2a0
   165bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   165c0:	ac fa 62 39	ldrb	w12, [x21, #0x8be]
   165c4:	8e 00 2c 0a	bic	w14, w4, w12
   165c8:	8c 01 10 0a	and	w12, w12, w16
   165cc:	c8 01 0c 2a	orr	w8, w14, w12
   165d0:	a9 23 0a d1	sub	x9, x29, #0x288
   165d4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   165d8:	ac fe 62 39	ldrb	w12, [x21, #0x8bf]
   165dc:	f1 03 2c 2a	mvn	w17, w12
   165e0:	31 7a 1b 12	and	w17, w17, #0xffffffef
   165e4:	8c 01 1c 12	and	w12, w12, #0x10
   165e8:	28 02 0c 2a	orr	w8, w17, w12
   165ec:	a9 53 0a d1	sub	x9, x29, #0x294
   165f0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   165f4:	b1 1e 63 39	ldrb	w17, [x21, #0x8c7]
   165f8:	e1 03 31 2a	mvn	w1, w17
   165fc:	21 68 19 12	and	w1, w1, #0xffffff83
   16600:	31 12 1e 12	and	w17, w17, #0x7c
   16604:	28 00 11 2a	orr	w8, w1, w17
   16608:	a9 13 0a d1	sub	x9, x29, #0x284
   1660c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16610:	a1 2a 63 39	ldrb	w1, [x21, #0x8ca]
   16614:	a8 16 80 52	mov	w8, #0xb5
   16618:	22 00 08 0a	and	w2, w1, w8
   1661c:	49 09 80 52	mov	w9, #0x4a
   16620:	21 01 21 0a	bic	w1, w9, w1
   16624:	4b 00 01 2a	orr	w11, w2, w1
   16628:	ac b3 09 d1	sub	x12, x29, #0x26c
   1662c:	8b 01 10 b8	stur	w11, [x12, #-0x100]
   16630:	a2 36 63 39	ldrb	w2, [x21, #0x8cd]
   16634:	44 00 08 0a	and	w4, w2, w8
   16638:	22 01 22 0a	bic	w2, w9, w2
   1663c:	88 00 02 2a	orr	w8, w4, w2
   16640:	a9 a3 09 d1	sub	x9, x29, #0x268
   16644:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16648:	a4 3e 63 39	ldrb	w4, [x21, #0x8cf]
   1664c:	89 14 80 52	mov	w9, #0xa4
   16650:	25 01 24 0a	bic	w5, w9, w4
   16654:	68 0b 80 52	mov	w8, #0x5b
   16658:	84 00 08 0a	and	w4, w4, w8
   1665c:	ab 00 04 2a	orr	w11, w5, w4
   16660:	ac e3 08 d1	sub	x12, x29, #0x238
   16664:	8b 01 10 b8	stur	w11, [x12, #-0x100]
   16668:	a5 4a 63 39	ldrb	w5, [x21, #0x8d2]
   1666c:	47 01 25 0a	bic	w7, w10, w5
   16670:	6b 12 80 52	mov	w11, #0x93
   16674:	8a 0d 80 52	mov	w10, #0x6c
   16678:	a5 00 0a 0a	and	w5, w5, w10
   1667c:	e5 00 05 2a	orr	w5, w7, w5
   16680:	a7 56 63 39	ldrb	w7, [x21, #0x8d5]
   16684:	f6 00 08 2a	orr	w22, w7, w8
   16688:	27 01 27 2a	orn	w7, w9, w7
   1668c:	c7 02 07 0a	and	w7, w22, w7
   16690:	b6 66 63 39	ldrb	w22, [x21, #0x8d9]
   16694:	f7 03 36 2a	mvn	w23, w22
   16698:	d6 06 1a 32	orr	w22, w22, #0xc0
   1669c:	f7 16 00 32	orr	w23, w23, #0x3f
   166a0:	d7 02 17 0a	and	w23, w22, w23
   166a4:	b6 6e 63 39	ldrb	w22, [x21, #0x8db]
   166a8:	f8 03 36 2a	mvn	w24, w22
   166ac:	18 77 19 12	and	w24, w24, #0xffffff9f
   166b0:	d6 06 1b 12	and	w22, w22, #0x60
   166b4:	08 03 16 2a	orr	w8, w24, w22
   166b8:	a9 03 0a d1	sub	x9, x29, #0x280
   166bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   166c0:	b8 7a 63 39	ldrb	w24, [x21, #0x8de]
   166c4:	59 01 38 0a	bic	w25, w10, w24
   166c8:	18 03 0b 0a	and	w24, w24, w11
   166cc:	38 03 18 2a	orr	w24, w25, w24
   166d0:	b9 86 63 39	ldrb	w25, [x21, #0x8e1]
   166d4:	0c 0b 80 52	mov	w12, #0x58
   166d8:	3a 03 0c 0a	and	w26, w25, w12
   166dc:	ef 14 80 52	mov	w15, #0xa7
   166e0:	f9 01 39 0a	bic	w25, w15, w25
   166e4:	59 03 19 2a	orr	w25, w26, w25
   166e8:	ba 8e 63 39	ldrb	w26, [x21, #0x8e3]
   166ec:	c8 17 80 52	mov	w8, #0xbe
   166f0:	1b 01 3a 0a	bic	w27, w8, w26
   166f4:	5a 03 1c 0a	and	w26, w26, w28
   166f8:	7b 03 1a 2a	orr	w27, w27, w26
   166fc:	ba 96 63 39	ldrb	w26, [x21, #0x8e5]
   16700:	fc 03 3a 2a	mvn	w28, w26
   16704:	9c f3 00 32	orr	w28, w28, #0x55555555
   16708:	5a f3 01 32	orr	w26, w26, #0xaaaaaaaa
   1670c:	9a 03 1a 0a	and	w26, w28, w26
   16710:	bc a6 63 39	ldrb	w28, [x21, #0x8e9]
   16714:	fe 03 3c 2a	mvn	w30, w28
   16718:	9c 13 1d 32	orr	w28, w28, #0xf8
   1671c:	de 0b 00 32	orr	w30, w30, #0x7
   16720:	9c 03 1e 0a	and	w28, w28, w30
   16724:	be b2 63 39	ldrb	w30, [x21, #0x8ec]
   16728:	48 0e 80 52	mov	w8, #0x72
   1672c:	08 01 3e 0a	bic	w8, w8, w30
   16730:	a9 11 80 52	mov	w9, #0x8d
   16734:	de 03 09 0a	and	w30, w30, w9
   16738:	08 01 1e 2a	orr	w8, w8, w30
   1673c:	a9 e3 09 d1	sub	x9, x29, #0x278
   16740:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16744:	a8 b6 63 39	ldrb	w8, [x21, #0x8ed]
   16748:	c9 18 80 52	mov	w9, #0xc6
   1674c:	3e 01 28 0a	bic	w30, w9, w8
   16750:	36 07 80 52	mov	w22, #0x39
   16754:	08 01 16 0a	and	w8, w8, w22
   16758:	c8 03 08 2a	orr	w8, w30, w8
   1675c:	a9 93 09 d1	sub	x9, x29, #0x264
   16760:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16764:	a8 be 63 39	ldrb	w8, [x21, #0x8ef]
   16768:	09 19 80 52	mov	w9, #0xc8
   1676c:	29 01 28 0a	bic	w9, w9, w8
   16770:	ea 06 80 52	mov	w10, #0x37
   16774:	08 01 0a 0a	and	w8, w8, w10
   16778:	28 01 08 2a	orr	w8, w9, w8
   1677c:	a9 f3 09 d1	sub	x9, x29, #0x27c
   16780:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16784:	a8 d6 63 39	ldrb	w8, [x21, #0x8f5]
   16788:	c9 08 80 52	mov	w9, #0x46
   1678c:	29 01 28 0a	bic	w9, w9, w8
   16790:	20 17 80 52	mov	w0, #0xb9
   16794:	08 01 00 0a	and	w8, w8, w0
   16798:	28 01 08 2a	orr	w8, w9, w8
   1679c:	a9 c3 09 d1	sub	x9, x29, #0x270
   167a0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   167a4:	a8 de 63 39	ldrb	w8, [x21, #0x8f7]
   167a8:	e9 03 28 2a	mvn	w9, w8
   167ac:	29 79 1b 12	and	w9, w9, #0xffffffef
   167b0:	08 01 1c 12	and	w8, w8, #0x10
   167b4:	28 01 08 2a	orr	w8, w9, w8
   167b8:	a9 d3 09 d1	sub	x9, x29, #0x274
   167bc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   167c0:	a8 16 64 39	ldrb	w8, [x21, #0x905]
   167c4:	e9 03 28 2a	mvn	w9, w8
   167c8:	08 71 1c 32	orr	w8, w8, #0xfffffff1
   167cc:	29 09 1f 32	orr	w9, w9, #0xe
   167d0:	08 01 09 0a	and	w8, w8, w9
   167d4:	a9 53 09 d1	sub	x9, x29, #0x254
   167d8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   167dc:	a8 1a 64 39	ldrb	w8, [x21, #0x906]
   167e0:	69 15 80 52	mov	w9, #0xab
   167e4:	29 01 28 2a	orn	w9, w9, w8
   167e8:	08 01 03 2a	orr	w8, w8, w3
   167ec:	28 01 08 0a	and	w8, w9, w8
   167f0:	a9 63 09 d1	sub	x9, x29, #0x258
   167f4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   167f8:	a8 22 64 39	ldrb	w8, [x21, #0x908]
   167fc:	c9 06 80 52	mov	w9, #0x36
   16800:	29 01 28 2a	orn	w9, w9, w8
   16804:	2a 19 80 52	mov	w10, #0xc9
   16808:	08 01 0a 2a	orr	w8, w8, w10
   1680c:	28 01 08 0a	and	w8, w9, w8
   16810:	a9 73 09 d1	sub	x9, x29, #0x25c
   16814:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16818:	a8 2a 64 39	ldrb	w8, [x21, #0x90a]
   1681c:	c9 02 80 52	mov	w9, #0x16
   16820:	09 01 09 0a	and	w9, w8, w9
   16824:	2a 1d 80 52	mov	w10, #0xe9
   16828:	48 01 28 0a	bic	w8, w10, w8
   1682c:	28 01 08 2a	orr	w8, w9, w8
   16830:	a9 83 09 d1	sub	x9, x29, #0x260
   16834:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16838:	a8 42 64 39	ldrb	w8, [x21, #0x910]
   1683c:	c2 0b 80 52	mov	w2, #0x5e
   16840:	49 00 28 0a	bic	w9, w2, w8
   16844:	21 14 80 52	mov	w1, #0xa1
   16848:	08 01 01 0a	and	w8, w8, w1
   1684c:	28 01 08 2a	orr	w8, w9, w8
   16850:	a9 43 09 d1	sub	x9, x29, #0x250
   16854:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16858:	a8 6e 64 39	ldrb	w8, [x21, #0x91b]
   1685c:	6e 0c 80 52	mov	w14, #0x63
   16860:	c9 01 28 0a	bic	w9, w14, w8
   16864:	8d 13 80 52	mov	w13, #0x9c
   16868:	08 01 0d 0a	and	w8, w8, w13
   1686c:	28 01 08 2a	orr	w8, w9, w8
   16870:	a9 03 09 d1	sub	x9, x29, #0x240
   16874:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16878:	a8 76 64 39	ldrb	w8, [x21, #0x91d]
   1687c:	11 16 80 52	mov	w17, #0xb0
   16880:	09 01 11 2a	orr	w9, w8, w17
   16884:	f0 09 80 52	mov	w16, #0x4f
   16888:	08 02 28 2a	orn	w8, w16, w8
   1688c:	28 01 08 0a	and	w8, w9, w8
   16890:	a9 13 09 d1	sub	x9, x29, #0x244
   16894:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16898:	a8 7a 64 39	ldrb	w8, [x21, #0x91e]
   1689c:	09 07 80 52	mov	w9, #0x38
   168a0:	29 01 28 0a	bic	w9, w9, w8
   168a4:	08 71 1a 12	and	w8, w8, #0xffffffc7
   168a8:	28 01 08 2a	orr	w8, w9, w8
   168ac:	a9 23 09 d1	sub	x9, x29, #0x248
   168b0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   168b4:	a8 7e 64 39	ldrb	w8, [x21, #0x91f]
   168b8:	ab 02 80 52	mov	w11, #0x15
   168bc:	69 01 28 0a	bic	w9, w11, w8
   168c0:	4a 1d 80 52	mov	w10, #0xea
   168c4:	08 01 0a 0a	and	w8, w8, w10
   168c8:	28 01 08 2a	orr	w8, w9, w8
   168cc:	a9 33 09 d1	sub	x9, x29, #0x24c
   168d0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   168d4:	a8 9e 64 39	ldrb	w8, [x21, #0x927]
   168d8:	a4 06 80 52	mov	w4, #0x35
   168dc:	09 01 04 2a	orr	w9, w8, w4
   168e0:	43 19 80 52	mov	w3, #0xca
   168e4:	68 00 28 2a	orn	w8, w3, w8
   168e8:	08 01 09 0a	and	w8, w8, w9
   168ec:	a9 f3 08 d1	sub	x9, x29, #0x23c
   168f0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   168f4:	a8 ae 64 39	ldrb	w8, [x21, #0x92b]
   168f8:	09 09 80 52	mov	w9, #0x48
   168fc:	29 01 28 0a	bic	w9, w9, w8
   16900:	fe 16 80 52	mov	w30, #0xb7
   16904:	08 01 1e 0a	and	w8, w8, w30
   16908:	28 01 08 2a	orr	w8, w9, w8
   1690c:	a9 d3 08 d1	sub	x9, x29, #0x234
   16910:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16914:	a8 c2 64 39	ldrb	w8, [x21, #0x930]
   16918:	49 01 80 52	mov	w9, #0xa
   1691c:	09 01 09 0a	and	w9, w8, w9
   16920:	be 1e 80 52	mov	w30, #0xf5
   16924:	c8 03 28 0a	bic	w8, w30, w8
   16928:	08 01 09 2a	orr	w8, w8, w9
   1692c:	a9 c3 08 d1	sub	x9, x29, #0x230
   16930:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16934:	a8 d6 64 39	ldrb	w8, [x21, #0x935]
   16938:	69 04 80 52	mov	w9, #0x23
   1693c:	29 01 28 0a	bic	w9, w9, w8
   16940:	9e 1b 80 52	mov	w30, #0xdc
   16944:	08 01 1e 0a	and	w8, w8, w30
   16948:	28 01 08 2a	orr	w8, w9, w8
   1694c:	a9 a3 08 d1	sub	x9, x29, #0x228
   16950:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16954:	a8 da 64 39	ldrb	w8, [x21, #0x936]
   16958:	09 01 0c 0a	and	w9, w8, w12
   1695c:	e8 01 28 0a	bic	w8, w15, w8
   16960:	28 01 08 2a	orr	w8, w9, w8
   16964:	a9 b3 08 d1	sub	x9, x29, #0x22c
   16968:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1696c:	a8 fa 64 39	ldrb	w8, [x21, #0x93e]
   16970:	e9 03 28 2a	mvn	w9, w8
   16974:	29 75 1b 12	and	w9, w9, #0xffffffe7
   16978:	08 05 1d 12	and	w8, w8, #0x18
   1697c:	28 01 08 2a	orr	w8, w9, w8
   16980:	a9 73 08 d1	sub	x9, x29, #0x21c
   16984:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16988:	a8 02 65 39	ldrb	w8, [x21, #0x940]
   1698c:	c9 16 80 52	mov	w9, #0xb6
   16990:	29 01 28 0a	bic	w9, w9, w8
   16994:	2c 09 80 52	mov	w12, #0x49
   16998:	08 01 0c 0a	and	w8, w8, w12
   1699c:	28 01 08 2a	orr	w8, w9, w8
   169a0:	a9 83 08 d1	sub	x9, x29, #0x220
   169a4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   169a8:	a8 06 65 39	ldrb	w8, [x21, #0x941]
   169ac:	89 0e 80 52	mov	w9, #0x74
   169b0:	29 01 28 2a	orn	w9, w9, w8
   169b4:	6c 11 80 52	mov	w12, #0x8b
   169b8:	08 01 0c 2a	orr	w8, w8, w12
   169bc:	28 01 08 0a	and	w8, w9, w8
   169c0:	a9 93 08 d1	sub	x9, x29, #0x224
   169c4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   169c8:	a8 1e 65 39	ldrb	w8, [x21, #0x947]
   169cc:	e9 03 28 2a	mvn	w9, w8
   169d0:	29 71 1c 12	and	w9, w9, #0xfffffff1
   169d4:	08 09 1f 12	and	w8, w8, #0xe
   169d8:	28 01 08 2a	orr	w8, w9, w8
   169dc:	a9 53 08 d1	sub	x9, x29, #0x214
   169e0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   169e4:	a8 26 65 39	ldrb	w8, [x21, #0x949]
   169e8:	5e 03 80 52	mov	w30, #0x1a
   169ec:	09 01 1e 0a	and	w9, w8, w30
   169f0:	ac 1c 80 52	mov	w12, #0xe5
   169f4:	88 01 28 0a	bic	w8, w12, w8
   169f8:	28 01 08 2a	orr	w8, w9, w8
   169fc:	a9 43 08 d1	sub	x9, x29, #0x210
   16a00:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a04:	a8 32 65 39	ldrb	w8, [x21, #0x94c]
   16a08:	69 01 28 0a	bic	w9, w11, w8
   16a0c:	08 01 0a 0a	and	w8, w8, w10
   16a10:	28 01 08 2a	orr	w8, w9, w8
   16a14:	a9 23 08 d1	sub	x9, x29, #0x208
   16a18:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a1c:	a8 42 65 39	ldrb	w8, [x21, #0x950]
   16a20:	a9 08 80 52	mov	w9, #0x45
   16a24:	09 01 09 2a	orr	w9, w8, w9
   16a28:	4a 17 80 52	mov	w10, #0xba
   16a2c:	48 01 28 2a	orn	w8, w10, w8
   16a30:	08 01 09 0a	and	w8, w8, w9
   16a34:	a9 b3 07 d1	sub	x9, x29, #0x1ec
   16a38:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a3c:	a8 46 65 39	ldrb	w8, [x21, #0x951]
   16a40:	a9 0e 80 52	mov	w9, #0x75
   16a44:	29 01 28 0a	bic	w9, w9, w8
   16a48:	4a 11 80 52	mov	w10, #0x8a
   16a4c:	08 01 0a 0a	and	w8, w8, w10
   16a50:	28 01 08 2a	orr	w8, w9, w8
   16a54:	a9 f3 07 d1	sub	x9, x29, #0x1fc
   16a58:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a5c:	a8 5e 65 39	ldrb	w8, [x21, #0x957]
   16a60:	e9 03 28 2a	mvn	w9, w8
   16a64:	29 e1 02 12	and	w9, w9, #0x44444444
   16a68:	08 e9 01 12	and	w8, w8, #0xbbbbbbbb
   16a6c:	28 01 08 2a	orr	w8, w9, w8
   16a70:	a9 53 07 d1	sub	x9, x29, #0x1d4
   16a74:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a78:	a8 62 65 39	ldrb	w8, [x21, #0x958]
   16a7c:	c9 01 28 0a	bic	w9, w14, w8
   16a80:	08 01 0d 0a	and	w8, w8, w13
   16a84:	28 01 08 2a	orr	w8, w9, w8
   16a88:	a9 63 07 d1	sub	x9, x29, #0x1d8
   16a8c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16a90:	a8 66 65 39	ldrb	w8, [x21, #0x959]
   16a94:	29 0f 80 52	mov	w9, #0x79
   16a98:	29 01 28 2a	orn	w9, w9, w8
   16a9c:	ca 10 80 52	mov	w10, #0x86
   16aa0:	08 01 0a 2a	orr	w8, w8, w10
   16aa4:	28 01 08 0a	and	w8, w9, w8
   16aa8:	a9 93 07 d1	sub	x9, x29, #0x1e4
   16aac:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ab0:	a8 72 65 39	ldrb	w8, [x21, #0x95c]
   16ab4:	49 18 80 52	mov	w9, #0xc2
   16ab8:	29 01 28 0a	bic	w9, w9, w8
   16abc:	aa 07 80 52	mov	w10, #0x3d
   16ac0:	08 01 0a 0a	and	w8, w8, w10
   16ac4:	28 01 08 2a	orr	w8, w9, w8
   16ac8:	a9 73 07 d1	sub	x9, x29, #0x1dc
   16acc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ad0:	a8 76 65 39	ldrb	w8, [x21, #0x95d]
   16ad4:	c9 1a 80 52	mov	w9, #0xd6
   16ad8:	09 01 09 0a	and	w9, w8, w9
   16adc:	2a 05 80 52	mov	w10, #0x29
   16ae0:	48 01 28 0a	bic	w8, w10, w8
   16ae4:	28 01 08 2a	orr	w8, w9, w8
   16ae8:	a9 83 07 d1	sub	x9, x29, #0x1e0
   16aec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16af0:	a8 7a 65 39	ldrb	w8, [x21, #0x95e]
   16af4:	09 00 28 0a	bic	w9, w0, w8
   16af8:	2a 17 80 52	mov	w10, #0xb9
   16afc:	cc 08 80 52	mov	w12, #0x46
   16b00:	08 01 0c 0a	and	w8, w8, w12
   16b04:	28 01 08 2a	orr	w8, w9, w8
   16b08:	a9 a3 07 d1	sub	x9, x29, #0x1e8
   16b0c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16b10:	a8 7e 65 39	ldrb	w8, [x21, #0x95f]
   16b14:	e9 03 28 2a	mvn	w9, w8
   16b18:	29 e9 00 12	and	w9, w9, #0x77777777
   16b1c:	08 e1 01 12	and	w8, w8, #0x88888888
   16b20:	28 01 08 2a	orr	w8, w9, w8
   16b24:	a9 e3 07 d1	sub	x9, x29, #0x1f8
   16b28:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16b2c:	a8 86 65 39	ldrb	w8, [x21, #0x961]
   16b30:	e9 03 28 2a	mvn	w9, w8
   16b34:	29 e5 03 12	and	w9, w9, #0x66666666
   16b38:	08 e5 01 12	and	w8, w8, #0x99999999
   16b3c:	28 01 08 2a	orr	w8, w9, w8
   16b40:	a9 13 08 d1	sub	x9, x29, #0x204
   16b44:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16b48:	a8 8a 65 39	ldrb	w8, [x21, #0x962]
   16b4c:	c9 14 80 52	mov	w9, #0xa6
   16b50:	29 01 28 0a	bic	w9, w9, w8
   16b54:	2b 0b 80 52	mov	w11, #0x59
   16b58:	08 01 0b 0a	and	w8, w8, w11
   16b5c:	28 01 08 2a	orr	w8, w9, w8
   16b60:	a9 33 08 d1	sub	x9, x29, #0x20c
   16b64:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16b68:	a8 8e 65 39	ldrb	w8, [x21, #0x963]
   16b6c:	e9 15 80 52	mov	w9, #0xaf
   16b70:	29 01 28 2a	orn	w9, w9, w8
   16b74:	0b 0a 80 52	mov	w11, #0x50
   16b78:	08 01 0b 2a	orr	w8, w8, w11
   16b7c:	28 01 08 0a	and	w8, w9, w8
   16b80:	a9 63 08 d1	sub	x9, x29, #0x218
   16b84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16b88:	a8 aa 65 39	ldrb	w8, [x21, #0x96a]
   16b8c:	09 02 28 0a	bic	w9, w16, w8
   16b90:	08 01 11 0a	and	w8, w8, w17
   16b94:	28 01 08 2a	orr	w8, w9, w8
   16b98:	a9 c3 07 d1	sub	x9, x29, #0x1f0
   16b9c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ba0:	a8 ae 65 39	ldrb	w8, [x21, #0x96b]
   16ba4:	49 16 80 52	mov	w9, #0xb2
   16ba8:	29 01 28 0a	bic	w9, w9, w8
   16bac:	ab 09 80 52	mov	w11, #0x4d
   16bb0:	08 01 0b 0a	and	w8, w8, w11
   16bb4:	28 01 08 2a	orr	w8, w9, w8
   16bb8:	a9 03 08 d1	sub	x9, x29, #0x200
   16bbc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16bc0:	a8 ba 65 39	ldrb	w8, [x21, #0x96e]
   16bc4:	e9 03 28 2a	mvn	w9, w8
   16bc8:	29 e5 01 12	and	w9, w9, #0x99999999
   16bcc:	08 e5 03 12	and	w8, w8, #0x66666666
   16bd0:	28 01 08 2a	orr	w8, w9, w8
   16bd4:	a9 d3 07 d1	sub	x9, x29, #0x1f4
   16bd8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16bdc:	a8 de 65 39	ldrb	w8, [x21, #0x977]
   16be0:	49 00 28 0a	bic	w9, w2, w8
   16be4:	08 01 01 0a	and	w8, w8, w1
   16be8:	28 01 08 2a	orr	w8, w9, w8
   16bec:	a9 43 07 d1	sub	x9, x29, #0x1d0
   16bf0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16bf4:	a8 fa 65 39	ldrb	w8, [x21, #0x97e]
   16bf8:	e9 03 28 2a	mvn	w9, w8
   16bfc:	29 69 19 12	and	w9, w9, #0xffffff83
   16c00:	08 11 1e 12	and	w8, w8, #0x7c
   16c04:	28 01 08 2a	orr	w8, w9, w8
   16c08:	a9 23 07 d1	sub	x9, x29, #0x1c8
   16c0c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16c10:	a8 02 66 39	ldrb	w8, [x21, #0x980]
   16c14:	49 0c 80 52	mov	w9, #0x62
   16c18:	29 01 28 0a	bic	w9, w9, w8
   16c1c:	a1 13 80 52	mov	w1, #0x9d
   16c20:	08 01 01 0a	and	w8, w8, w1
   16c24:	28 01 08 2a	orr	w8, w9, w8
   16c28:	a9 33 07 d1	sub	x9, x29, #0x1cc
   16c2c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16c30:	a8 16 66 39	ldrb	w8, [x21, #0x985]
   16c34:	c2 0e 80 52	mov	w2, #0x76
   16c38:	49 00 28 0a	bic	w9, w2, w8
   16c3c:	2b 11 80 52	mov	w11, #0x89
   16c40:	08 01 0b 0a	and	w8, w8, w11
   16c44:	28 01 08 2a	orr	w8, w9, w8
   16c48:	a9 e3 06 d1	sub	x9, x29, #0x1b8
   16c4c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16c50:	a8 26 66 39	ldrb	w8, [x21, #0x989]
   16c54:	09 01 03 2a	orr	w9, w8, w3
   16c58:	88 00 28 2a	orn	w8, w4, w8
   16c5c:	a0 06 80 52	mov	w0, #0x35
   16c60:	28 01 08 0a	and	w8, w9, w8
   16c64:	a9 e3 05 d1	sub	x9, x29, #0x178
   16c68:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16c6c:	a8 2e 66 39	ldrb	w8, [x21, #0x98b]
   16c70:	e9 03 28 2a	mvn	w9, w8
   16c74:	08 09 1c 12	and	w8, w8, #0x70
   16c78:	29 71 19 12	and	w9, w9, #0xffffff8f
   16c7c:	08 01 09 2a	orr	w8, w8, w9
   16c80:	a9 73 06 d1	sub	x9, x29, #0x19c
   16c84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16c88:	a8 32 66 39	ldrb	w8, [x21, #0x98c]
   16c8c:	ab 01 80 52	mov	w11, #0xd
   16c90:	09 01 0b 0a	and	w9, w8, w11
   16c94:	4d 1e 80 52	mov	w13, #0xf2
   16c98:	a8 01 28 0a	bic	w8, w13, w8
   16c9c:	08 01 09 2a	orr	w8, w8, w9
   16ca0:	a9 a3 06 d1	sub	x9, x29, #0x1a8
   16ca4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ca8:	a8 36 66 39	ldrb	w8, [x21, #0x98d]
   16cac:	69 09 80 52	mov	w9, #0x4b
   16cb0:	29 01 28 0a	bic	w9, w9, w8
   16cb4:	8e 16 80 52	mov	w14, #0xb4
   16cb8:	08 01 0e 0a	and	w8, w8, w14
   16cbc:	28 01 08 2a	orr	w8, w9, w8
   16cc0:	a9 c3 06 d1	sub	x9, x29, #0x1b0
   16cc4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16cc8:	a8 3a 66 39	ldrb	w8, [x21, #0x98e]
   16ccc:	49 0b 80 52	mov	w9, #0x5a
   16cd0:	09 01 09 2a	orr	w9, w8, w9
   16cd4:	ae 14 80 52	mov	w14, #0xa5
   16cd8:	c8 01 28 2a	orn	w8, w14, w8
   16cdc:	28 01 08 0a	and	w8, w9, w8
   16ce0:	a9 f3 06 d1	sub	x9, x29, #0x1bc
   16ce4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ce8:	a8 52 66 39	ldrb	w8, [x21, #0x994]
   16cec:	09 01 0a 2a	orr	w9, w8, w10
   16cf0:	88 01 28 2a	orn	w8, w12, w8
   16cf4:	08 01 09 0a	and	w8, w8, w9
   16cf8:	a9 03 04 d1	sub	x9, x29, #0x100
   16cfc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d00:	a8 5a 66 39	ldrb	w8, [x21, #0x996]
   16d04:	a9 0d 80 52	mov	w9, #0x6d
   16d08:	29 01 28 0a	bic	w9, w9, w8
   16d0c:	4a 12 80 52	mov	w10, #0x92
   16d10:	08 01 0a 0a	and	w8, w8, w10
   16d14:	28 01 08 2a	orr	w8, w9, w8
   16d18:	a9 f3 04 d1	sub	x9, x29, #0x13c
   16d1c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d20:	a8 6e 66 39	ldrb	w8, [x21, #0x99b]
   16d24:	d1 1e 80 52	mov	w17, #0xf6
   16d28:	29 02 28 0a	bic	w9, w17, w8
   16d2c:	2a 01 80 52	mov	w10, #0x9
   16d30:	08 01 0a 0a	and	w8, w8, w10
   16d34:	28 01 08 2a	orr	w8, w9, w8
   16d38:	a9 c3 01 d1	sub	x9, x29, #0x70
   16d3c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d40:	a8 72 66 39	ldrb	w8, [x21, #0x99c]
   16d44:	09 08 80 52	mov	w9, #0x40
   16d48:	29 01 28 0a	bic	w9, w9, w8
   16d4c:	08 79 19 12	and	w8, w8, #0xffffffbf
   16d50:	28 01 08 2a	orr	w8, w9, w8
   16d54:	a9 a3 03 d1	sub	x9, x29, #0xe8
   16d58:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d5c:	a8 76 66 39	ldrb	w8, [x21, #0x99d]
   16d60:	0a 12 80 52	mov	w10, #0x90
   16d64:	09 01 0a 2a	orr	w9, w8, w10
   16d68:	ec 0d 80 52	mov	w12, #0x6f
   16d6c:	88 01 28 2a	orn	w8, w12, w8
   16d70:	28 01 08 0a	and	w8, w9, w8
   16d74:	a9 d3 03 d1	sub	x9, x29, #0xf4
   16d78:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d7c:	a8 7a 66 39	ldrb	w8, [x21, #0x99e]
   16d80:	af 10 80 52	mov	w15, #0x85
   16d84:	e9 01 28 0a	bic	w9, w15, w8
   16d88:	4c 0f 80 52	mov	w12, #0x7a
   16d8c:	08 01 0c 0a	and	w8, w8, w12
   16d90:	28 01 08 2a	orr	w8, w9, w8
   16d94:	a9 f3 03 d1	sub	x9, x29, #0xfc
   16d98:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16d9c:	a8 8a 66 39	ldrb	w8, [x21, #0x9a2]
   16da0:	a9 0b 80 52	mov	w9, #0x5d
   16da4:	09 01 09 2a	orr	w9, w8, w9
   16da8:	4c 14 80 52	mov	w12, #0xa2
   16dac:	88 01 28 2a	orn	w8, w12, w8
   16db0:	28 01 08 0a	and	w8, w9, w8
   16db4:	a9 a3 02 d1	sub	x9, x29, #0xa8
   16db8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16dbc:	a8 92 66 39	ldrb	w8, [x21, #0x9a4]
   16dc0:	89 18 80 52	mov	w9, #0xc4
   16dc4:	29 01 28 0a	bic	w9, w9, w8
   16dc8:	6c 07 80 52	mov	w12, #0x3b
   16dcc:	08 01 0c 0a	and	w8, w8, w12
   16dd0:	28 01 08 2a	orr	w8, w9, w8
   16dd4:	a9 e3 01 d1	sub	x9, x29, #0x78
   16dd8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   16ddc:	09 17 80 52	mov	w9, #0xb8
   16de0:	a8 d3 00 d1	sub	x8, x29, #0x34
   16de4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16de8:	08 01 09 4a	eor	w8, w8, w9
   16dec:	68 b6 22 39	strb	w8, [x19, #0x8ad]
   16df0:	a8 ba 62 39	ldrb	w8, [x21, #0x8ae]
   16df4:	08 01 0b 4a	eor	w8, w8, w11
   16df8:	a3 01 80 52	mov	w3, #0xd
   16dfc:	68 ba 22 39	strb	w8, [x19, #0x8ae]
   16e00:	a8 be 62 39	ldrb	w8, [x21, #0x8af]
   16e04:	a9 1a 80 52	mov	w9, #0xd5
   16e08:	08 01 09 4a	eor	w8, w8, w9
   16e0c:	68 be 22 39	strb	w8, [x19, #0x8af]
   16e10:	a8 c2 62 39	ldrb	w8, [x21, #0x8b0]
   16e14:	69 13 80 52	mov	w9, #0x9b
   16e18:	08 01 09 4a	eor	w8, w8, w9
   16e1c:	68 c2 22 39	strb	w8, [x19, #0x8b0]
   16e20:	a8 c6 62 39	ldrb	w8, [x21, #0x8b1]
   16e24:	ee 1a 80 52	mov	w14, #0xd7
   16e28:	08 01 0e 4a	eor	w8, w8, w14
   16e2c:	68 c6 22 39	strb	w8, [x19, #0x8b1]
   16e30:	a8 13 01 d1	sub	x8, x29, #0x44
   16e34:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16e38:	08 41 00 51	sub	w8, w8, #0x10
   16e3c:	68 ca 22 39	strb	w8, [x19, #0x8b2]
   16e40:	a8 63 0a d1	sub	x8, x29, #0x298
   16e44:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16e48:	e8 03 28 2a	mvn	w8, w8
   16e4c:	68 ce 22 39	strb	w8, [x19, #0x8b3]
   16e50:	a8 33 01 d1	sub	x8, x29, #0x4c
   16e54:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16e58:	08 f1 01 51	sub	w8, w8, #0x7c
   16e5c:	68 d2 22 39	strb	w8, [x19, #0x8b4]
   16e60:	a8 73 0a d1	sub	x8, x29, #0x29c
   16e64:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16e68:	68 d6 22 39	strb	w8, [x19, #0x8b5]
   16e6c:	a8 da 62 39	ldrb	w8, [x21, #0x8b6]
   16e70:	08 19 1f 52	eor	w8, w8, #0xfe
   16e74:	68 da 22 39	strb	w8, [x19, #0x8b6]
   16e78:	a8 de 62 39	ldrb	w8, [x21, #0x8b7]
   16e7c:	08 01 10 4a	eor	w8, w8, w16
   16e80:	68 de 22 39	strb	w8, [x19, #0x8b7]
   16e84:	a8 e2 62 39	ldrb	w8, [x21, #0x8b8]
   16e88:	08 01 16 4a	eor	w8, w8, w22
   16e8c:	68 e2 22 39	strb	w8, [x19, #0x8b8]
   16e90:	a8 33 0a d1	sub	x8, x29, #0x28c
   16e94:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16e98:	68 e6 22 39	strb	w8, [x19, #0x8b9]
   16e9c:	a8 43 0a d1	sub	x8, x29, #0x290
   16ea0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16ea4:	c9 17 80 52	mov	w9, #0xbe
   16ea8:	08 01 09 4a	eor	w8, w8, w9
   16eac:	68 ea 22 39	strb	w8, [x19, #0x8ba]
   16eb0:	a8 ee 62 39	ldrb	w8, [x21, #0x8bb]
   16eb4:	a9 16 80 52	mov	w9, #0xb5
   16eb8:	08 01 09 4a	eor	w8, w8, w9
   16ebc:	68 ee 22 39	strb	w8, [x19, #0x8bb]
   16ec0:	a8 f2 62 39	ldrb	w8, [x21, #0x8bc]
   16ec4:	08 01 0a 4a	eor	w8, w8, w10
   16ec8:	16 12 80 52	mov	w22, #0x90
   16ecc:	68 f2 22 39	strb	w8, [x19, #0x8bc]
   16ed0:	a8 83 0a d1	sub	x8, x29, #0x2a0
   16ed4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16ed8:	08 79 19 52	eor	w8, w8, #0xffffffbf
   16edc:	68 f6 22 39	strb	w8, [x19, #0x8bd]
   16ee0:	a8 23 0a d1	sub	x8, x29, #0x288
   16ee4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16ee8:	68 fa 22 39	strb	w8, [x19, #0x8be]
   16eec:	a8 53 0a d1	sub	x8, x29, #0x294
   16ef0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16ef4:	68 fe 22 39	strb	w8, [x19, #0x8bf]
   16ef8:	a8 43 01 d1	sub	x8, x29, #0x50
   16efc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16f00:	08 b9 01 11	add	w8, w8, #0x6e
   16f04:	68 02 23 39	strb	w8, [x19, #0x8c0]
   16f08:	a8 06 63 39	ldrb	w8, [x21, #0x8c1]
   16f0c:	0a 13 80 52	mov	w10, #0x98
   16f10:	08 01 0a 4a	eor	w8, w8, w10
   16f14:	68 06 23 39	strb	w8, [x19, #0x8c1]
   16f18:	a8 0a 63 39	ldrb	w8, [x21, #0x8c2]
   16f1c:	08 01 0d 4a	eor	w8, w8, w13
   16f20:	68 0a 23 39	strb	w8, [x19, #0x8c2]
   16f24:	a8 0e 63 39	ldrb	w8, [x21, #0x8c3]
   16f28:	08 05 00 52	eor	w8, w8, #0x3
   16f2c:	68 0e 23 39	strb	w8, [x19, #0x8c3]
   16f30:	a8 12 63 39	ldrb	w8, [x21, #0x8c4]
   16f34:	8b 1a 80 52	mov	w11, #0xd4
   16f38:	08 01 0b 4a	eor	w8, w8, w11
   16f3c:	68 12 23 39	strb	w8, [x19, #0x8c4]
   16f40:	a8 16 63 39	ldrb	w8, [x21, #0x8c5]
   16f44:	6d 04 80 52	mov	w13, #0x23
   16f48:	08 01 0d 4a	eor	w8, w8, w13
   16f4c:	68 16 23 39	strb	w8, [x19, #0x8c5]
   16f50:	a8 1a 63 39	ldrb	w8, [x21, #0x8c6]
   16f54:	08 0d 1e 52	eor	w8, w8, #0x3c
   16f58:	68 1a 23 39	strb	w8, [x19, #0x8c6]
   16f5c:	68 02 80 52	mov	w8, #0x13
   16f60:	ad 13 0a d1	sub	x13, x29, #0x284
   16f64:	ad 01 50 b8	ldur	w13, [x13, #-0x100]
   16f68:	a8 01 08 4a	eor	w8, w13, w8
   16f6c:	68 1e 23 39	strb	w8, [x19, #0x8c7]
   16f70:	a8 22 63 39	ldrb	w8, [x21, #0x8c8]
   16f74:	8d 12 80 52	mov	w13, #0x94
   16f78:	08 01 0d 4a	eor	w8, w8, w13
   16f7c:	68 22 23 39	strb	w8, [x19, #0x8c8]
   16f80:	a8 26 63 39	ldrb	w8, [x21, #0x8c9]
   16f84:	08 01 09 4a	eor	w8, w8, w9
   16f88:	68 26 23 39	strb	w8, [x19, #0x8c9]
   16f8c:	a8 b3 09 d1	sub	x8, x29, #0x26c
   16f90:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16f94:	e8 03 28 2a	mvn	w8, w8
   16f98:	68 2a 23 39	strb	w8, [x19, #0x8ca]
   16f9c:	a8 2e 63 39	ldrb	w8, [x21, #0x8cb]
   16fa0:	8d 09 80 52	mov	w13, #0x4c
   16fa4:	08 01 0d 4a	eor	w8, w8, w13
   16fa8:	68 2e 23 39	strb	w8, [x19, #0x8cb]
   16fac:	a8 83 01 d1	sub	x8, x29, #0x60
   16fb0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16fb4:	08 d9 00 11	add	w8, w8, #0x36
   16fb8:	68 32 23 39	strb	w8, [x19, #0x8cc]
   16fbc:	a8 a3 09 d1	sub	x8, x29, #0x268
   16fc0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16fc4:	e8 03 28 2a	mvn	w8, w8
   16fc8:	68 36 23 39	strb	w8, [x19, #0x8cd]
   16fcc:	a8 3a 63 39	ldrb	w8, [x21, #0x8ce]
   16fd0:	c9 1c 80 52	mov	w9, #0xe6
   16fd4:	08 01 09 4a	eor	w8, w8, w9
   16fd8:	68 3a 23 39	strb	w8, [x19, #0x8ce]
   16fdc:	a8 e3 08 d1	sub	x8, x29, #0x238
   16fe0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   16fe4:	08 e9 01 52	eor	w8, w8, #0xbbbbbbbb
   16fe8:	68 3e 23 39	strb	w8, [x19, #0x8cf]
   16fec:	a8 42 63 39	ldrb	w8, [x21, #0x8d0]
   16ff0:	08 01 10 4a	eor	w8, w8, w16
   16ff4:	68 42 23 39	strb	w8, [x19, #0x8d0]
   16ff8:	a8 a3 01 d1	sub	x8, x29, #0x68
   16ffc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17000:	08 61 00 51	sub	w8, w8, #0x18
   17004:	68 46 23 39	strb	w8, [x19, #0x8d1]
   17008:	65 4a 23 39	strb	w5, [x19, #0x8d2]
   1700c:	a8 4e 63 39	ldrb	w8, [x21, #0x8d3]
   17010:	08 75 1b 52	eor	w8, w8, #0xffffffe7
   17014:	68 4e 23 39	strb	w8, [x19, #0x8d3]
   17018:	a8 d3 01 d1	sub	x8, x29, #0x74
   1701c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17020:	08 9d 00 51	sub	w8, w8, #0x27
   17024:	68 52 23 39	strb	w8, [x19, #0x8d4]
   17028:	e8 03 27 2a	mvn	w8, w7
   1702c:	68 56 23 39	strb	w8, [x19, #0x8d5]
   17030:	a8 5a 63 39	ldrb	w8, [x21, #0x8d6]
   17034:	a9 0f 80 52	mov	w9, #0x7d
   17038:	08 01 09 4a	eor	w8, w8, w9
   1703c:	68 5a 23 39	strb	w8, [x19, #0x8d6]
   17040:	a8 5e 63 39	ldrb	w8, [x21, #0x8d7]
   17044:	69 19 80 52	mov	w9, #0xcb
   17048:	08 01 09 4a	eor	w8, w8, w9
   1704c:	68 5e 23 39	strb	w8, [x19, #0x8d7]
   17050:	a8 62 63 39	ldrb	w8, [x21, #0x8d8]
   17054:	b0 1d 80 52	mov	w16, #0xed
   17058:	08 01 10 4a	eor	w8, w8, w16
   1705c:	68 62 23 39	strb	w8, [x19, #0x8d8]
   17060:	e8 03 37 2a	mvn	w8, w23
   17064:	68 66 23 39	strb	w8, [x19, #0x8d9]
   17068:	a8 6a 63 39	ldrb	w8, [x21, #0x8da]
   1706c:	08 01 1d 52	eor	w8, w8, #0x8
   17070:	68 6a 23 39	strb	w8, [x19, #0x8da]
   17074:	a8 03 0a d1	sub	x8, x29, #0x280
   17078:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1707c:	68 6e 23 39	strb	w8, [x19, #0x8db]
   17080:	a8 72 63 39	ldrb	w8, [x21, #0x8dc]
   17084:	b7 07 80 52	mov	w23, #0x3d
   17088:	08 01 17 4a	eor	w8, w8, w23
   1708c:	68 72 23 39	strb	w8, [x19, #0x8dc]
   17090:	a8 76 63 39	ldrb	w8, [x21, #0x8dd]
   17094:	44 0d 80 52	mov	w4, #0x6a
   17098:	08 01 04 4a	eor	w8, w8, w4
   1709c:	68 76 23 39	strb	w8, [x19, #0x8dd]
   170a0:	78 7a 23 39	strb	w24, [x19, #0x8de]
   170a4:	a8 7e 63 39	ldrb	w8, [x21, #0x8df]
   170a8:	08 01 1e 4a	eor	w8, w8, w30
   170ac:	68 7e 23 39	strb	w8, [x19, #0x8df]
   170b0:	a8 82 63 39	ldrb	w8, [x21, #0x8e0]
   170b4:	08 01 0a 4a	eor	w8, w8, w10
   170b8:	68 82 23 39	strb	w8, [x19, #0x8e0]
   170bc:	e8 03 39 2a	mvn	w8, w25
   170c0:	68 86 23 39	strb	w8, [x19, #0x8e1]
   170c4:	a8 8a 63 39	ldrb	w8, [x21, #0x8e2]
   170c8:	85 04 80 52	mov	w5, #0x24
   170cc:	08 01 05 4a	eor	w8, w8, w5
   170d0:	68 8a 23 39	strb	w8, [x19, #0x8e2]
   170d4:	7b 8e 23 39	strb	w27, [x19, #0x8e3]
   170d8:	a8 92 63 39	ldrb	w8, [x21, #0x8e4]
   170dc:	08 11 1f 52	eor	w8, w8, #0x3e
   170e0:	68 92 23 39	strb	w8, [x19, #0x8e4]
   170e4:	7a 96 23 39	strb	w26, [x19, #0x8e5]
   170e8:	a8 9a 63 39	ldrb	w8, [x21, #0x8e6]
   170ec:	6a 01 80 52	mov	w10, #0xb
   170f0:	08 01 0a 4a	eor	w8, w8, w10
   170f4:	68 9a 23 39	strb	w8, [x19, #0x8e6]
   170f8:	a8 9e 63 39	ldrb	w8, [x21, #0x8e7]
   170fc:	08 01 00 4a	eor	w8, w8, w0
   17100:	68 9e 23 39	strb	w8, [x19, #0x8e7]
   17104:	a8 a2 63 39	ldrb	w8, [x21, #0x8e8]
   17108:	08 01 0c 4a	eor	w8, w8, w12
   1710c:	78 07 80 52	mov	w24, #0x3b
   17110:	68 a2 23 39	strb	w8, [x19, #0x8e8]
   17114:	e8 03 3c 2a	mvn	w8, w28
   17118:	68 a6 23 39	strb	w8, [x19, #0x8e9]
   1711c:	a8 aa 63 39	ldrb	w8, [x21, #0x8ea]
   17120:	08 01 09 4a	eor	w8, w8, w9
   17124:	67 19 80 52	mov	w7, #0xcb
   17128:	68 aa 23 39	strb	w8, [x19, #0x8ea]
   1712c:	a8 ae 63 39	ldrb	w8, [x21, #0x8eb]
   17130:	6c 08 80 52	mov	w12, #0x43
   17134:	08 01 0c 4a	eor	w8, w8, w12
   17138:	68 ae 23 39	strb	w8, [x19, #0x8eb]
   1713c:	a8 e3 09 d1	sub	x8, x29, #0x278
   17140:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17144:	08 01 0e 4a	eor	w8, w8, w14
   17148:	68 b2 23 39	strb	w8, [x19, #0x8ec]
   1714c:	a8 93 09 d1	sub	x8, x29, #0x264
   17150:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17154:	68 b6 23 39	strb	w8, [x19, #0x8ed]
   17158:	a8 ba 63 39	ldrb	w8, [x21, #0x8ee]
   1715c:	29 16 80 52	mov	w9, #0xb1
   17160:	08 01 09 4a	eor	w8, w8, w9
   17164:	68 ba 23 39	strb	w8, [x19, #0x8ee]
   17168:	a8 f3 09 d1	sub	x8, x29, #0x27c
   1716c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17170:	08 e5 03 52	eor	w8, w8, #0x66666666
   17174:	68 be 23 39	strb	w8, [x19, #0x8ef]
   17178:	a8 c2 63 39	ldrb	w8, [x21, #0x8f0]
   1717c:	89 0a 80 52	mov	w9, #0x54
   17180:	08 01 09 4a	eor	w8, w8, w9
   17184:	68 c2 23 39	strb	w8, [x19, #0x8f0]
   17188:	a8 c6 63 39	ldrb	w8, [x21, #0x8f1]
   1718c:	08 01 03 4a	eor	w8, w8, w3
   17190:	68 c6 23 39	strb	w8, [x19, #0x8f1]
   17194:	a8 ca 63 39	ldrb	w8, [x21, #0x8f2]
   17198:	29 03 80 52	mov	w9, #0x19
   1719c:	08 01 09 4a	eor	w8, w8, w9
   171a0:	68 ca 23 39	strb	w8, [x19, #0x8f2]
   171a4:	a8 f3 01 d1	sub	x8, x29, #0x7c
   171a8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   171ac:	08 dd 00 51	sub	w8, w8, #0x37
   171b0:	68 ce 23 39	strb	w8, [x19, #0x8f3]
   171b4:	a8 d2 63 39	ldrb	w8, [x21, #0x8f4]
   171b8:	08 01 0d 4a	eor	w8, w8, w13
   171bc:	68 d2 23 39	strb	w8, [x19, #0x8f4]
   171c0:	a8 c3 09 d1	sub	x8, x29, #0x270
   171c4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   171c8:	68 d6 23 39	strb	w8, [x19, #0x8f5]
   171cc:	a8 03 02 d1	sub	x8, x29, #0x80
   171d0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   171d4:	08 e9 01 51	sub	w8, w8, #0x7a
   171d8:	68 da 23 39	strb	w8, [x19, #0x8f6]
   171dc:	68 14 80 52	mov	w8, #0xa3
   171e0:	a9 d3 09 d1	sub	x9, x29, #0x274
   171e4:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   171e8:	28 01 08 4a	eor	w8, w9, w8
   171ec:	68 de 23 39	strb	w8, [x19, #0x8f7]
   171f0:	a8 e2 63 39	ldrb	w8, [x21, #0x8f8]
   171f4:	c9 14 80 52	mov	w9, #0xa6
   171f8:	08 01 09 4a	eor	w8, w8, w9
   171fc:	68 e2 23 39	strb	w8, [x19, #0x8f8]
   17200:	a8 e6 63 39	ldrb	w8, [x21, #0x8f9]
   17204:	ae 11 80 52	mov	w14, #0x8d
   17208:	08 01 0e 4a	eor	w8, w8, w14
   1720c:	68 e6 23 39	strb	w8, [x19, #0x8f9]
   17210:	a8 13 02 d1	sub	x8, x29, #0x84
   17214:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17218:	08 fd 00 11	add	w8, w8, #0x3f
   1721c:	68 ea 23 39	strb	w8, [x19, #0x8fa]
   17220:	a8 33 02 d1	sub	x8, x29, #0x8c
   17224:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17228:	08 1d 01 51	sub	w8, w8, #0x47
   1722c:	68 ee 23 39	strb	w8, [x19, #0x8fb]
   17230:	a8 f2 63 39	ldrb	w8, [x21, #0x8fc]
   17234:	aa 00 80 52	mov	w10, #0x5
   17238:	08 01 0a 4a	eor	w8, w8, w10
   1723c:	68 f2 23 39	strb	w8, [x19, #0x8fc]
   17240:	a8 f6 63 39	ldrb	w8, [x21, #0x8fd]
   17244:	ea 14 80 52	mov	w10, #0xa7
   17248:	08 01 0a 4a	eor	w8, w8, w10
   1724c:	68 f6 23 39	strb	w8, [x19, #0x8fd]
   17250:	a8 43 02 d1	sub	x8, x29, #0x90
   17254:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17258:	08 89 01 11	add	w8, w8, #0x62
   1725c:	68 fa 23 39	strb	w8, [x19, #0x8fe]
   17260:	a8 fe 63 39	ldrb	w8, [x21, #0x8ff]
   17264:	08 6d 19 52	eor	w8, w8, #0xffffff87
   17268:	68 fe 23 39	strb	w8, [x19, #0x8ff]
   1726c:	a8 02 64 39	ldrb	w8, [x21, #0x900]
   17270:	4a 18 80 52	mov	w10, #0xc2
   17274:	08 01 0a 4a	eor	w8, w8, w10
   17278:	68 02 24 39	strb	w8, [x19, #0x900]
   1727c:	a8 06 64 39	ldrb	w8, [x21, #0x901]
   17280:	4a 17 80 52	mov	w10, #0xba
   17284:	08 01 0a 4a	eor	w8, w8, w10
   17288:	68 06 24 39	strb	w8, [x19, #0x901]
   1728c:	48 1b 80 52	mov	w8, #0xda
   17290:	c8 00 08 4a	eor	w8, w6, w8
   17294:	68 0a 24 39	strb	w8, [x19, #0x902]
   17298:	a8 0e 64 39	ldrb	w8, [x21, #0x903]
   1729c:	aa 08 80 52	mov	w10, #0x45
   172a0:	08 01 0a 4a	eor	w8, w8, w10
   172a4:	68 0e 24 39	strb	w8, [x19, #0x903]
   172a8:	a8 12 64 39	ldrb	w8, [x21, #0x904]
   172ac:	a3 18 80 52	mov	w3, #0xc5
   172b0:	08 01 03 4a	eor	w8, w8, w3
   172b4:	68 12 24 39	strb	w8, [x19, #0x904]
   172b8:	a8 53 09 d1	sub	x8, x29, #0x254
   172bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   172c0:	e8 03 28 2a	mvn	w8, w8
   172c4:	68 16 24 39	strb	w8, [x19, #0x905]
   172c8:	a8 63 09 d1	sub	x8, x29, #0x258
   172cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   172d0:	68 1a 24 39	strb	w8, [x19, #0x906]
   172d4:	a8 63 02 d1	sub	x8, x29, #0x98
   172d8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   172dc:	08 dd 01 11	add	w8, w8, #0x77
   172e0:	68 1e 24 39	strb	w8, [x19, #0x907]
   172e4:	a8 73 09 d1	sub	x8, x29, #0x25c
   172e8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   172ec:	68 22 24 39	strb	w8, [x19, #0x908]
   172f0:	a8 26 64 39	ldrb	w8, [x21, #0x909]
   172f4:	ca 10 80 52	mov	w10, #0x86
   172f8:	08 01 0a 4a	eor	w8, w8, w10
   172fc:	68 26 24 39	strb	w8, [x19, #0x909]
   17300:	a8 83 09 d1	sub	x8, x29, #0x260
   17304:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17308:	e8 03 28 2a	mvn	w8, w8
   1730c:	68 2a 24 39	strb	w8, [x19, #0x90a]
   17310:	74 2e 24 39	strb	w20, [x19, #0x90b]
   17314:	a8 32 64 39	ldrb	w8, [x21, #0x90c]
   17318:	08 69 19 52	eor	w8, w8, #0xffffff83
   1731c:	68 32 24 39	strb	w8, [x19, #0x90c]
   17320:	a8 36 64 39	ldrb	w8, [x21, #0x90d]
   17324:	2a 0c 80 52	mov	w10, #0x61
   17328:	08 01 0a 4a	eor	w8, w8, w10
   1732c:	68 36 24 39	strb	w8, [x19, #0x90d]
   17330:	a8 3a 64 39	ldrb	w8, [x21, #0x90e]
   17334:	f0 0b 80 52	mov	w16, #0x5f
   17338:	08 01 10 4a	eor	w8, w8, w16
   1733c:	68 3a 24 39	strb	w8, [x19, #0x90e]
   17340:	a8 3e 64 39	ldrb	w8, [x21, #0x90f]
   17344:	08 01 09 4a	eor	w8, w8, w9
   17348:	68 3e 24 39	strb	w8, [x19, #0x90f]
   1734c:	a8 43 09 d1	sub	x8, x29, #0x250
   17350:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17354:	68 42 24 39	strb	w8, [x19, #0x910]
   17358:	a8 83 02 d1	sub	x8, x29, #0xa0
   1735c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17360:	08 8d 00 51	sub	w8, w8, #0x23
   17364:	68 46 24 39	strb	w8, [x19, #0x911]
   17368:	a8 b3 02 d1	sub	x8, x29, #0xac
   1736c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17370:	08 7d 00 11	add	w8, w8, #0x1f
   17374:	68 4a 24 39	strb	w8, [x19, #0x912]
   17378:	a8 4e 64 39	ldrb	w8, [x21, #0x913]
   1737c:	89 1d 80 52	mov	w9, #0xec
   17380:	08 01 09 4a	eor	w8, w8, w9
   17384:	68 4e 24 39	strb	w8, [x19, #0x913]
   17388:	a8 52 64 39	ldrb	w8, [x21, #0x914]
   1738c:	08 01 0f 4a	eor	w8, w8, w15
   17390:	68 52 24 39	strb	w8, [x19, #0x914]
   17394:	a8 56 64 39	ldrb	w8, [x21, #0x915]
   17398:	08 75 1d 52	eor	w8, w8, #0xfffffff9
   1739c:	68 56 24 39	strb	w8, [x19, #0x915]
   173a0:	a8 5a 64 39	ldrb	w8, [x21, #0x916]
   173a4:	08 79 1a 52	eor	w8, w8, #0xffffffdf
   173a8:	68 5a 24 39	strb	w8, [x19, #0x916]
   173ac:	a8 5e 64 39	ldrb	w8, [x21, #0x917]
   173b0:	08 e5 02 52	eor	w8, w8, #0xcccccccc
   173b4:	68 5e 24 39	strb	w8, [x19, #0x917]
   173b8:	a8 62 64 39	ldrb	w8, [x21, #0x918]
   173bc:	89 17 80 52	mov	w9, #0xbc
   173c0:	08 01 09 4a	eor	w8, w8, w9
   173c4:	68 62 24 39	strb	w8, [x19, #0x918]
   173c8:	a8 66 64 39	ldrb	w8, [x21, #0x919]
   173cc:	08 01 0b 4a	eor	w8, w8, w11
   173d0:	68 66 24 39	strb	w8, [x19, #0x919]
   173d4:	a8 6a 64 39	ldrb	w8, [x21, #0x91a]
   173d8:	08 01 02 4a	eor	w8, w8, w2
   173dc:	68 6a 24 39	strb	w8, [x19, #0x91a]
   173e0:	a8 03 09 d1	sub	x8, x29, #0x240
   173e4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   173e8:	68 6e 24 39	strb	w8, [x19, #0x91b]
   173ec:	a8 72 64 39	ldrb	w8, [x21, #0x91c]
   173f0:	08 01 10 4a	eor	w8, w8, w16
   173f4:	68 72 24 39	strb	w8, [x19, #0x91c]
   173f8:	a8 13 09 d1	sub	x8, x29, #0x244
   173fc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17400:	e8 03 28 2a	mvn	w8, w8
   17404:	68 76 24 39	strb	w8, [x19, #0x91d]
   17408:	a8 23 09 d1	sub	x8, x29, #0x248
   1740c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17410:	08 01 0a 4a	eor	w8, w8, w10
   17414:	68 7a 24 39	strb	w8, [x19, #0x91e]
   17418:	a8 33 09 d1	sub	x8, x29, #0x24c
   1741c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17420:	68 7e 24 39	strb	w8, [x19, #0x91f]
   17424:	a8 82 64 39	ldrb	w8, [x21, #0x920]
   17428:	09 1d 80 52	mov	w9, #0xe8
   1742c:	08 01 09 4a	eor	w8, w8, w9
   17430:	68 82 24 39	strb	w8, [x19, #0x920]
   17434:	a8 86 64 39	ldrb	w8, [x21, #0x921]
   17438:	08 01 11 4a	eor	w8, w8, w17
   1743c:	68 86 24 39	strb	w8, [x19, #0x921]
   17440:	a8 8a 64 39	ldrb	w8, [x21, #0x922]
   17444:	08 01 17 4a	eor	w8, w8, w23
   17448:	68 8a 24 39	strb	w8, [x19, #0x922]
   1744c:	a8 8e 64 39	ldrb	w8, [x21, #0x923]
   17450:	a9 05 80 52	mov	w9, #0x2d
   17454:	08 01 09 4a	eor	w8, w8, w9
   17458:	68 8e 24 39	strb	w8, [x19, #0x923]
   1745c:	a8 92 64 39	ldrb	w8, [x21, #0x924]
   17460:	09 15 80 52	mov	w9, #0xa8
   17464:	08 01 09 4a	eor	w8, w8, w9
   17468:	68 92 24 39	strb	w8, [x19, #0x924]
   1746c:	a8 96 64 39	ldrb	w8, [x21, #0x925]
   17470:	08 01 1a 52	eor	w8, w8, #0x40
   17474:	68 96 24 39	strb	w8, [x19, #0x925]
   17478:	a8 9a 64 39	ldrb	w8, [x21, #0x926]
   1747c:	89 05 80 52	mov	w9, #0x2c
   17480:	08 01 09 4a	eor	w8, w8, w9
   17484:	68 9a 24 39	strb	w8, [x19, #0x926]
   17488:	a8 f3 08 d1	sub	x8, x29, #0x23c
   1748c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17490:	68 9e 24 39	strb	w8, [x19, #0x927]
   17494:	a8 a2 64 39	ldrb	w8, [x21, #0x928]
   17498:	c9 0b 80 52	mov	w9, #0x5e
   1749c:	08 01 09 4a	eor	w8, w8, w9
   174a0:	d1 0b 80 52	mov	w17, #0x5e
   174a4:	68 a2 24 39	strb	w8, [x19, #0x928]
   174a8:	a8 a6 64 39	ldrb	w8, [x21, #0x929]
   174ac:	00 0b 80 52	mov	w0, #0x58
   174b0:	08 01 00 4a	eor	w8, w8, w0
   174b4:	68 a6 24 39	strb	w8, [x19, #0x929]
   174b8:	a8 d3 02 d1	sub	x8, x29, #0xb4
   174bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   174c0:	08 61 00 51	sub	w8, w8, #0x18
   174c4:	68 aa 24 39	strb	w8, [x19, #0x92a]
   174c8:	a8 d3 08 d1	sub	x8, x29, #0x234
   174cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   174d0:	68 ae 24 39	strb	w8, [x19, #0x92b]
   174d4:	a8 53 01 d1	sub	x8, x29, #0x54
   174d8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   174dc:	68 b2 24 39	strb	w8, [x19, #0x92c]
   174e0:	a8 b6 64 39	ldrb	w8, [x21, #0x92d]
   174e4:	08 75 19 52	eor	w8, w8, #0xffffff9f
   174e8:	68 b6 24 39	strb	w8, [x19, #0x92d]
   174ec:	a8 ba 64 39	ldrb	w8, [x21, #0x92e]
   174f0:	49 01 80 52	mov	w9, #0xa
   174f4:	08 01 09 4a	eor	w8, w8, w9
   174f8:	68 ba 24 39	strb	w8, [x19, #0x92e]
   174fc:	a8 b3 01 d1	sub	x8, x29, #0x6c
   17500:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17504:	e8 03 28 2a	mvn	w8, w8
   17508:	68 be 24 39	strb	w8, [x19, #0x92f]
   1750c:	a8 c3 08 d1	sub	x8, x29, #0x230
   17510:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17514:	68 c2 24 39	strb	w8, [x19, #0x930]
   17518:	a8 f3 02 d1	sub	x8, x29, #0xbc
   1751c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17520:	08 b1 00 51	sub	w8, w8, #0x2c
   17524:	68 c6 24 39	strb	w8, [x19, #0x931]
   17528:	a8 ca 64 39	ldrb	w8, [x21, #0x932]
   1752c:	69 15 80 52	mov	w9, #0xab
   17530:	08 01 09 4a	eor	w8, w8, w9
   17534:	68 ca 24 39	strb	w8, [x19, #0x932]
   17538:	a8 13 03 d1	sub	x8, x29, #0xc4
   1753c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17540:	08 8d 00 51	sub	w8, w8, #0x23
   17544:	68 ce 24 39	strb	w8, [x19, #0x933]
   17548:	a8 d2 64 39	ldrb	w8, [x21, #0x934]
   1754c:	08 01 05 4a	eor	w8, w8, w5
   17550:	68 d2 24 39	strb	w8, [x19, #0x934]
   17554:	a8 a3 08 d1	sub	x8, x29, #0x228
   17558:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1755c:	08 01 01 4a	eor	w8, w8, w1
   17560:	68 d6 24 39	strb	w8, [x19, #0x935]
   17564:	a8 b3 08 d1	sub	x8, x29, #0x22c
   17568:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1756c:	e8 03 28 2a	mvn	w8, w8
   17570:	68 da 24 39	strb	w8, [x19, #0x936]
   17574:	a8 de 64 39	ldrb	w8, [x21, #0x937]
   17578:	08 11 00 52	eor	w8, w8, #0x1f
   1757c:	68 de 24 39	strb	w8, [x19, #0x937]
   17580:	a8 e2 64 39	ldrb	w8, [x21, #0x938]
   17584:	08 09 00 52	eor	w8, w8, #0x7
   17588:	68 e2 24 39	strb	w8, [x19, #0x938]
   1758c:	a8 43 03 d1	sub	x8, x29, #0xd0
   17590:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17594:	08 7d 01 11	add	w8, w8, #0x5f
   17598:	68 e6 24 39	strb	w8, [x19, #0x939]
   1759c:	a8 ea 64 39	ldrb	w8, [x21, #0x93a]
   175a0:	08 01 07 4a	eor	w8, w8, w7
   175a4:	68 ea 24 39	strb	w8, [x19, #0x93a]
   175a8:	a8 ee 64 39	ldrb	w8, [x21, #0x93b]
   175ac:	08 79 1b 52	eor	w8, w8, #0xffffffef
   175b0:	68 ee 24 39	strb	w8, [x19, #0x93b]
   175b4:	a8 f2 64 39	ldrb	w8, [x21, #0x93c]
   175b8:	a9 15 80 52	mov	w9, #0xad
   175bc:	08 01 09 4a	eor	w8, w8, w9
   175c0:	68 f2 24 39	strb	w8, [x19, #0x93c]
   175c4:	a8 53 03 d1	sub	x8, x29, #0xd4
   175c8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   175cc:	08 49 01 51	sub	w8, w8, #0x52
   175d0:	68 f6 24 39	strb	w8, [x19, #0x93d]
   175d4:	a8 73 08 d1	sub	x8, x29, #0x21c
   175d8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   175dc:	68 fa 24 39	strb	w8, [x19, #0x93e]
   175e0:	a8 fe 64 39	ldrb	w8, [x21, #0x93f]
   175e4:	6f 0c 80 52	mov	w15, #0x63
   175e8:	08 01 0f 4a	eor	w8, w8, w15
   175ec:	68 fe 24 39	strb	w8, [x19, #0x93f]
   175f0:	a8 83 08 d1	sub	x8, x29, #0x220
   175f4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   175f8:	08 01 0a 4a	eor	w8, w8, w10
   175fc:	68 02 25 39	strb	w8, [x19, #0x940]
   17600:	a8 93 08 d1	sub	x8, x29, #0x224
   17604:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17608:	68 06 25 39	strb	w8, [x19, #0x941]
   1760c:	a8 73 03 d1	sub	x8, x29, #0xdc
   17610:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17614:	08 89 00 51	sub	w8, w8, #0x22
   17618:	68 0a 25 39	strb	w8, [x19, #0x942]
   1761c:	a8 0e 65 39	ldrb	w8, [x21, #0x943]
   17620:	08 01 16 4a	eor	w8, w8, w22
   17624:	68 0e 25 39	strb	w8, [x19, #0x943]
   17628:	a8 b3 03 d1	sub	x8, x29, #0xec
   1762c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17630:	08 cd 00 11	add	w8, w8, #0x33
   17634:	68 12 25 39	strb	w8, [x19, #0x944]
   17638:	a8 16 65 39	ldrb	w8, [x21, #0x945]
   1763c:	08 e9 02 52	eor	w8, w8, #0xdddddddd
   17640:	68 16 25 39	strb	w8, [x19, #0x945]
   17644:	a8 13 04 d1	sub	x8, x29, #0x104
   17648:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1764c:	08 41 01 51	sub	w8, w8, #0x50
   17650:	68 1a 25 39	strb	w8, [x19, #0x946]
   17654:	30 06 80 52	mov	w16, #0x31
   17658:	a8 53 08 d1	sub	x8, x29, #0x214
   1765c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17660:	08 01 10 4a	eor	w8, w8, w16
   17664:	68 1e 25 39	strb	w8, [x19, #0x947]
   17668:	a8 22 65 39	ldrb	w8, [x21, #0x948]
   1766c:	ea 12 80 52	mov	w10, #0x97
   17670:	08 01 0a 4a	eor	w8, w8, w10
   17674:	68 22 25 39	strb	w8, [x19, #0x948]
   17678:	a8 43 08 d1	sub	x8, x29, #0x210
   1767c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17680:	e8 03 28 2a	mvn	w8, w8
   17684:	68 26 25 39	strb	w8, [x19, #0x949]
   17688:	a8 23 04 d1	sub	x8, x29, #0x108
   1768c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17690:	08 1d 00 11	add	w8, w8, #0x7
   17694:	68 2a 25 39	strb	w8, [x19, #0x94a]
   17698:	a8 2e 65 39	ldrb	w8, [x21, #0x94b]
   1769c:	08 19 00 52	eor	w8, w8, #0x7f
   176a0:	68 2e 25 39	strb	w8, [x19, #0x94b]
   176a4:	a8 23 08 d1	sub	x8, x29, #0x208
   176a8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   176ac:	2a 17 80 52	mov	w10, #0xb9
   176b0:	08 01 0a 4a	eor	w8, w8, w10
   176b4:	68 32 25 39	strb	w8, [x19, #0x94c]
   176b8:	a8 43 04 d1	sub	x8, x29, #0x110
   176bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   176c0:	08 19 00 11	add	w8, w8, #0x6
   176c4:	68 36 25 39	strb	w8, [x19, #0x94d]
   176c8:	a8 63 04 d1	sub	x8, x29, #0x118
   176cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   176d0:	08 51 01 11	add	w8, w8, #0x54
   176d4:	68 3a 25 39	strb	w8, [x19, #0x94e]
   176d8:	a8 3e 65 39	ldrb	w8, [x21, #0x94f]
   176dc:	08 01 0c 4a	eor	w8, w8, w12
   176e0:	68 3e 25 39	strb	w8, [x19, #0x94f]
   176e4:	a8 b3 07 d1	sub	x8, x29, #0x1ec
   176e8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   176ec:	68 42 25 39	strb	w8, [x19, #0x950]
   176f0:	a8 f3 07 d1	sub	x8, x29, #0x1fc
   176f4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   176f8:	08 71 19 52	eor	w8, w8, #0xffffff8f
   176fc:	68 46 25 39	strb	w8, [x19, #0x951]
   17700:	a8 4a 65 39	ldrb	w8, [x21, #0x952]
   17704:	4b 0b 80 52	mov	w11, #0x5a
   17708:	08 01 0b 4a	eor	w8, w8, w11
   1770c:	68 4a 25 39	strb	w8, [x19, #0x952]
   17710:	a8 4e 65 39	ldrb	w8, [x21, #0x953]
   17714:	4a 10 80 52	mov	w10, #0x82
   17718:	08 01 0a 4a	eor	w8, w8, w10
   1771c:	68 4e 25 39	strb	w8, [x19, #0x953]
   17720:	a8 83 04 d1	sub	x8, x29, #0x120
   17724:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17728:	08 b5 00 51	sub	w8, w8, #0x2d
   1772c:	68 52 25 39	strb	w8, [x19, #0x954]
   17730:	a8 56 65 39	ldrb	w8, [x21, #0x955]
   17734:	08 e1 01 52	eor	w8, w8, #0x88888888
   17738:	68 56 25 39	strb	w8, [x19, #0x955]
   1773c:	a8 5a 65 39	ldrb	w8, [x21, #0x956]
   17740:	2a 0b 80 52	mov	w10, #0x59
   17744:	08 01 0a 4a	eor	w8, w8, w10
   17748:	68 5a 25 39	strb	w8, [x19, #0x956]
   1774c:	a8 53 07 d1	sub	x8, x29, #0x1d4
   17750:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17754:	68 5e 25 39	strb	w8, [x19, #0x957]
   17758:	a8 63 07 d1	sub	x8, x29, #0x1d8
   1775c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17760:	68 62 25 39	strb	w8, [x19, #0x958]
   17764:	a8 93 07 d1	sub	x8, x29, #0x1e4
   17768:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1776c:	68 66 25 39	strb	w8, [x19, #0x959]
   17770:	a8 6a 65 39	ldrb	w8, [x21, #0x95a]
   17774:	08 71 1b 52	eor	w8, w8, #0xffffffe3
   17778:	68 6a 25 39	strb	w8, [x19, #0x95a]
   1777c:	a8 6e 65 39	ldrb	w8, [x21, #0x95b]
   17780:	08 e5 01 52	eor	w8, w8, #0x99999999
   17784:	68 6e 25 39	strb	w8, [x19, #0x95b]
   17788:	ca 04 80 52	mov	w10, #0x26
   1778c:	a8 73 07 d1	sub	x8, x29, #0x1dc
   17790:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17794:	08 01 0a 4a	eor	w8, w8, w10
   17798:	68 72 25 39	strb	w8, [x19, #0x95c]
   1779c:	a8 83 07 d1	sub	x8, x29, #0x1e0
   177a0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177a4:	e8 03 28 2a	mvn	w8, w8
   177a8:	68 76 25 39	strb	w8, [x19, #0x95d]
   177ac:	a8 a3 07 d1	sub	x8, x29, #0x1e8
   177b0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177b4:	08 01 09 4a	eor	w8, w8, w9
   177b8:	68 7a 25 39	strb	w8, [x19, #0x95e]
   177bc:	a8 e3 07 d1	sub	x8, x29, #0x1f8
   177c0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177c4:	68 7e 25 39	strb	w8, [x19, #0x95f]
   177c8:	a8 a3 04 d1	sub	x8, x29, #0x128
   177cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177d0:	08 49 00 51	sub	w8, w8, #0x12
   177d4:	68 82 25 39	strb	w8, [x19, #0x960]
   177d8:	a8 13 08 d1	sub	x8, x29, #0x204
   177dc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177e0:	68 86 25 39	strb	w8, [x19, #0x961]
   177e4:	a8 33 08 d1	sub	x8, x29, #0x20c
   177e8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177ec:	68 8a 25 39	strb	w8, [x19, #0x962]
   177f0:	a8 63 08 d1	sub	x8, x29, #0x218
   177f4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   177f8:	68 8e 25 39	strb	w8, [x19, #0x963]
   177fc:	a8 b3 04 d1	sub	x8, x29, #0x12c
   17800:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17804:	08 35 00 11	add	w8, w8, #0xd
   17808:	68 92 25 39	strb	w8, [x19, #0x964]
   1780c:	a8 d3 04 d1	sub	x8, x29, #0x134
   17810:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17814:	08 c1 01 51	sub	w8, w8, #0x70
   17818:	68 96 25 39	strb	w8, [x19, #0x965]
   1781c:	a8 03 05 d1	sub	x8, x29, #0x140
   17820:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17824:	08 c9 01 11	add	w8, w8, #0x72
   17828:	68 9a 25 39	strb	w8, [x19, #0x966]
   1782c:	a8 93 01 d1	sub	x8, x29, #0x64
   17830:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17834:	68 9e 25 39	strb	w8, [x19, #0x967]
   17838:	a8 23 05 d1	sub	x8, x29, #0x148
   1783c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17840:	08 2d 01 11	add	w8, w8, #0x4b
   17844:	68 a2 25 39	strb	w8, [x19, #0x968]
   17848:	a8 a6 65 39	ldrb	w8, [x21, #0x969]
   1784c:	c9 1a 80 52	mov	w9, #0xd6
   17850:	08 01 09 4a	eor	w8, w8, w9
   17854:	68 a6 25 39	strb	w8, [x19, #0x969]
   17858:	a8 c3 07 d1	sub	x8, x29, #0x1f0
   1785c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17860:	08 05 00 52	eor	w8, w8, #0x3
   17864:	68 aa 25 39	strb	w8, [x19, #0x96a]
   17868:	a8 03 08 d1	sub	x8, x29, #0x200
   1786c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17870:	08 05 1e 52	eor	w8, w8, #0xc
   17874:	68 ae 25 39	strb	w8, [x19, #0x96b]
   17878:	a8 19 80 52	mov	w8, #0xcd
   1787c:	a9 63 01 d1	sub	x9, x29, #0x58
   17880:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   17884:	28 01 08 4a	eor	w8, w9, w8
   17888:	68 b2 25 39	strb	w8, [x19, #0x96c]
   1788c:	a8 b6 65 39	ldrb	w8, [x21, #0x96d]
   17890:	c9 15 80 52	mov	w9, #0xae
   17894:	08 01 09 4a	eor	w8, w8, w9
   17898:	68 b6 25 39	strb	w8, [x19, #0x96d]
   1789c:	a8 d3 07 d1	sub	x8, x29, #0x1f4
   178a0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   178a4:	68 ba 25 39	strb	w8, [x19, #0x96e]
   178a8:	a8 be 65 39	ldrb	w8, [x21, #0x96f]
   178ac:	6c 03 80 52	mov	w12, #0x1b
   178b0:	08 01 0c 4a	eor	w8, w8, w12
   178b4:	68 be 25 39	strb	w8, [x19, #0x96f]
   178b8:	a8 c2 65 39	ldrb	w8, [x21, #0x970]
   178bc:	49 11 80 52	mov	w9, #0x8a
   178c0:	08 01 09 4a	eor	w8, w8, w9
   178c4:	68 c2 25 39	strb	w8, [x19, #0x970]
   178c8:	a8 43 05 d1	sub	x8, x29, #0x150
   178cc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   178d0:	08 f5 01 51	sub	w8, w8, #0x7d
   178d4:	68 c6 25 39	strb	w8, [x19, #0x971]
   178d8:	a8 ca 65 39	ldrb	w8, [x21, #0x972]
   178dc:	08 19 00 52	eor	w8, w8, #0x7f
   178e0:	68 ca 25 39	strb	w8, [x19, #0x972]
   178e4:	a8 ce 65 39	ldrb	w8, [x21, #0x973]
   178e8:	69 04 80 52	mov	w9, #0x23
   178ec:	08 01 09 4a	eor	w8, w8, w9
   178f0:	68 ce 25 39	strb	w8, [x19, #0x973]
   178f4:	a8 53 05 d1	sub	x8, x29, #0x154
   178f8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   178fc:	08 59 01 51	sub	w8, w8, #0x56
   17900:	68 d2 25 39	strb	w8, [x19, #0x974]
   17904:	a8 d6 65 39	ldrb	w8, [x21, #0x975]
   17908:	ed 05 80 52	mov	w13, #0x2f
   1790c:	08 01 0d 4a	eor	w8, w8, w13
   17910:	68 d6 25 39	strb	w8, [x19, #0x975]
   17914:	a8 da 65 39	ldrb	w8, [x21, #0x976]
   17918:	08 e1 00 52	eor	w8, w8, #0x11111111
   1791c:	68 da 25 39	strb	w8, [x19, #0x976]
   17920:	a8 43 07 d1	sub	x8, x29, #0x1d0
   17924:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17928:	08 05 1d 52	eor	w8, w8, #0x18
   1792c:	68 de 25 39	strb	w8, [x19, #0x977]
   17930:	a8 e2 65 39	ldrb	w8, [x21, #0x978]
   17934:	08 01 0f 4a	eor	w8, w8, w15
   17938:	68 e2 25 39	strb	w8, [x19, #0x978]
   1793c:	a8 e6 65 39	ldrb	w8, [x21, #0x979]
   17940:	ad 0e 80 52	mov	w13, #0x75
   17944:	08 01 0d 4a	eor	w8, w8, w13
   17948:	68 e6 25 39	strb	w8, [x19, #0x979]
   1794c:	a8 ea 65 39	ldrb	w8, [x21, #0x97a]
   17950:	08 11 1f 52	eor	w8, w8, #0x3e
   17954:	68 ea 25 39	strb	w8, [x19, #0x97a]
   17958:	a8 73 05 d1	sub	x8, x29, #0x15c
   1795c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17960:	08 cd 01 51	sub	w8, w8, #0x73
   17964:	68 ee 25 39	strb	w8, [x19, #0x97b]
   17968:	a8 83 05 d1	sub	x8, x29, #0x160
   1796c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17970:	08 f1 01 51	sub	w8, w8, #0x7c
   17974:	68 f2 25 39	strb	w8, [x19, #0x97c]
   17978:	a8 93 05 d1	sub	x8, x29, #0x164
   1797c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17980:	08 c5 01 51	sub	w8, w8, #0x71
   17984:	68 f6 25 39	strb	w8, [x19, #0x97d]
   17988:	a8 23 07 d1	sub	x8, x29, #0x1c8
   1798c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17990:	68 fa 25 39	strb	w8, [x19, #0x97e]
   17994:	a8 a3 05 d1	sub	x8, x29, #0x168
   17998:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   1799c:	08 b9 01 11	add	w8, w8, #0x6e
   179a0:	68 fe 25 39	strb	w8, [x19, #0x97f]
   179a4:	48 08 80 52	mov	w8, #0x42
   179a8:	ad 33 07 d1	sub	x13, x29, #0x1cc
   179ac:	ad 01 50 b8	ldur	w13, [x13, #-0x100]
   179b0:	a8 01 08 4a	eor	w8, w13, w8
   179b4:	68 02 26 39	strb	w8, [x19, #0x980]
   179b8:	a8 b3 05 d1	sub	x8, x29, #0x16c
   179bc:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   179c0:	08 f5 01 51	sub	w8, w8, #0x7d
   179c4:	68 06 26 39	strb	w8, [x19, #0x981]
   179c8:	a8 0a 66 39	ldrb	w8, [x21, #0x982]
   179cc:	0d 17 80 52	mov	w13, #0xb8
   179d0:	08 01 0d 4a	eor	w8, w8, w13
   179d4:	68 0a 26 39	strb	w8, [x19, #0x982]
   179d8:	a8 0e 66 39	ldrb	w8, [x21, #0x983]
   179dc:	6d 1b 80 52	mov	w13, #0xdb
   179e0:	08 01 0d 4a	eor	w8, w8, w13
   179e4:	68 0e 26 39	strb	w8, [x19, #0x983]
   179e8:	a8 12 66 39	ldrb	w8, [x21, #0x984]
   179ec:	08 15 1f 52	eor	w8, w8, #0x7e
   179f0:	68 12 26 39	strb	w8, [x19, #0x984]
   179f4:	28 01 80 52	mov	w8, #0x9
   179f8:	ad e3 06 d1	sub	x13, x29, #0x1b8
   179fc:	ad 01 50 b8	ldur	w13, [x13, #-0x100]
   17a00:	a8 01 08 4a	eor	w8, w13, w8
   17a04:	68 16 26 39	strb	w8, [x19, #0x985]
   17a08:	a8 1a 66 39	ldrb	w8, [x21, #0x986]
   17a0c:	cd 18 80 52	mov	w13, #0xc6
   17a10:	08 01 0d 4a	eor	w8, w8, w13
   17a14:	68 1a 26 39	strb	w8, [x19, #0x986]
   17a18:	a8 1e 66 39	ldrb	w8, [x21, #0x987]
   17a1c:	2d 0f 80 52	mov	w13, #0x79
   17a20:	08 01 0d 4a	eor	w8, w8, w13
   17a24:	68 1e 26 39	strb	w8, [x19, #0x987]
   17a28:	a8 22 66 39	ldrb	w8, [x21, #0x988]
   17a2c:	2d 07 80 52	mov	w13, #0x39
   17a30:	08 01 0d 4a	eor	w8, w8, w13
   17a34:	68 22 26 39	strb	w8, [x19, #0x988]
   17a38:	a8 e3 05 d1	sub	x8, x29, #0x178
   17a3c:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17a40:	e8 03 28 2a	mvn	w8, w8
   17a44:	68 26 26 39	strb	w8, [x19, #0x989]
   17a48:	a8 2a 66 39	ldrb	w8, [x21, #0x98a]
   17a4c:	08 01 09 4a	eor	w8, w8, w9
   17a50:	68 2a 26 39	strb	w8, [x19, #0x98a]
   17a54:	a8 73 06 d1	sub	x8, x29, #0x19c
   17a58:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17a5c:	e8 03 28 2a	mvn	w8, w8
   17a60:	68 2e 26 39	strb	w8, [x19, #0x98b]
   17a64:	a8 a3 06 d1	sub	x8, x29, #0x1a8
   17a68:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17a6c:	68 32 26 39	strb	w8, [x19, #0x98c]
   17a70:	a8 c3 06 d1	sub	x8, x29, #0x1b0
   17a74:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17a78:	68 36 26 39	strb	w8, [x19, #0x98d]
   17a7c:	a8 f3 06 d1	sub	x8, x29, #0x1bc
   17a80:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17a84:	e8 03 28 2a	mvn	w8, w8
   17a88:	68 3a 26 39	strb	w8, [x19, #0x98e]
   17a8c:	a8 3e 66 39	ldrb	w8, [x21, #0x98f]
   17a90:	08 01 03 4a	eor	w8, w8, w3
   17a94:	68 3e 26 39	strb	w8, [x19, #0x98f]
   17a98:	a8 42 66 39	ldrb	w8, [x21, #0x990]
   17a9c:	08 71 1c 52	eor	w8, w8, #0xfffffff1
   17aa0:	68 42 26 39	strb	w8, [x19, #0x990]
   17aa4:	a8 f3 05 d1	sub	x8, x29, #0x17c
   17aa8:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17aac:	08 65 01 51	sub	w8, w8, #0x59
   17ab0:	68 46 26 39	strb	w8, [x19, #0x991]
   17ab4:	a8 4a 66 39	ldrb	w8, [x21, #0x992]
   17ab8:	08 01 18 4a	eor	w8, w8, w24
   17abc:	68 4a 26 39	strb	w8, [x19, #0x992]
   17ac0:	a8 4e 66 39	ldrb	w8, [x21, #0x993]
   17ac4:	c9 19 80 52	mov	w9, #0xce
   17ac8:	08 01 09 4a	eor	w8, w8, w9
   17acc:	68 4e 26 39	strb	w8, [x19, #0x993]
   17ad0:	a8 03 04 d1	sub	x8, x29, #0x100
   17ad4:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17ad8:	68 52 26 39	strb	w8, [x19, #0x994]
   17adc:	a8 23 06 d1	sub	x8, x29, #0x188
   17ae0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17ae4:	08 89 00 11	add	w8, w8, #0x22
   17ae8:	68 56 26 39	strb	w8, [x19, #0x995]
   17aec:	a8 f3 04 d1	sub	x8, x29, #0x13c
   17af0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17af4:	68 5a 26 39	strb	w8, [x19, #0x996]
   17af8:	a8 5e 66 39	ldrb	w8, [x21, #0x997]
   17afc:	29 0e 80 52	mov	w9, #0x71
   17b00:	08 01 09 4a	eor	w8, w8, w9
   17b04:	68 5e 26 39	strb	w8, [x19, #0x997]
   17b08:	a8 62 66 39	ldrb	w8, [x21, #0x998]
   17b0c:	08 01 0b 4a	eor	w8, w8, w11
   17b10:	68 62 26 39	strb	w8, [x19, #0x998]
   17b14:	a8 66 66 39	ldrb	w8, [x21, #0x999]
   17b18:	ab 01 80 52	mov	w11, #0xd
   17b1c:	08 01 0b 4a	eor	w8, w8, w11
   17b20:	68 66 26 39	strb	w8, [x19, #0x999]
   17b24:	a8 6a 66 39	ldrb	w8, [x21, #0x99a]
   17b28:	08 01 04 4a	eor	w8, w8, w4
   17b2c:	68 6a 26 39	strb	w8, [x19, #0x99a]
   17b30:	e8 16 80 52	mov	w8, #0xb7
   17b34:	a9 c3 01 d1	sub	x9, x29, #0x70
   17b38:	29 01 50 b8	ldur	w9, [x9, #-0x100]
   17b3c:	28 01 08 4a	eor	w8, w9, w8
   17b40:	68 6e 26 39	strb	w8, [x19, #0x99b]
   17b44:	a8 a3 03 d1	sub	x8, x29, #0xe8
   17b48:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17b4c:	68 72 26 39	strb	w8, [x19, #0x99c]
   17b50:	a8 d3 03 d1	sub	x8, x29, #0xf4
   17b54:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17b58:	e8 03 28 2a	mvn	w8, w8
   17b5c:	68 76 26 39	strb	w8, [x19, #0x99d]
   17b60:	a8 f3 03 d1	sub	x8, x29, #0xfc
   17b64:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17b68:	08 01 19 52	eor	w8, w8, #0x80
   17b6c:	68 7a 26 39	strb	w8, [x19, #0x99e]
   17b70:	a8 63 06 d1	sub	x8, x29, #0x198
   17b74:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17b78:	08 35 00 51	sub	w8, w8, #0xd
   17b7c:	68 7e 26 39	strb	w8, [x19, #0x99f]
   17b80:	a8 82 66 39	ldrb	w8, [x21, #0x9a0]
   17b84:	a9 0d 80 52	mov	w9, #0x6d
   17b88:	08 01 09 4a	eor	w8, w8, w9
   17b8c:	68 82 26 39	strb	w8, [x19, #0x9a0]
   17b90:	a8 86 66 39	ldrb	w8, [x21, #0x9a1]
   17b94:	08 01 0e 4a	eor	w8, w8, w14
   17b98:	68 86 26 39	strb	w8, [x19, #0x9a1]
   17b9c:	a8 a3 02 d1	sub	x8, x29, #0xa8
   17ba0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17ba4:	e8 03 28 2a	mvn	w8, w8
   17ba8:	68 8a 26 39	strb	w8, [x19, #0x9a2]
   17bac:	a8 8e 66 39	ldrb	w8, [x21, #0x9a3]
   17bb0:	08 01 0a 4a	eor	w8, w8, w10
   17bb4:	c7 04 80 52	mov	w7, #0x26
   17bb8:	68 8e 26 39	strb	w8, [x19, #0x9a3]
   17bbc:	a8 e3 01 d1	sub	x8, x29, #0x78
   17bc0:	08 01 50 b8	ldur	w8, [x8, #-0x100]
   17bc4:	68 92 26 39	strb	w8, [x19, #0x9a4]
   17bc8:	a8 96 66 39	ldrb	w8, [x21, #0x9a5]
   17bcc:	08 71 1c 52	eor	w8, w8, #0xfffffff1
   17bd0:	68 96 26 39	strb	w8, [x19, #0x9a5]
   17bd4:	a8 9a 66 39	ldrb	w8, [x21, #0x9a6]
   17bd8:	08 01 00 4a	eor	w8, w8, w0
   17bdc:	68 9a 26 39	strb	w8, [x19, #0x9a6]
   17be0:	a8 86 6a 39	ldrb	w8, [x21, #0xaa1]
   17be4:	89 06 80 52	mov	w9, #0x34
   17be8:	09 01 09 0a	and	w9, w8, w9
   17bec:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17bf0:	a9 43 01 d1	sub	x9, x29, #0x50
   17bf4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17bf8:	a8 8e 6a 39	ldrb	w8, [x21, #0xaa3]
   17bfc:	09 75 1b 12	and	w9, w8, #0xffffffe7
   17c00:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c04:	a9 53 01 d1	sub	x9, x29, #0x54
   17c08:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c0c:	a8 d2 6a 39	ldrb	w8, [x21, #0xab4]
   17c10:	09 e1 00 12	and	w9, w8, #0x11111111
   17c14:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c18:	a9 63 01 d1	sub	x9, x29, #0x58
   17c1c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c20:	a8 de 6a 39	ldrb	w8, [x21, #0xab7]
   17c24:	09 e9 03 12	and	w9, w8, #0xeeeeeeee
   17c28:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c2c:	a9 93 01 d1	sub	x9, x29, #0x64
   17c30:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c34:	a8 22 6b 39	ldrb	w8, [x21, #0xac8]
   17c38:	09 75 1a 12	and	w9, w8, #0xffffffcf
   17c3c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c40:	a9 a3 01 d1	sub	x9, x29, #0x68
   17c44:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c48:	a8 26 6b 39	ldrb	w8, [x21, #0xac9]
   17c4c:	09 e9 01 12	and	w9, w8, #0xbbbbbbbb
   17c50:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c54:	a9 b3 01 d1	sub	x9, x29, #0x6c
   17c58:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c5c:	a8 4a 6b 39	ldrb	w8, [x21, #0xad2]
   17c60:	09 79 1c 12	and	w9, w8, #0xfffffff7
   17c64:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c68:	a9 c3 01 d1	sub	x9, x29, #0x70
   17c6c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c70:	a8 5e 6b 39	ldrb	w8, [x21, #0xad7]
   17c74:	49 0a 80 52	mov	w9, #0x52
   17c78:	09 01 09 0a	and	w9, w8, w9
   17c7c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c80:	a9 e3 01 d1	sub	x9, x29, #0x78
   17c84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c88:	a8 8a 6b 39	ldrb	w8, [x21, #0xae2]
   17c8c:	09 71 1a 12	and	w9, w8, #0xffffffc7
   17c90:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17c94:	a9 03 02 d1	sub	x9, x29, #0x80
   17c98:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17c9c:	a8 a2 6b 39	ldrb	w8, [x21, #0xae8]
   17ca0:	09 71 1c 12	and	w9, w8, #0xfffffff1
   17ca4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17ca8:	a9 33 02 d1	sub	x9, x29, #0x8c
   17cac:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17cb0:	a8 b6 6b 39	ldrb	w8, [x21, #0xaed]
   17cb4:	09 05 1b 12	and	w9, w8, #0x60
   17cb8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17cbc:	a9 63 02 d1	sub	x9, x29, #0x98
   17cc0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17cc4:	a8 ea 6b 39	ldrb	w8, [x21, #0xafa]
   17cc8:	09 e9 01 12	and	w9, w8, #0xbbbbbbbb
   17ccc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17cd0:	a9 a3 02 d1	sub	x9, x29, #0xa8
   17cd4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17cd8:	a8 fa 6b 39	ldrb	w8, [x21, #0xafe]
   17cdc:	09 01 0b 0a	and	w9, w8, w11
   17ce0:	a6 01 80 52	mov	w6, #0xd
   17ce4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17ce8:	a9 b3 02 d1	sub	x9, x29, #0xac
   17cec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17cf0:	a8 02 6c 39	ldrb	w8, [x21, #0xb00]
   17cf4:	4a 0b 80 52	mov	w10, #0x5a
   17cf8:	09 01 0a 0a	and	w9, w8, w10
   17cfc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d00:	a9 f3 02 d1	sub	x9, x29, #0xbc
   17d04:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d08:	a8 06 6c 39	ldrb	w8, [x21, #0xb01]
   17d0c:	09 79 1a 12	and	w9, w8, #0xffffffdf
   17d10:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d14:	a9 13 03 d1	sub	x9, x29, #0xc4
   17d18:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d1c:	a8 0e 6c 39	ldrb	w8, [x21, #0xb03]
   17d20:	09 79 1b 12	and	w9, w8, #0xffffffef
   17d24:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d28:	a9 53 03 d1	sub	x9, x29, #0xd4
   17d2c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d30:	a8 1e 6c 39	ldrb	w8, [x21, #0xb07]
   17d34:	09 01 10 0a	and	w9, w8, w16
   17d38:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d3c:	a9 73 03 d1	sub	x9, x29, #0xdc
   17d40:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d44:	a8 32 6c 39	ldrb	w8, [x21, #0xb0c]
   17d48:	09 01 11 0a	and	w9, w8, w17
   17d4c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d50:	a9 a3 03 d1	sub	x9, x29, #0xe8
   17d54:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d58:	a8 42 6c 39	ldrb	w8, [x21, #0xb10]
   17d5c:	e9 02 80 52	mov	w9, #0x17
   17d60:	09 01 09 0a	and	w9, w8, w9
   17d64:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d68:	a9 b3 03 d1	sub	x9, x29, #0xec
   17d6c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d70:	a8 7a 6c 39	ldrb	w8, [x21, #0xb1e]
   17d74:	c9 05 80 52	mov	w9, #0x2e
   17d78:	09 01 09 0a	and	w9, w8, w9
   17d7c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d80:	a9 d3 03 d1	sub	x9, x29, #0xf4
   17d84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17d88:	a8 9a 6c 39	ldrb	w8, [x21, #0xb26]
   17d8c:	56 0c 80 52	mov	w22, #0x62
   17d90:	09 01 16 0a	and	w9, w8, w22
   17d94:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17d98:	a9 f3 03 d1	sub	x9, x29, #0xfc
   17d9c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17da0:	a8 b2 6c 39	ldrb	w8, [x21, #0xb2c]
   17da4:	09 05 00 12	and	w9, w8, #0x3
   17da8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17dac:	a9 03 04 d1	sub	x9, x29, #0x100
   17db0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17db4:	a8 ba 6c 39	ldrb	w8, [x21, #0xb2e]
   17db8:	09 01 1f 12	and	w9, w8, #0x2
   17dbc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17dc0:	a9 13 04 d1	sub	x9, x29, #0x104
   17dc4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17dc8:	a8 c6 6c 39	ldrb	w8, [x21, #0xb31]
   17dcc:	09 01 1e 12	and	w9, w8, #0x4
   17dd0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17dd4:	a9 43 04 d1	sub	x9, x29, #0x110
   17dd8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ddc:	a8 ee 6c 39	ldrb	w8, [x21, #0xb3b]
   17de0:	09 01 0a 0a	and	w9, w8, w10
   17de4:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17de8:	a9 63 04 d1	sub	x9, x29, #0x118
   17dec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17df0:	a8 22 6d 39	ldrb	w8, [x21, #0xb48]
   17df4:	09 0a 80 52	mov	w9, #0x50
   17df8:	09 01 09 0a	and	w9, w8, w9
   17dfc:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e00:	a9 83 04 d1	sub	x9, x29, #0x120
   17e04:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e08:	a8 2a 6d 39	ldrb	w8, [x21, #0xb4a]
   17e0c:	09 09 1f 12	and	w9, w8, #0xe
   17e10:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e14:	a9 a3 04 d1	sub	x9, x29, #0x128
   17e18:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e1c:	a8 36 6d 39	ldrb	w8, [x21, #0xb4d]
   17e20:	09 e1 03 12	and	w9, w8, #0x22222222
   17e24:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e28:	a9 d3 04 d1	sub	x9, x29, #0x134
   17e2c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e30:	a8 42 6d 39	ldrb	w8, [x21, #0xb50]
   17e34:	09 6d 1a 12	and	w9, w8, #0xffffffc3
   17e38:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e3c:	a9 f3 04 d1	sub	x9, x29, #0x13c
   17e40:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e44:	a8 62 6d 39	ldrb	w8, [x21, #0xb58]
   17e48:	09 0d 80 52	mov	w9, #0x68
   17e4c:	09 01 09 0a	and	w9, w8, w9
   17e50:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e54:	a9 03 05 d1	sub	x9, x29, #0x140
   17e58:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e5c:	a8 86 6d 39	ldrb	w8, [x21, #0xb61]
   17e60:	09 0d 1f 12	and	w9, w8, #0x1e
   17e64:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e68:	a9 43 05 d1	sub	x9, x29, #0x150
   17e6c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e70:	a8 c6 6d 39	ldrb	w8, [x21, #0xb71]
   17e74:	3c 05 80 52	mov	w28, #0x29
   17e78:	09 01 1c 0a	and	w9, w8, w28
   17e7c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e80:	a9 93 05 d1	sub	x9, x29, #0x164
   17e84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17e88:	a8 de 6d 39	ldrb	w8, [x21, #0xb77]
   17e8c:	5e 0e 80 52	mov	w30, #0x72
   17e90:	09 01 1e 0a	and	w9, w8, w30
   17e94:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17e98:	a9 a3 05 d1	sub	x9, x29, #0x168
   17e9c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ea0:	a8 f6 6d 39	ldrb	w8, [x21, #0xb7d]
   17ea4:	09 e1 00 12	and	w9, w8, #0x11111111
   17ea8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17eac:	a9 e3 05 d1	sub	x9, x29, #0x178
   17eb0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17eb4:	a8 06 6e 39	ldrb	w8, [x21, #0xb81]
   17eb8:	c9 0a 80 52	mov	w9, #0x56
   17ebc:	09 01 09 0a	and	w9, w8, w9
   17ec0:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17ec4:	a9 23 06 d1	sub	x9, x29, #0x188
   17ec8:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ecc:	a8 12 6e 39	ldrb	w8, [x21, #0xb84]
   17ed0:	b0 09 80 52	mov	w16, #0x4d
   17ed4:	09 01 10 0a	and	w9, w8, w16
   17ed8:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17edc:	a9 63 06 d1	sub	x9, x29, #0x198
   17ee0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ee4:	a8 1e 6e 39	ldrb	w8, [x21, #0xb87]
   17ee8:	09 01 00 12	and	w9, w8, #0x1
   17eec:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17ef0:	a9 73 06 d1	sub	x9, x29, #0x19c
   17ef4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ef8:	a8 36 6e 39	ldrb	w8, [x21, #0xb8d]
   17efc:	09 01 0c 0a	and	w9, w8, w12
   17f00:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17f04:	a9 a3 06 d1	sub	x9, x29, #0x1a8
   17f08:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17f0c:	a8 3a 6e 39	ldrb	w8, [x21, #0xb8e]
   17f10:	ad 06 80 52	mov	w13, #0x35
   17f14:	09 01 0d 0a	and	w9, w8, w13
   17f18:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17f1c:	a9 c3 06 d1	sub	x9, x29, #0x1b0
   17f20:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17f24:	a8 5a 6e 39	ldrb	w8, [x21, #0xb96]
   17f28:	09 09 1f 12	and	w9, w8, #0xe
   17f2c:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17f30:	a9 e3 06 d1	sub	x9, x29, #0x1b8
   17f34:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17f38:	a8 6a 6e 39	ldrb	w8, [x21, #0xb9a]
   17f3c:	0f 0b 80 52	mov	w15, #0x58
   17f40:	09 01 0f 0a	and	w9, w8, w15
   17f44:	08 05 09 4b	sub	w8, w8, w9, lsl #1
   17f48:	a9 f3 06 d1	sub	x9, x29, #0x1bc
   17f4c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17f50:	a8 92 68 39	ldrb	w8, [x21, #0xa24]
   17f54:	e9 03 28 2a	mvn	w9, w8
   17f58:	01 09 1b 12	and	w1, w8, #0xe0
   17f5c:	21 11 00 33	bfxil	w1, w9, #0, #5
   17f60:	a9 aa 68 39	ldrb	w9, [x21, #0xa2a]
   17f64:	ea 03 29 2a	mvn	w10, w9
   17f68:	23 15 1e 12	and	w3, w9, #0xfc
   17f6c:	43 05 00 33	bfxil	w3, w10, #0, #2
   17f70:	aa 0e 69 39	ldrb	w10, [x21, #0xa43]
   17f74:	eb 03 2a 2a	mvn	w11, w10
   17f78:	48 15 1e 12	and	w8, w10, #0xfc
   17f7c:	68 05 00 33	bfxil	w8, w11, #0, #2
   17f80:	a9 33 01 d1	sub	x9, x29, #0x4c
   17f84:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17f88:	aa de 69 39	ldrb	w10, [x21, #0xa77]
   17f8c:	88 1f 80 52	mov	w8, #0xfc
   17f90:	09 01 2a 0a	bic	w9, w8, w10
   17f94:	49 05 00 33	bfxil	w9, w10, #0, #2
   17f98:	aa 13 01 d1	sub	x10, x29, #0x44
   17f9c:	49 01 10 b8	stur	w9, [x10, #-0x100]
   17fa0:	b7 f2 69 39	ldrb	w23, [x21, #0xa7c]
   17fa4:	eb 03 37 2a	mvn	w11, w23
   17fa8:	77 01 00 33	bfxil	w23, w11, #0, #1
   17fac:	ab fe 69 39	ldrb	w11, [x21, #0xa7f]
   17fb0:	08 01 2b 0a	bic	w8, w8, w11
   17fb4:	68 05 00 33	bfxil	w8, w11, #0, #2
   17fb8:	a9 d3 00 d1	sub	x9, x29, #0x34
   17fbc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17fc0:	ab a2 66 39	ldrb	w11, [x21, #0x9a8]
   17fc4:	48 19 80 52	mov	w8, #0xca
   17fc8:	0c 01 2b 0a	bic	w12, w8, w11
   17fcc:	6b 01 0d 0a	and	w11, w11, w13
   17fd0:	98 01 0b 2a	orr	w24, w12, w11
   17fd4:	ac b2 66 39	ldrb	w12, [x21, #0x9ac]
   17fd8:	c8 07 80 52	mov	w8, #0x3e
   17fdc:	0d 01 2c 0a	bic	w13, w8, w12
   17fe0:	8c 69 1a 12	and	w12, w12, #0xffffffc1
   17fe4:	a8 01 0c 2a	orr	w8, w13, w12
   17fe8:	a9 83 08 d1	sub	x9, x29, #0x220
   17fec:	28 01 10 b8	stur	w8, [x9, #-0x100]
   17ff0:	ac ba 66 39	ldrb	w12, [x21, #0x9ae]
   17ff4:	a8 1d 80 52	mov	w8, #0xed
   17ff8:	0d 01 2c 2a	orn	w13, w8, w12
   17ffc:	48 02 80 52	mov	w8, #0x12
   18000:	8c 01 08 2a	orr	w12, w12, w8
   18004:	bb 01 0c 0a	and	w27, w13, w12
   18008:	ac be 66 39	ldrb	w12, [x21, #0x9af]
   1800c:	48 08 80 52	mov	w8, #0x42
   18010:	0e 01 2c 0a	bic	w14, w8, w12
   18014:	a8 17 80 52	mov	w8, #0xbd
   18018:	8c 01 08 0a	and	w12, w12, w8
   1801c:	d9 01 0c 2a	orr	w25, w14, w12
   18020:	ae ca 66 39	ldrb	w14, [x21, #0x9b2]
   18024:	28 11 80 52	mov	w8, #0x89
   18028:	d1 01 08 0a	and	w17, w14, w8
   1802c:	4e 00 2e 0a	bic	w14, w2, w14
   18030:	3a 02 0e 2a	orr	w26, w17, w14
   18034:	b1 e6 66 39	ldrb	w17, [x21, #0x9b9]
   18038:	4c 01 80 52	mov	w12, #0xa
   1803c:	80 01 31 0a	bic	w0, w12, w17
   18040:	ad 1e 80 52	mov	w13, #0xf5
   18044:	31 02 0d 0a	and	w17, w17, w13
   18048:	08 00 11 2a	orr	w8, w0, w17
   1804c:	a9 e3 09 d1	sub	x9, x29, #0x278
   18050:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18054:	b1 ea 66 39	ldrb	w17, [x21, #0x9ba]
   18058:	48 1d 80 52	mov	w8, #0xea
   1805c:	20 02 08 2a	orr	w0, w17, w8
   18060:	a8 02 80 52	mov	w8, #0x15
   18064:	11 01 31 2a	orn	w17, w8, w17
   18068:	08 00 11 0a	and	w8, w0, w17
   1806c:	a9 b3 08 d1	sub	x9, x29, #0x22c
   18070:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18074:	b1 ee 66 39	ldrb	w17, [x21, #0x9bb]
   18078:	68 01 80 52	mov	w8, #0xb
   1807c:	00 01 31 0a	bic	w0, w8, w17
   18080:	88 1e 80 52	mov	w8, #0xf4
   18084:	31 02 08 0a	and	w17, w17, w8
   18088:	11 00 11 2a	orr	w17, w0, w17
   1808c:	a0 fa 66 39	ldrb	w0, [x21, #0x9be]
   18090:	28 09 80 52	mov	w8, #0x49
   18094:	02 00 08 0a	and	w2, w0, w8
   18098:	c8 16 80 52	mov	w8, #0xb6
   1809c:	00 01 20 0a	bic	w0, w8, w0
   180a0:	42 00 00 2a	orr	w2, w2, w0
   180a4:	a0 fe 66 39	ldrb	w0, [x21, #0x9bf]
   180a8:	cb 0a 80 52	mov	w11, #0x56
   180ac:	04 00 0b 2a	orr	w4, w0, w11
   180b0:	29 15 80 52	mov	w9, #0xa9
   180b4:	20 01 20 2a	orn	w0, w9, w0
   180b8:	80 00 00 0a	and	w0, w4, w0
   180bc:	a4 22 67 39	ldrb	w4, [x21, #0x9c8]
   180c0:	88 0d 80 52	mov	w8, #0x6c
   180c4:	85 00 08 2a	orr	w5, w4, w8
   180c8:	6a 12 80 52	mov	w10, #0x93
   180cc:	44 01 24 2a	orn	w4, w10, w4
   180d0:	8e 00 05 0a	and	w14, w4, w5
   180d4:	b4 53 09 d1	sub	x20, x29, #0x254
   180d8:	8e 02 10 b8	stur	w14, [x20, #-0x100]
   180dc:	a5 2e 67 39	ldrb	w5, [x21, #0x9cb]
   180e0:	a6 00 06 0a	and	w6, w5, w6
   180e4:	4e 1e 80 52	mov	w14, #0xf2
   180e8:	c5 01 25 0a	bic	w5, w14, w5
   180ec:	c5 00 05 2a	orr	w5, w6, w5
   180f0:	a6 3e 67 39	ldrb	w6, [x21, #0x9cf]
   180f4:	e7 00 26 0a	bic	w7, w7, w6
   180f8:	24 1b 80 52	mov	w4, #0xd9
   180fc:	c6 00 04 0a	and	w6, w6, w4
   18100:	e6 00 06 2a	orr	w6, w7, w6
   18104:	a7 52 67 39	ldrb	w7, [x21, #0x9d4]
   18108:	ee 09 80 52	mov	w14, #0x4f
   1810c:	d4 01 27 0a	bic	w20, w14, w7
   18110:	0e 16 80 52	mov	w14, #0xb0
   18114:	e7 00 0e 0a	and	w7, w7, w14
   18118:	8e 02 07 2a	orr	w14, w20, w7
   1811c:	b4 d3 08 d1	sub	x20, x29, #0x234
   18120:	8e 02 10 b8	stur	w14, [x20, #-0x100]
   18124:	a7 62 67 39	ldrb	w7, [x21, #0x9d8]
   18128:	14 01 27 0a	bic	w20, w8, w7
   1812c:	e7 00 0a 0a	and	w7, w7, w10
   18130:	6e 12 80 52	mov	w14, #0x93
   18134:	88 02 07 2a	orr	w8, w20, w7
   18138:	aa 23 09 d1	sub	x10, x29, #0x248
   1813c:	48 01 10 b8	stur	w8, [x10, #-0x100]
   18140:	a7 66 67 39	ldrb	w7, [x21, #0x9d9]
   18144:	a4 16 80 52	mov	w4, #0xb5
   18148:	f4 00 04 0a	and	w20, w7, w4
   1814c:	4a 09 80 52	mov	w10, #0x4a
   18150:	47 01 27 0a	bic	w7, w10, w7
   18154:	88 02 07 2a	orr	w8, w20, w7
   18158:	b4 73 09 d1	sub	x20, x29, #0x25c
   1815c:	88 02 10 b8	stur	w8, [x20, #-0x100]
   18160:	a7 6a 67 39	ldrb	w7, [x21, #0x9da]
   18164:	a8 13 80 52	mov	w8, #0x9d
   18168:	14 01 27 0a	bic	w20, w8, w7
   1816c:	e7 00 16 0a	and	w7, w7, w22
   18170:	88 02 07 2a	orr	w8, w20, w7
   18174:	b4 b3 09 d1	sub	x20, x29, #0x26c
   18178:	88 02 10 b8	stur	w8, [x20, #-0x100]
   1817c:	a7 6e 67 39	ldrb	w7, [x21, #0x9db]
   18180:	48 16 80 52	mov	w8, #0xb2
   18184:	14 01 27 0a	bic	w20, w8, w7
   18188:	e7 00 10 0a	and	w7, w7, w16
   1818c:	87 02 07 2a	orr	w7, w20, w7
   18190:	b4 7a 67 39	ldrb	w20, [x21, #0x9de]
   18194:	36 01 34 0a	bic	w22, w9, w20
   18198:	94 02 0b 0a	and	w20, w20, w11
   1819c:	c8 02 14 2a	orr	w8, w22, w20
   181a0:	a9 c3 09 d1	sub	x9, x29, #0x270
   181a4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   181a8:	b4 82 67 39	ldrb	w20, [x21, #0x9e0]
   181ac:	f6 03 34 2a	mvn	w22, w20
   181b0:	d6 72 1c 12	and	w22, w22, #0xfffffff1
   181b4:	94 0a 1f 12	and	w20, w20, #0xe
   181b8:	c8 02 14 2a	orr	w8, w22, w20
   181bc:	a9 e3 08 d1	sub	x9, x29, #0x238
   181c0:	28 01 10 b8	stur	w8, [x9, #-0x100]
   181c4:	b4 8a 67 39	ldrb	w20, [x21, #0x9e2]
   181c8:	96 02 1c 2a	orr	w22, w20, w28
   181cc:	c8 1a 80 52	mov	w8, #0xd6
   181d0:	14 01 34 2a	orn	w20, w8, w20
   181d4:	c8 02 14 0a	and	w8, w22, w20
   181d8:	a9 d3 09 d1	sub	x9, x29, #0x274
   181dc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   181e0:	b4 96 67 39	ldrb	w20, [x21, #0x9e5]
   181e4:	28 03 80 52	mov	w8, #0x19
   181e8:	16 01 34 0a	bic	w22, w8, w20
   181ec:	c8 1c 80 52	mov	w8, #0xe6
   181f0:	94 02 08 0a	and	w20, w20, w8
   181f4:	c8 02 14 2a	orr	w8, w22, w20
   181f8:	a9 63 09 d1	sub	x9, x29, #0x258
   181fc:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18200:	b4 9e 67 39	ldrb	w20, [x21, #0x9e7]
   18204:	e8 14 80 52	mov	w8, #0xa7
   18208:	96 02 08 0a	and	w22, w20, w8
   1820c:	f4 01 34 0a	bic	w20, w15, w20
   18210:	c8 02 14 2a	orr	w8, w22, w20
   18214:	a9 83 09 d1	sub	x9, x29, #0x260
   18218:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1821c:	b4 ae 67 39	ldrb	w20, [x21, #0x9eb]
   18220:	68 0a 80 52	mov	w8, #0x53
   18224:	16 01 34 0a	bic	w22, w8, w20
   18228:	88 15 80 52	mov	w8, #0xac
   1822c:	94 02 08 0a	and	w20, w20, w8
   18230:	c8 02 14 2a	orr	w8, w22, w20
   18234:	a9 c3 08 d1	sub	x9, x29, #0x230
   18238:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1823c:	b4 b2 67 39	ldrb	w20, [x21, #0x9ec]
   18240:	c8 13 80 52	mov	w8, #0x9e
   18244:	16 01 34 0a	bic	w22, w8, w20
   18248:	28 0c 80 52	mov	w8, #0x61
   1824c:	94 02 08 0a	and	w20, w20, w8
   18250:	c8 02 14 2a	orr	w8, w22, w20
   18254:	a9 f3 08 d1	sub	x9, x29, #0x23c
   18258:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1825c:	b4 ba 67 39	ldrb	w20, [x21, #0x9ee]
   18260:	c8 14 80 52	mov	w8, #0xa6
   18264:	16 01 34 0a	bic	w22, w8, w20
   18268:	28 0b 80 52	mov	w8, #0x59
   1826c:	94 02 08 0a	and	w20, w20, w8
   18270:	c8 02 14 2a	orr	w8, w22, w20
   18274:	a9 03 09 d1	sub	x9, x29, #0x240
   18278:	28 01 10 b8	stur	w8, [x9, #-0x100]
   1827c:	b4 c2 67 39	ldrb	w20, [x21, #0x9f0]
   18280:	f6 03 34 2a	mvn	w22, w20
   18284:	d6 76 19 12	and	w22, w22, #0xffffff9f
   18288:	94 06 1b 12	and	w20, w20, #0x60
   1828c:	c8 02 14 2a	orr	w8, w22, w20
   18290:	a9 33 09 d1	sub	x9, x29, #0x24c
   18294:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18298:	b4 c6 67 39	ldrb	w20, [x21, #0x9f1]
   1829c:	c8 11 80 52	mov	w8, #0x8e
   182a0:	16 01 34 0a	bic	w22, w8, w20
   182a4:	28 0e 80 52	mov	w8, #0x71
   182a8:	94 02 08 0a	and	w20, w20, w8
   182ac:	c8 02 14 2a	orr	w8, w22, w20
   182b0:	a9 93 09 d1	sub	x9, x29, #0x264
   182b4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   182b8:	b4 ca 67 39	ldrb	w20, [x21, #0x9f2]
   182bc:	d6 03 34 0a	bic	w22, w30, w20
   182c0:	a8 11 80 52	mov	w8, #0x8d
   182c4:	94 02 08 0a	and	w20, w20, w8
   182c8:	d6 02 14 2a	orr	w22, w22, w20
   182cc:	b4 d6 67 39	ldrb	w20, [x21, #0x9f5]
   182d0:	9c 76 1a 12	and	w28, w20, #0xffffffcf
   182d4:	08 06 80 52	mov	w8, #0x30
   182d8:	14 01 34 0a	bic	w20, w8, w20
   182dc:	88 03 14 2a	orr	w8, w28, w20
   182e0:	a9 a3 09 d1	sub	x9, x29, #0x268
   182e4:	28 01 10 b8	stur	w8, [x9, #-0x100]
   182e8:	b4 da 67 39	ldrb	w20, [x21, #0x9f6]
   182ec:	fc 03 34 2a	mvn	w28, w20
   182f0:	9c e7 00 12	and	w28, w28, #0x33333333
   182f4:	94 e6 02 12	and	w20, w20, #0xcccccccc
   182f8:	94 03 14 2a	orr	w20, w28, w20
   182fc:	bc e6 67 39	ldrb	w28, [x21, #0x9f9]
   18300:	fe 03 3c 2a	mvn	w30, w28
   18304:	de 73 1c 12	and	w30, w30, #0xfffffff1
   18308:	9c 0b 1f 12	and	w28, w28, #0xe
   1830c:	dc 03 1c 2a	orr	w28, w30, w28
   18310:	be f2 67 39	ldrb	w30, [x21, #0x9fc]
   18314:	08 0a 80 52	mov	w8, #0x50
   18318:	c8 03 08 0a	and	w8, w30, w8
   1831c:	e9 15 80 52	mov	w9, #0xaf
   18320:	3e 01 3e 0a	bic	w30, w9, w30
   18324:	08 01 1e 2a	orr	w8, w8, w30
   18328:	a9 43 09 d1	sub	x9, x29, #0x250
   1832c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18330:	a8 fa 67 39	ldrb	w8, [x21, #0x9fe]
   18334:	4f 1b 80 52	mov	w15, #0xda
   18338:	fe 01 28 2a	orn	w30, w15, w8
   1833c:	b0 04 80 52	mov	w16, #0x25
   18340:	08 01 10 2a	orr	w8, w8, w16
   18344:	c8 03 08 0a	and	w8, w30, w8
   18348:	a9 13 09 d1	sub	x9, x29, #0x244
   1834c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18350:	a8 1a 68 39	ldrb	w8, [x21, #0xa06]
   18354:	be 01 28 0a	bic	w30, w13, w8
   18358:	08 01 0c 0a	and	w8, w8, w12
   1835c:	c8 03 08 2a	orr	w8, w30, w8
   18360:	a9 a3 08 d1	sub	x9, x29, #0x228
   18364:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18368:	a8 2e 68 39	ldrb	w8, [x21, #0xa0b]
   1836c:	9e 00 28 0a	bic	w30, w4, w8
   18370:	08 01 0a 0a	and	w8, w8, w10
   18374:	c8 03 08 2a	orr	w8, w30, w8
   18378:	a9 93 08 d1	sub	x9, x29, #0x224
   1837c:	28 01 10 b8	stur	w8, [x9, #-0x100]
   18380:	a8 6e 68 39	ldrb	w8, [x21, #0xa1b]
   18384:	8a 0a 80 52	mov	w10, #0x54
   18388:	5e 01 28 0a	bic	w30, w10, w8
   1838c:	69 15 80 52	mov	w9, #0xab
   18390:	08 01 09 0a	and	w8, w8, w9
   18394:	c8 03 08 2a	orr	w8, w30, w8
   18398:	ab 63 08 d1	sub	x11, x29, #0x218
   1839c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   183a0:	a8 72 68 39	ldrb	w8, [x21, #0xa1c]
   183a4:	eb 0d 80 52	mov	w11, #0x6f
   183a8:	7e 01 28 0a	bic	w30, w11, w8
   183ac:	0b 12 80 52	mov	w11, #0x90
   183b0:	08 01 0b 0a	and	w8, w8, w11
   183b4:	c8 03 08 2a	orr	w8, w30, w8
   183b8:	ab 73 08 d1	sub	x11, x29, #0x21c
   183bc:	68 01 10 b8	stur	w8, [x11, #-0x100]
   183c0:	a8 7e 68 39	ldrb	w8, [x21, #0xa1f]
   183c4:	0b 14 80 52	mov	w11, #0xa0
   183c8:	1e 01 0b 0a	and	w30, w8, w11
   183cc:	eb 0b 80 52	mov	w11, #0x5f
   183d0:	68 01 28 0a	bic	w8, w11, w8
   183d4:	c8 03 08 2a	orr	w8, w30, w8
   183d8:	ab 53 08 d1	sub	x11, x29, #0x214
   183dc:	68 01 10 b8	stur	w8, [x11, #-0x100]
   183e0:	a8 86 68 39	ldrb	w8, [x21, #0xa21]
   183e4:	8b 0b 80 52	mov	w11, #0x5c
   183e8:	1e 01 0b 2a	orr	w30, w8, w11
   183ec:	6b 14 80 52	mov	w11, #0xa3
   183f0:	68 01 28 2a	orn	w8, w11, w8
   183f4:	c8 03 08 0a	and	w8, w30, w8
   183f8:	ab 43 08 d1	sub	x11, x29, #0x210
   183fc:	68 01 10 b8	stur	w8, [x11, #-0x100]
   18400:	a8 8e 68 39	ldrb	w8, [x21, #0xa23]
   18404:	0b 09 80 52	mov	w11, #0x48
   18408:	7e 01 28 0a	bic	w30, w11, w8
   1840c:	eb 16 80 52	mov	w11, #0xb7
   18410:	08 01 0b 0a	and	w8, w8, w11
   18414:	c8 03 08 2a	orr	w8, w30, w8
   18418:	ab 33 08 d1	sub	x11, x29, #0x20c
   1841c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   18420:	a8 9a 68 39	ldrb	w8, [x21, #0xa26]
   18424:	8b 11 80 52	mov	w11, #0x8c
   18428:	7e 01 28 0a	bic	w30, w11, w8
   1842c:	6b 0e 80 52	mov	w11, #0x73
   18430:	08 01 0b 0a	and	w8, w8, w11
   18434:	c8 03 08 2a	orr	w8, w30, w8
   18438:	ab f3 07 d1	sub	x11, x29, #0x1fc
   1843c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   18440:	a8 a6 68 39	ldrb	w8, [x21, #0xa29]
   18444:	2b 08 80 52	mov	w11, #0x41
   18448:	1e 01 0b 2a	orr	w30, w8, w11
   1844c:	cb 17 80 52	mov	w11, #0xbe
   18450:	68 01 28 2a	orn	w8, w11, w8
   18454:	08 01 1e 0a	and	w8, w8, w30
   18458:	ab d3 07 d1	sub	x11, x29, #0x1f4
   1845c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   18460:	a8 ae 68 39	ldrb	w8, [x21, #0xa2b]
   18464:	1e 01 10 0a	and	w30, w8, w16
   18468:	ac 04 80 52	mov	w12, #0x25
   1846c:	e8 01 28 0a	bic	w8, w15, w8
   18470:	50 1b 80 52	mov	w16, #0xda
   18474:	c8 03 08 2a	orr	w8, w30, w8
   18478:	ab e3 07 d1	sub	x11, x29, #0x1f8
   1847c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   18480:	a8 b2 68 39	ldrb	w8, [x21, #0xa2c]
   18484:	44 0a 80 52	mov	w4, #0x52
   18488:	9e 00 28 2a	orn	w30, w4, w8
   1848c:	ab 15 80 52	mov	w11, #0xad
   18490:	08 01 0b 2a	orr	w8, w8, w11
   18494:	c8 03 08 0a	and	w8, w30, w8
   18498:	ab 03 08 d1	sub	x11, x29, #0x200
   1849c:	68 01 10 b8	stur	w8, [x11, #-0x100]
   184a0:	a8 ba 68 39	ldrb	w8, [x21, #0xa2e]
   184a4:	de 01 28 2a	orn	w30, w14, w8
   184a8:	8b 0d 80 52	mov	w11, #0x6c
   184ac:	08 01 0b 2a	orr	w8, w8, w11
   184b0:	c8 03 08 0a	and	w8, w30, w8
   184b4:	ab 13 08 d1	sub	x11, x29, #0x204
   184b8:	68 01 10 b8	stur	w8, [x11, #-0x100]
   184bc:	a8 c2 68 39	ldrb	w8, [x21, #0xa30]
   184c0:	cb 18 80 52	mov	w11, #0xc6
   184c4:	7e 01 28 0a	bic	w30, w11, w8
   184c8:	2b 07 80 52	mov	w11, #0x39
   184cc:	08 01 0b 0a	and	w8, w8, w11
   184d0:	c8 03 08 2a	orr	w8, w30, w8
   184d4:	ab 23 08 d1	sub	x11, x29, #0x208
   184d8:	68 01 10 b8	stur	w8, [x11, #-0x100]
   184dc:	a8 d6 68 39	ldrb	w8, [x21, #0xa35]
   184e0:	fe 0a 80 52	mov	w30, #0x57
