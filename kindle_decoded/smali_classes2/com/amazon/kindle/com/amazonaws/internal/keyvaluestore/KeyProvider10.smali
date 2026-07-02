.class Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;
.super Ljava/lang/Object;
.source "KeyProvider10.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public getKey(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)Ljava/security/Key;
    .locals 2

    .line 40
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->LOCK:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string p3, "AesGcmNoPaddingEncryption10-encryption-key"

    .line 43
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "AesGcmNoPaddingEncryption10-encryption-key"

    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "AES"

    invoke-direct {p3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p3

    :cond_0
    :try_start_2
    const-string p3, "AES"

    .line 49
    invoke-static {p3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p3

    const/16 v0, 0x100

    .line 50
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p3, v0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 51
    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "AesGcmNoPaddingEncryption10-encryption-key"

    .line 56
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    monitor-exit p2

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    sget-object p3, Lcom/amazon/kindle/com/amazonaws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v0, "Error in loading the key from keystore."

    invoke-interface {p3, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 62
    new-instance p3, Ljava/lang/IllegalStateException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 64
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
