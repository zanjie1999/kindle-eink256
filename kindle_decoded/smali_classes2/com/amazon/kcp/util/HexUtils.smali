.class public Lcom/amazon/kcp/util/HexUtils;
.super Ljava/lang/Object;
.source "HexUtils.java"


# static fields
.field private static final ASCII_TO_HEX:[I

.field private static final HEX_TO_ASCII:[C

.field private static final INVALID_HEX_CHARACTER:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 11
    sput-object v0, Lcom/amazon/kcp/util/HexUtils;->ASCII_TO_HEX:[I

    const/4 v1, -0x1

    .line 14
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 15
    sget-object v0, Lcom/amazon/kcp/util/HexUtils;->ASCII_TO_HEX:[I

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput v1, v0, v2

    const/4 v3, 0x1

    const/16 v4, 0x31

    .line 16
    aput v3, v0, v4

    const/4 v5, 0x2

    const/16 v6, 0x32

    .line 17
    aput v5, v0, v6

    const/4 v7, 0x3

    const/16 v8, 0x33

    .line 18
    aput v7, v0, v8

    const/4 v9, 0x4

    const/16 v10, 0x34

    .line 19
    aput v9, v0, v10

    const/4 v11, 0x5

    const/16 v12, 0x35

    .line 20
    aput v11, v0, v12

    const/4 v13, 0x6

    const/16 v14, 0x36

    .line 21
    aput v13, v0, v14

    const/4 v15, 0x7

    const/16 v16, 0x37

    .line 22
    aput v15, v0, v16

    const/16 v17, 0x8

    const/16 v18, 0x38

    .line 23
    aput v17, v0, v18

    const/16 v19, 0x9

    const/16 v20, 0x39

    .line 24
    aput v19, v0, v20

    const/16 v21, 0xa

    const/16 v22, 0x61

    .line 25
    aput v21, v0, v22

    const/16 v23, 0x41

    aput v21, v0, v23

    const/16 v23, 0x62

    const/16 v24, 0xb

    .line 26
    aput v24, v0, v23

    const/16 v23, 0x42

    aput v24, v0, v23

    const/16 v23, 0x63

    const/16 v24, 0xc

    .line 27
    aput v24, v0, v23

    const/16 v23, 0x43

    aput v24, v0, v23

    const/16 v23, 0x64

    const/16 v24, 0xd

    .line 28
    aput v24, v0, v23

    const/16 v23, 0x44

    aput v24, v0, v23

    const/16 v23, 0x65

    const/16 v24, 0xe

    .line 29
    aput v24, v0, v23

    const/16 v23, 0x45

    aput v24, v0, v23

    const/16 v23, 0x66

    const/16 v24, 0xf

    .line 30
    aput v24, v0, v23

    const/16 v23, 0x46

    aput v24, v0, v23

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 36
    sput-object v0, Lcom/amazon/kcp/util/HexUtils;->HEX_TO_ASCII:[C

    aput-char v2, v0, v1

    aput-char v4, v0, v3

    aput-char v6, v0, v5

    aput-char v8, v0, v7

    aput-char v10, v0, v9

    aput-char v12, v0, v11

    aput-char v14, v0, v13

    aput-char v16, v0, v15

    aput-char v18, v0, v17

    aput-char v20, v0, v19

    aput-char v22, v0, v21

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    return-void
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    shr-int/lit8 v1, v0, 0x1

    .line 75
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 80
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "Illegal hex byte: "

    const/16 v6, 0x66

    if-gt v3, v6, :cond_1

    if-gt v4, v6, :cond_1

    .line 85
    sget-object v6, Lcom/amazon/kcp/util/HexUtils;->ASCII_TO_HEX:[I

    aget v3, v6, v3

    .line 86
    aget v4, v6, v4

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    if-eq v4, v6, :cond_0

    shr-int/lit8 v5, v2, 0x1

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 91
    aput-byte v3, v1, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input should have an even number of characters, not odd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 108
    sget-object v2, Lcom/amazon/kcp/util/HexUtils;->HEX_TO_ASCII:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    sget-object v2, Lcom/amazon/kcp/util/HexUtils;->HEX_TO_ASCII:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
