.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage;->callGetOffersForAsin(Ljava/util/List;Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 2

    .line 382
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->val$asin:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    .line 391
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
