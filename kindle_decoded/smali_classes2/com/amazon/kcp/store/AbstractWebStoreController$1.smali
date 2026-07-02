.class Lcom/amazon/kcp/store/AbstractWebStoreController$1;
.super Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;
.source "AbstractWebStoreController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/AbstractWebStoreController;->updateStoreCookies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/store/IWebStoreController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    invoke-direct {p0, p2}, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;-><init>(Lcom/amazon/kcp/store/IWebStoreController;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 3

    .line 92
    invoke-super {p0}, Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;->onRequestComplete()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    invoke-static {v1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->access$000(Lcom/amazon/kcp/store/AbstractWebStoreController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    sget-object v2, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/store/AbstractWebStoreController;->publishCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;)V

    :cond_0
    return v0
.end method
