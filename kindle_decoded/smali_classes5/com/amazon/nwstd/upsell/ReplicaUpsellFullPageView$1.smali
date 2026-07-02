.class Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;
.super Ljava/lang/Object;
.source "ReplicaUpsellFullPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/upsell/UpsellController;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

.field final synthetic val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;Lcom/amazon/nwstd/upsell/UpsellController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;->this$0:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    iput-object p2, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;->val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$1;->val$upsellController:Lcom/amazon/nwstd/upsell/UpsellController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/upsell/UpsellController;->increaseUpsellFullPageViewRetainCount()V

    return-void
.end method
