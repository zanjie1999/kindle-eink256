.class public final Lcom/amazon/identity/auth/device/ii;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ii$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final qV:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    const-string v1, "-----END RSA PRIVATE KEY-----"

    const-string v2, "-----BEGIN EC PRIVATE KEY-----"

    const-string v3, "-----END EC PRIVATE KEY-----"

    const-string v4, "-----BEGIN PRIVATE KEY-----"

    const-string v5, "-----END PRIVATE KEY-----"

    .line 34
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ii;->qV:[Ljava/lang/String;

    .line 43
    const-class v0, Lcom/amazon/identity/auth/device/ii;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ii$a;)Ljava/security/KeyFactory;
    .locals 9

    const-string v0, "getKeyFactory: Could not get private key because there was no RSA algorithm"

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, " algorithm"

    const-string v4, "getKeyFactory: Could not get private key because there was no "

    const-string v5, "MAPKeyFactoryGenerationError:DefaultProviderNotSupportAlgorithm:Algorithm:"

    const/4 v6, 0x0

    const-string v7, ":SystemVersion:"

    if-lt v1, v2, :cond_0

    .line 79
    sget-object v0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyFactory at Android version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/ii$a;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    const-string v1, "BC"

    .line 102
    invoke-virtual {p1, p0, v1}, Lcom/amazon/identity/auth/device/ii$a;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v1

    .line 125
    sget-object v2, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v3, "The device doesn\'t contain BouncyCastle Provider, try using the default."

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAPKeyFactoryGenerationError:MissingBouncyCastle:Algorithm:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/ii$a;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    .line 135
    sget-object v1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 106
    sget-object v2, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MAPKeyFactoryGenerationError:BouncyCastleMissing:Algorithm:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/ii$a;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4

    return-object p0

    :catch_4
    move-exception p1

    .line 118
    sget-object v1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string p1, "The algorithm cannot be null"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static di(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/identity/auth/device/ii$a;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ii$a;-><init>()V

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/ii;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ii$a;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public static dj(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/ii;->qV:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, ""

    .line 157
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "RSA"

    .line 258
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ii;->di(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    sget-object p0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v0, "Failed to create keyFactory for the input key"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 266
    :cond_1
    sget-object v1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key Factory created using the algorithm as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ii;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 270
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 274
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 281
    sget-object v2, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :try_start_1
    const-string v2, "EC"

    .line 285
    invoke-static {v2}, Lcom/amazon/identity/auth/device/ii;->di(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v1

    .line 290
    sget-object v2, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create private key using the original algo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v2, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    sget-object v0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create private key when retried using algo: EC"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    throw p0
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SSO Currently does not have credentials"

    .line 1215
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aZ(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 177
    sget-object p1, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object p1

    .line 178
    sget-object v0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v1, "Central DMS token or DMS private key get corrupted, MAP is going to deregister device to clean the state"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DMSCredentialCorrupted:DeviceType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":SYSTEM_VERSION:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    sget-object p1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v0, "ExecutionException! Error deregister the device when DMS private-key/DMS token got corrupted or missing."

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 198
    sget-object p1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string v0, "InterruptedException! Error deregister the device when DMS private-key/DMS token got corrupted or missing. "

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 190
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 191
    sget-object p1, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error deregister the device when DMS private-key/DMS token got corrupted or missing. Error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 193
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Error message is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.amazon.dcp.sso.ErrorMessage"

    .line 194
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/ii;->TAG:Ljava/lang/String;

    const-string p1, "Successfully deregister the device when DMS private-key/DMS token got corrupted or missing."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
