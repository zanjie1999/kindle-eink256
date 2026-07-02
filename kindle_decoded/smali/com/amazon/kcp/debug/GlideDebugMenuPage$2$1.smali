.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;-><init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
