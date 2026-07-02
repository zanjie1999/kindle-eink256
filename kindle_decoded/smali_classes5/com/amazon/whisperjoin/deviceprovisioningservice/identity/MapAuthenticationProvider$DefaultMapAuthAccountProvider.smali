.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;
.super Ljava/lang/Object;
.source "MapAuthenticationProvider.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMapAuthAccountProvider"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private mAuthenticationFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 47
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->mAuthenticationFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-object p0
.end method


# virtual methods
.method public generatePreAuthLinkCode()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthToken()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->mAuthenticationFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    return-object v0
.end method
