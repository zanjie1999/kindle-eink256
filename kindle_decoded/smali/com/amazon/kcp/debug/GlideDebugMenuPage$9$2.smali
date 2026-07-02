.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;
.super Ljava/lang/Object;
.source "GlideDebugMenuPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;

.field final synthetic val$resource:Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;->val$resource:Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;->val$resource:Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9$2;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;

    iget-object v2, v2, Lcom/amazon/kcp/debug/GlideDebugMenuPage$9;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$1000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method
