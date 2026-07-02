.class public final Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
.super Ljava/lang/Object;
.source "AndroidKeysetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

.field private keysetManager:Lcom/google/crypto/tink/KeysetManager;

.field private masterKey:Lcom/google/crypto/tink/Aead;

.field private masterKeyUri:Ljava/lang/String;

.field private reader:Lcom/google/crypto/tink/KeysetReader;

.field private useKeystore:Z

.field private writer:Lcom/google/crypto/tink/KeysetWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->reader:Lcom/google/crypto/tink/KeysetReader;

    .line 141
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->writer:Lcom/google/crypto/tink/KeysetWriter;

    .line 142
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->useKeystore:Z

    .line 145
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    .line 146
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyStore:Ljava/security/KeyStore;

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/KeysetWriter;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->writer:Lcom/google/crypto/tink/KeysetWriter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/Aead;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/KeysetManager;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    return-object p0
.end method

.method private read()Lcom/google/crypto/tink/KeysetManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->reader:Lcom/google/crypto/tink/KeysetReader;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/KeysetHandle;->read(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetManager;->withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 324
    :goto_0
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot decrypt keyset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->reader:Lcom/google/crypto/tink/KeysetReader;

    invoke-static {v0}, Lcom/google/crypto/tink/CleartextKeysetHandle;->read(Lcom/google/crypto/tink/KeysetReader;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetManager;->withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0

    return-object v0
.end method

.method private readOrGenerateNewKeyset()Lcom/google/crypto/tink/KeysetManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->read()Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 290
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyset not found, will generate a new one"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    if-eqz v0, :cond_1

    .line 295
    invoke-static {}, Lcom/google/crypto/tink/KeysetManager;->withEmptyKeyset()Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetManager;->add(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeysetManager;

    .line 296
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle;->getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getKeyId()I

    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetManager;->setPrimary(I)Lcom/google/crypto/tink/KeysetManager;

    .line 298
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->writer:Lcom/google/crypto/tink/KeysetWriter;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/KeysetHandle;->write(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->writer:Lcom/google/crypto/tink/KeysetWriter;

    invoke-static {v1, v2}, Lcom/google/crypto/tink/CleartextKeysetHandle;->write(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeysetWriter;)V

    :goto_0
    return-object v0

    .line 305
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot read or generate keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readOrGenerateNewMasterKey()Lcom/google/crypto/tink/Aead;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$500()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Android Keystore requires at least Android M"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;->setKeyStore(Ljava/security/KeyStore;)Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>()V

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "cannot use Android Keystore, it\'ll be disabled"

    if-nez v2, :cond_2

    .line 259
    :try_start_0
    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->generateNewAeadKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 261
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 267
    :cond_2
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    if-nez v2, :cond_3

    .line 279
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 274
    :cond_3
    new-instance v1, Ljava/security/KeyStoreException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "the master key %s exists but is unusable"

    .line 275
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readOrGenerateNewMasterKey()Lcom/google/crypto/tink/Aead;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKey:Lcom/google/crypto/tink/Aead;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readOrGenerateNewKeyset()Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    .line 240
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;-><init>(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    return-object p0
.end method

.method public withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    const-string v0, "android-keystore://"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->useKeystore:Z

    if-eqz v0, :cond_0

    .line 182
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    return-object p0

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot call withMasterKeyUri() after calling doNotUseKeystore()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keysetName",
            "prefFileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 162
    new-instance v0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->reader:Lcom/google/crypto/tink/KeysetReader;

    .line 163
    new-instance v0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->writer:Lcom/google/crypto/tink/KeysetWriter;

    return-object p0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need a keyset name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
