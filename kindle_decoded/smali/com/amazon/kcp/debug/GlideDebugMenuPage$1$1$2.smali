.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$2;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$2;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1$2;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;

    iget-object v1, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;

    iget-object v2, v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v3, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$asin:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$orderID:Ljava/lang/String;

    iget-wide v5, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1$1;->val$orderItemIDL:J

    iget-object v7, v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$100(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/lang/String;Ljava/lang/String;JLandroid/view/ViewGroup;)V

    return-void
.end method
