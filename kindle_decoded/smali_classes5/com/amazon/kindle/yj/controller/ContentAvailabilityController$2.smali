.class Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;
.super Ljava/lang/Object;
.source "ContentAvailabilityController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->prioritizeAssetDownloads(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

.field final synthetic val$assetIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;Ljava/util/List;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    iput-object p2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->val$assetIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->val$assetIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v3}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$200(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v4}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 256
    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-eq v4, v5, :cond_0

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetState;->DOWNLOADING:Lcom/amazon/kindle/services/download/AssetState;

    if-eq v3, v4, :cond_0

    .line 257
    invoke-static {}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$400()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prioritize asset download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Book - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v4}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v1}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$700(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController$2;->this$0:Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;

    invoke-static {v2}, Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;->access$100(Lcom/amazon/kindle/yj/controller/ContentAvailabilityController;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/services/download/IDownloadService;->reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
