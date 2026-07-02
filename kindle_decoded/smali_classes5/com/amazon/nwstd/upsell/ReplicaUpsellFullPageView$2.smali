.class Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;
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


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;->this$0:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;->this$0:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->access$000(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView$2;->this$0:Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;

    invoke-static {v0}, Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;->access$000(Lcom/amazon/nwstd/upsell/ReplicaUpsellFullPageView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/INewPageReachedListener;->onNewPageReached()V

    :cond_0
    return-void
.end method
