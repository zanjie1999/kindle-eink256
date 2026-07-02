.class public Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;,
        Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final pb:J

.field private static final ph:J


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xb4

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->b(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->ph:J

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->c(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->pb:J

    .line 65
    const-class v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_system"

    .line 127
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->F:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "%s%s%s"

    .line 300
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "keyMetadata"

    const-string v4, "com.amazon.mobile.auth.encryption_key.identifier"

    const-string/jumbo v5, "mobile_auth_storage"

    const-string v6, "."

    .line 213
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x1a

    if-lt v7, v10, :cond_3

    .line 218
    :try_start_0
    new-instance v7, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;

    const-string v10, "_"

    invoke-direct {v1, v5, v0, v10}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v10, v1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v10, v5}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object v5

    .line 220
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;->fm()Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 221
    invoke-direct {v1, v4, v0, v6}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "com.amazon.mobile.auth.encryption_key.creation_time"

    if-eqz v10, :cond_2

    .line 223
    :try_start_1
    invoke-static {v11}, Lcom/amazon/identity/auth/device/jd;->dC(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "%s.%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v9

    aput-object v0, v13, v8

    .line 1293
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/amazon/identity/auth/device/gm;->cu(Ljava/lang/String;)J

    move-result-wide v13

    .line 1295
    sget-wide v15, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->ph:J

    add-long/2addr v13, v15

    sget-wide v15, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->pb:J

    add-long/2addr v13, v15

    iget-object v10, v1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v10}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 1307
    :cond_2
    :goto_1
    new-instance v10, Lcom/amazon/identity/auth/device/fo;

    iget-object v13, v1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    move-object/from16 v14, p2

    invoke-direct {v10, v13, v0, v14, v11}, Lcom/amazon/identity/auth/device/fo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v10, v2}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v10

    .line 1312
    iget-object v10, v10, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    .line 1313
    new-instance v11, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;

    const-string v13, "encryptionKey"

    .line 1314
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v13, "keyIdentifier"

    .line 1315
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1316
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v8, "keyVersion"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1317
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "creationTime"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v13, v11

    invoke-direct/range {v13 .. v19}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 2107
    iget-object v3, v11, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pi:Ljava/lang/String;

    .line 1331
    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 1332
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    array-length v10, v3

    const-string v13, "AES"

    invoke-direct {v8, v3, v9, v10, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 1333
    invoke-virtual {v7, v8}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;->a(Ljavax/crypto/SecretKey;)V

    .line 1336
    invoke-direct {v1, v4, v0, v6}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3107
    iget-object v4, v11, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->mQ:Ljava/lang/String;

    .line 1336
    invoke-virtual {v5, v3, v4}, Lcom/amazon/identity/auth/device/gm;->O(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "com.amazon.mobile.auth.encryption_key.version"

    .line 1337
    invoke-direct {v1, v3, v0, v6}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4107
    iget-wide v7, v11, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pj:J

    .line 1337
    invoke-virtual {v5, v3, v7, v8}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    .line 1338
    invoke-direct {v1, v12, v0, v6}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5107
    iget-wide v3, v11, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$a;->pk:J

    .line 1338
    invoke-virtual {v5, v0, v3, v4}, Lcom/amazon/identity/auth/device/gm;->a(Ljava/lang/String;J)Z

    const-string v0, "MOBILE_AUTH_UPSERT_ENCRYPTION_KEY"

    .line 228
    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, 0x1

    :goto_2
    return v8

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "Exception encountered while creating or updating encryption key. %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    sget-object v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "MOBILE_AUTH_UPSERT_ENCRYPTION_KEY:Exception"

    .line 252
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 253
    new-instance v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v3, v4, v2, v0}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "JSONException encountered while parsing MobileAuthEncryptionKey response. %s"

    .line 242
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "MOBILE_AUTH_UPSERT_ENCRYPTION_KEY:JSONException"

    .line 245
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    new-instance v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v3, v4, v2, v0}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "KeystoreProviderException encountered while creating or updating encryption key. %s"

    .line 234
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    sget-object v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "MOBILE_AUTH_UPSERT_ENCRYPTION_KEY:KeystoreProviderException"

    .line 237
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 238
    new-instance v3, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v3, v4, v2, v0}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "Currently UpsertMobileAuthEncryptionKey operation is not supported in %d version of Android."

    .line 258
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    sget-object v2, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MOBILE_AUTH_UPSERT_ENCRYPTION_KEY:UnsupportedOperation"

    .line 261
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 262
    new-instance v2, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v2, v3, v0}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw v2
.end method

.method public e(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;
        }
    .end annotation

    const-string v0, "Null/Invalid encryption key or key identifier received."

    const-string v1, "Account already deregistered. So, no encryption key or key identifier received."

    const-string v2, "MAP data storage is null/invalid."

    const-string/jumbo v3, "mobile_auth_storage"

    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1a

    if-lt v4, v7, :cond_4

    .line 153
    :try_start_0
    new-instance v4, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;

    const-string v7, "_"

    invoke-direct {p0, v3, p1, v7}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v7, v3}, Lcom/amazon/identity/auth/device/gm;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;

    move-result-object v3

    .line 155
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider;->fm()Ljavax/crypto/SecretKey;

    move-result-object v4

    const-string v7, "com.amazon.mobile.auth.encryption_key.identifier"

    const-string v8, "."

    .line 156
    invoke-direct {p0, v7, p1, v8}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/amazon/identity/auth/device/gm;->cr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_1

    .line 158
    invoke-static {v3}, Lcom/amazon/identity/auth/device/jd;->dC(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MOBILE_AUTH_GET_ENCRYPTION_KEY"

    .line 162
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 164
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "value_key"

    .line 165
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "com.amazon.identity.auth.device.api.TokenKeys.Options.MobileAuthEncryptionKeyId"

    .line 166
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 1268
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1275
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/gc;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1278
    sget-object p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MOBILE_AUTH_GET_ENCRYPTION_KEY:KeyNotFoundException"

    new-array p2, v6, [Ljava/lang/String;

    .line 1279
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1280
    new-instance p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-direct {p1, p2, v0}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p1

    .line 1285
    :cond_2
    sget-object p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MOBILE_AUTH_GET_ENCRYPTION_KEY:AccountDeregistered"

    new-array p2, v6, [Ljava/lang/String;

    .line 1286
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1287
    new-instance p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-direct {p1, p2, v1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_3
    sget-object p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MOBILE_AUTH_GET_ENCRYPTION_KEY:InvalidMAPDataStorage"

    new-array p2, v6, [Ljava/lang/String;

    .line 1272
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1273
    new-instance p1, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {p1, p2, v2}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-array p2, v5, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    const-string v0, "Exception encountered while fetching encryption key. %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 184
    sget-object v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "MOBILE_AUTH_GET_ENCRYPTION_KEY:Exception"

    .line 185
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-array p2, v5, [Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/storage/KeystoreProvider$KeystoreProviderException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    const-string v0, "KeystoreProviderException encountered while fetching encryption key. %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 177
    sget-object v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "MOBILE_AUTH_GET_ENCRYPTION_KEY:KeystoreProviderException"

    .line 178
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 172
    throw p1

    :cond_4
    new-array p1, v5, [Ljava/lang/Object;

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "Currently GetMobileAuthEncryptionKey operation is not supported in %d version of Android."

    .line 191
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 193
    sget-object p2, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/String;

    const-string v0, "MOBILE_AUTH_GET_ENCRYPTION_KEY:UnsupportedOperation"

    .line 194
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 195
    new-instance p2, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {p2, v0, p1}, Lcom/amazon/identity/auth/device/token/MobileAuthEncryptionKeyManager$MobileAuthEncryptionKeyManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw p2
.end method
