.class public Lcom/amazon/kcp/pdb/PDBUtilities;
.super Ljava/lang/Object;
.source "PDBUtilities.java"


# direct methods
.method public static getID([BI)I
    .locals 2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4e

    add-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x1

    .line 133
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1
.end method

.method public static getNextRecordID([B)I
    .locals 2

    const/16 v0, 0x44

    .line 88
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/16 v1, 0x45

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/16 v1, 0x46

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/16 v1, 0x47

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static getOffset([BI)I
    .locals 2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4e

    add-int/lit8 v0, p1, 0x1

    .line 118
    aget-byte p1, p0, p1

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p1, p0

    return p1
.end method

.method public static getPDBName([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    :goto_0
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecordCount([B)I
    .locals 2

    const/16 v0, 0x4c

    .line 104
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0x4d

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static getType([B)Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x3c

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
