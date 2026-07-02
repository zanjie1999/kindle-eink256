.class Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;
.super Ljava/lang/Object;
.source "MapAuthenticationProvider.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$singleEmitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 60
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "pre_authorized_link_code"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "link_code_expiry"

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 65
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;-><init>(Ljava/lang/String;J)V

    invoke-interface {p1, v3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
