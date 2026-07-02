.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;
.super Ljava/lang/Object;
.source "MapAccessTokenProvider.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->getAccessToken()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    invoke-interface {p1}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/NoCustomerAccountFoundError;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/NoCustomerAccountFoundError;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-static {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-static {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;

    invoke-direct {v4, p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1$1;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;Lio/reactivex/SingleEmitter;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method
