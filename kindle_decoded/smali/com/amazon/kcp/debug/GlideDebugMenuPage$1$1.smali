.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$orderID:Ljava/lang/String;

.field final synthetic val$orderItemIDL:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$orderID:Ljava/lang/String;

    iput-wide p4, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$orderItemIDL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$2;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
