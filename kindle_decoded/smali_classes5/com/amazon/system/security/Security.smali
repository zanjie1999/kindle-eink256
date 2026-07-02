.class public abstract Lcom/amazon/system/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final BASE34_MODIF:[C

.field private static final CRC_TABLE:[I

.field private static CUSTOM_PID_FOR_BUNDLED_DICTIONARY_DRM:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    const-class v0, Lcom/amazon/system/security/Security;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/system/security/Security;->TAG:Ljava/lang/String;

    const-string v0, "-3891337692"

    .line 55
    sput-object v0, Lcom/amazon/system/security/Security;->CUSTOM_PID_FOR_BUNDLED_DICTIONARY_DRM:Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [C

    .line 57
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/system/security/Security;->BASE34_MODIF:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 64
    sput-object v0, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_0
    sget-object v2, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 68
    aput v1, v2, v1

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 70
    sget-object v3, Lcom/amazon/system/security/Security;->CRC_TABLE:[I

    aget v4, v3, v1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 71
    aget v4, v3, v1

    ushr-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    goto :goto_2

    :cond_0
    const v4, -0x12477ce0

    .line 73
    aget v5, v3, v1

    ushr-int/lit8 v5, v5, 0x1

    xor-int/2addr v4, v5

    aput v4, v3, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const-string v0, "UTF-8"

    if-eqz p2, :cond_0

    .line 332
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 336
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    :cond_1
    if-eqz p4, :cond_2

    .line 340
    invoke-interface {p0, p4}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    :cond_2
    const/4 p2, 0x0

    if-eqz p5, :cond_3

    const/4 p3, 0x0

    .line 344
    :goto_1
    array-length p4, p5

    if-ge p3, p4, :cond_3

    .line 345
    aget-object p4, p5, p3

    invoke-interface {p0, p4}, Lcom/amazon/system/security/IMessageDigest;->update([B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 349
    :cond_3
    invoke-interface {p0}, Lcom/amazon/system/security/IMessageDigest;->digest()[B

    move-result-object p0

    .line 351
    invoke-interface {p1, p0}, Lcom/amazon/system/security/IBase64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    .line 352
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 354
    :goto_2
    sget-object p1, Lcom/amazon/system/security/Security;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public static getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;
    .locals 12

    move-object/from16 v0, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .line 287
    new-array v3, v3, [Ljava/lang/String;

    .line 293
    aput-object p2, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 300
    aget-object v9, v0, v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 307
    invoke-static/range {v6 .. v11}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    :goto_2
    if-ge v1, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    .line 314
    aget-object v9, v0, v1

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lcom/amazon/system/security/Security;->getPid(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[B[[B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 321
    sget-object v0, Lcom/amazon/system/security/Security;->CUSTOM_PID_FOR_BUNDLED_DICTIONARY_DRM:Ljava/lang/String;

    aput-object v0, v3, v5

    return-object v3
.end method


# virtual methods
.method public abstract getAccountSecrets()[Ljava/lang/String;
.end method

.method public abstract getBase64()Lcom/amazon/system/security/IBase64;
.end method

.method public abstract getDeviceSerialNumber()Ljava/lang/String;
.end method

.method public abstract getPID()Ljava/lang/String;
.end method

.method public abstract getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;
.end method
