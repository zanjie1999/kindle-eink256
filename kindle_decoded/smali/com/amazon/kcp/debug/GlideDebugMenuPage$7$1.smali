.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;

.field final synthetic val$offerToAcquire:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->val$offerToAcquire:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 2

    .line 270
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
