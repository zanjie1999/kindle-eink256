.class Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;
.super Ljava/lang/Object;
.source "MapAuthenticationProvider.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->generatePreAuthLinkCode()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting Auth Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;Lio/reactivex/SingleEmitter;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->generatePreAuthorizedLinkCode(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method
