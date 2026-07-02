.class public Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
.super Ljava/lang/Object;
.source "AWSKeyValueStore.java"


# static fields
.field private static final ANDROID_API_LEVEL_10:I = 0xa

.field private static final ANDROID_API_LEVEL_18:I = 0x12

.field private static final ANDROID_API_LEVEL_23:I = 0x17

.field private static final AWS_KEY_VALUE_STORE_VERSION:I = 0x1

.field private static final LOCK:Ljava/lang/Object;

.field static cacheFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private apiLevel:I

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private encryptionKey:Ljava/security/Key;

.field isPersistenceEnabled:Z

.field private keyAlias:Ljava/lang/String;

.field private keyProvider:Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;

.field private secureRandom:Ljava/security/SecureRandom;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field sharedPreferencesForEncryptionKey:Landroid/content/SharedPreferences;

.field final sharedPreferencesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->secureRandom:Ljava/security/SecureRandom;

    .line 104
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->getCacheForKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    .line 105
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    .line 106
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    .line 107
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->setPersistenceEnabled(Z)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private decrypt(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 355
    :try_start_0
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    const-string v0, "AES/GCM/NoPadding"

    .line 356
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 357
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encryptionKey:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 360
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 361
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 363
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "Error in decrypting data. "

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private encrypt(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 341
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 342
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encryptionKey:Ljava/security/Key;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p1, "UTF-8"

    .line 345
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 348
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "Error in encrypting data. "

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private generateInitializationVector()[B
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 382
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static getCacheForKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getInitializationVector(Ljava/lang/String;)[B
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".iv"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method private onMigrateFromNoEncryption()V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".encrypted"

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".iv"

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".keyvaluestoreversion"

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 307
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 308
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 309
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 310
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 311
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 313
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 316
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 317
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 318
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 319
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 320
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_8

    .line 321
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 324
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ","

    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 330
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 283
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 286
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 172
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v1, :cond_3

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".encrypted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 189
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 195
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".keyvaluestoreversion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 199
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The version of the data read from SharedPreferences for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match the version of the store."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 205
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-direct {p0, v1}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->getInitializationVector(Ljava/lang/String;)[B

    move-result-object v1

    .line 207
    iget v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->decrypt(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    .line 215
    :try_start_6
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Error in decrypting data. "

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 216
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    .line 219
    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 221
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 225
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    .line 237
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v1, "Value is null. Removing the data, IV and version from SharedPreferences"

    invoke-interface {p2, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V

    .line 239
    monitor-exit v0

    return-void

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->generateInitializationVector()[B

    move-result-object v1

    .line 246
    iget v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encrypt(Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 253
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 254
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 255
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".keyvaluestoreversion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 257
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 258
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 260
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v1, "Error in encrypting data. "

    invoke-interface {p2, v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 263
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    .line 267
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 274
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".iv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".keyvaluestoreversion"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 277
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPersistenceEnabled(Z)V
    .locals 6

    .line 113
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    .line 115
    iput-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".encryptionkey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionKey:Landroid/content/SharedPreferences;

    .line 124
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected Android API Level = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 126
    iget v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".aesKeyStoreAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    .line 129
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using keyAlias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 130
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 131
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionKey:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;->getKey(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encryptionKey:Ljava/security/Key;

    goto/16 :goto_0

    .line 133
    :cond_0
    iget v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rsaKeyStoreAlias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    .line 136
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using keyAlias = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 137
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider18;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider18;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 138
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionKey:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyAlias:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;->getKey(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encryptionKey:Ljava/security/Key;

    goto :goto_0

    .line 140
    :cond_1
    iget v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 142
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;

    invoke-direct {v2}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;

    .line 143
    iget-object v3, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionKey:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;->getKey(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->encryptionKey:Ljava/security/Key;

    goto :goto_0

    .line 146
    :cond_2
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Level "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not supported by the SDK. Setting persistence to false."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 150
    iput-boolean v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    .line 153
    :goto_0
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating the AWSKeyValueStore with key for sharedPreferences = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->onMigrateFromNoEncryption()V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 158
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v3, "Persistence is disabled. Data will be accessed from memory."

    invoke-interface {v2, v3}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    .line 164
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
