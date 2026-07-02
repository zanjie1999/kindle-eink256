.class Lcom/amazon/kcp/store/AbstractWebStoreController$2;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/AbstractWebStoreController;->updateStoreCookies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$request:Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;)V
    .locals 0

    .line 103
    iput-object p2, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->val$request:Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    invoke-static {}, Lcom/amazon/kcp/store/AbstractWebStoreController;->access$100()Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->val$request:Lcom/amazon/kcp/internal/webservices/GetStoreCredentialsRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
