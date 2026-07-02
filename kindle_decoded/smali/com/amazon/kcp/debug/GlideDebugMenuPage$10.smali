.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->callGetBatchOffersForAsins(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

.field final synthetic val$asins:Ljava/util/List;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->val$asins:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 4

    .line 406
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->val$asins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 421
    :cond_2
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
