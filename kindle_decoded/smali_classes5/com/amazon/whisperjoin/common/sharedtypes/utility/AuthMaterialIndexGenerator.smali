.class public Lcom/amazon/whisperjoin/common/sharedtypes/utility/AuthMaterialIndexGenerator;
.super Ljava/lang/Object;
.source "AuthMaterialIndexGenerator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthMaterialIndexGenerator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static generate([B)[B
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "SHA-256"

    .line 28
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 30
    array-length v0, p0

    add-int/lit8 v0, v0, -0x9

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/ArrayUtils;->subarray([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/utility/AuthMaterialIndexGenerator;->TAG:Ljava/lang/String;

    const-string v1, "SHA256 algo not found"

    invoke-static {v0, v1, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "derPubKeyByteArray can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
