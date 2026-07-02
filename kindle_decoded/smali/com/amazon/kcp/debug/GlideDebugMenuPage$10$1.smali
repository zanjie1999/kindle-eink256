.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

.field final synthetic val$response:Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    invoke-static {v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$1;->val$response:Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
