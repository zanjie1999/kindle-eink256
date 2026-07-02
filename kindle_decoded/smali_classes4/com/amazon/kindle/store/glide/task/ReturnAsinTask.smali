.class public Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;
.super Ljava/lang/Object;
.source "ReturnAsinTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final asin:Ljava/lang/String;

.field protected final callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

.field protected final clientId:Ljava/lang/String;

.field protected final refTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->asin:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->clientId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->refTag:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    return-void
.end method


# virtual methods
.method protected getReturnRequest()Lcom/amazon/kindle/store/glide/request/GlideWebRequest;
    .locals 5

    .line 58
    new-instance v0, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->refTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->getReturnRequest()Lcom/amazon/kindle/store/glide/request/GlideWebRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
