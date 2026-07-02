.class public Lorg/spongycastle/crypto/params/DESParameters;
.super Lorg/spongycastle/crypto/params/KeyParameter;
.source "DESParameters.java"


# static fields
.field private static DES_weak_keys:[B = null

.field private static final N_DES_WEAK_KEYS:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/params/DESParameters;->DES_weak_keys:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public static setOddParity([B)V
    .locals 5

    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 96
    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    xor-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 97
    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
