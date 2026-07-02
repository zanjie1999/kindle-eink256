.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;
.super Ljava/lang/Object;
.source "WifiLocker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLocker"


# instance fields
.field private mCredLockClient:Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->getOAuthToken()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;

    invoke-direct {v0, p2, p1}, Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;->mCredLockClient:Lcom/amazon/whisperjoin/credentiallocker/CredentialLockerClient;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    sget-object p2, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;->TAG:Ljava/lang/String;

    const-string v0, "Name not found exception occured while instantiating Cred Locker Client"

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
