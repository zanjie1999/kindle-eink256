.class public Lcom/mobipocket/android/library/reader/AndroidSecurity;
.super Lcom/amazon/system/security/Security;
.source "AndroidSecurity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountSecretProvider:Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/mobipocket/android/library/reader/AndroidSecurity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/system/security/Security;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->accountSecretProvider:Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;

    return-void
.end method


# virtual methods
.method public getAccountSecrets()[Ljava/lang/String;
    .locals 4

    const-string v0, "AndroidSecurity.getAccountSecrets()"

    const/4 v1, 0x1

    .line 50
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 52
    iget-object v1, p0, Lcom/mobipocket/android/library/reader/AndroidSecurity;->accountSecretProvider:Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;->getAccountSecrets()Ljava/util/Vector;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public getBase64()Lcom/amazon/system/security/IBase64;
    .locals 1

    .line 66
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidBase64Encoding;

    invoke-direct {v0}, Lcom/mobipocket/android/library/reader/AndroidBase64Encoding;-><init>()V

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 3

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "SHA-256"

    .line 101
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0x1f

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/mobipocket/android/library/reader/AndroidSecurity;->TAG:Ljava/lang/String;

    const-string v2, "SHA-256 algorithm does not exist.  PANICK!"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to generate PID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get PID: unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;
    .locals 3

    .line 142
    :try_start_0
    new-instance v0, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;

    invoke-direct {v0}, Lcom/mobipocket/android/library/reader/AndroidSHA1MessageDigest;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/mobipocket/android/library/reader/AndroidSecurity;->TAG:Ljava/lang/String;

    const-string v2, "SHA1 algorithm does not exist.  PANICK!"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
