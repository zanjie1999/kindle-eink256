.class Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;
.super Ljava/lang/Object;
.source "KeyProvider23.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;
    .locals 4

    .line 39
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p3, "AndroidKeyStore"

    .line 41
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p3

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p3, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 46
    invoke-virtual {p3, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p3, "AES"

    const-string v0, "AndroidKeyStore"

    .line 47
    invoke-static {p3, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p3

    .line 50
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p2, "GCM"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {v0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string v0, "NoPadding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const/16 v0, 0x100

    .line 55
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    .line 50
    invoke-virtual {p3, p2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    .line 60
    :cond_0
    :try_start_2
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidKeyStore contains keyAlias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p3, p2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 64
    sget-object p3, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider23;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "Error in accessing the Android KeyStore."

    invoke-interface {p3, v0, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 65
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 67
    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method
