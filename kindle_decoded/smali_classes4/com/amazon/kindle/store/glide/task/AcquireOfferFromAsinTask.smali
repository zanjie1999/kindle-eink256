.class public Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;
.super Ljava/lang/Object;
.source "AcquireOfferFromAsinTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

.field private final clientId:Ljava/lang/String;

.field private final csrfToken:Ljava/lang/String;

.field private final offerId:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->clientId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->refTag:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->csrfToken:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->offerId:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    new-instance v7, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->refTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->offerId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->csrfToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/kindle/store/glide/task/AcquireOfferFromAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/store/glide/request/AcquireOfferFromAsinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 70
    invoke-interface {v0, v7}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
