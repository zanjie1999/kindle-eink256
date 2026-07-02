.class Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;
.super Ljava/lang/Object;
.source "KRIFBookItem.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KRIFMetadataModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/rendering/KRIFBookItem$1;)V
    .locals 0

    .line 1452
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;)V

    return-void
.end method

.method private getStringValueFromMetadata(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$200(Lcom/amazon/kindle/rendering/KRIFBookItem;)Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 1477
    :try_start_0
    iget-boolean v2, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->isSelfOwn:Z

    if-eqz v2, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->logDebugTrace()V

    .line 1487
    :cond_0
    iget-object v2, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v2}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 1488
    :cond_2
    :try_start_1
    invoke-interface {p1, v2}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter;->get(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {p1, v2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$300(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/Disposable;)V

    .line 1491
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {p1, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$400(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return-object v1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 1490
    :goto_2
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {v2, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$300(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/Disposable;)V

    .line 1491
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->this$0:Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {v1, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$400(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 1492
    throw p1
.end method

.method private logDebugTrace()V
    .locals 1

    .line 1514
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1516
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFBookItem;->access$500()Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getStringValueFromMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1455
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel$1;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;->getStringValueFromMetadata(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
