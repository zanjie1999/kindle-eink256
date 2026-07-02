.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;
.super Ljava/lang/Object;
.source "MapAccessTokenProvider.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;

.field final synthetic val$singleEmitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->this$1:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/GetAccessTokenError;

    invoke-direct {v1, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/GetAccessTokenError;-><init>(I)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "value_key"

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;->val$singleEmitter:Lio/reactivex/SingleEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
