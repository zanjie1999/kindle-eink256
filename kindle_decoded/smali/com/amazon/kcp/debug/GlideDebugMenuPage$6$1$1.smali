.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;->onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;

.field final synthetic val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1$1;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1$1;->this$2:Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$6$1$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
