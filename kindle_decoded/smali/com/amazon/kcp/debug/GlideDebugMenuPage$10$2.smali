.class Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;
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

.field final synthetic val$asinOffers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;Ljava/util/List;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

    iput-object p2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;->val$asinOffers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;->this$1:Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;

    iget-object v1, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->this$0:Lcom/amazon/kcp/debug/GlideDebugMenuPage;

    iget-object v2, p0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10$2;->val$asinOffers:Ljava/util/List;

    iget-object v0, v0, Lcom/amazon/kcp/debug/GlideDebugMenuPage$10;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/debug/GlideDebugMenuPage;->access$1000(Lcom/amazon/kcp/debug/GlideDebugMenuPage;Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method
