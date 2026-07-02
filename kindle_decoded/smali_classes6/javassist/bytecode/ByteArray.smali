.class public Ljavassist/bytecode/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# direct methods
.method public static readU16bit([BI)I
    .locals 1

    .line 27
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
