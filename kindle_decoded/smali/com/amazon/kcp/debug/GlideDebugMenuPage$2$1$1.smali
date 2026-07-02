.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;->onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;

.field final synthetic val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Return Successful"

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1$1;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;

    iget-object v1, v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;

    iget-object v1, v1, Lcom/amazon/kcp/debug/GlideDebugMenuPage$2;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v1}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
