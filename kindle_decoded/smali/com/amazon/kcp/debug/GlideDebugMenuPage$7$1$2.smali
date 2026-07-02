.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;

.field final synthetic val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;

    iget-object v1, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;

    iget-object v2, v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->val$offerToAcquire:Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderItemId()J

    move-result-wide v5

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1$2;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;

    iget-object v7, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$7;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$600(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V

    return-void
.end method
