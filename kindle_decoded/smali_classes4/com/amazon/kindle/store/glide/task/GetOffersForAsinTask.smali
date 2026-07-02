.class public final Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;
.super Ljava/lang/Object;
.source "GetOffersForAsinTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final asins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

.field private final clientId:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->asins:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->clientId:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->refTag:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 77
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->asins:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->refTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/store/glide/task/GetOffersForAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/store/glide/request/GetOffersForAsinRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 79
    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
