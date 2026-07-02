.class Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;
.super Ljava/lang/Object;
.source "KRIFPageLabelProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->preloadPageLabels(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;->this$0:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

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

    .line 237
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;->call()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;->this$0:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;->this$0:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->getTotalPages()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider$1;->this$0:Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;

    invoke-static {v2}, Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;->access$000(Lcom/amazon/kindle/rendering/KRIFPageLabelProvider;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/PageInfoProvider;

    .line 245
    invoke-interface {v2, v1}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v2}, Lcom/amazon/krf/platform/PageInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
