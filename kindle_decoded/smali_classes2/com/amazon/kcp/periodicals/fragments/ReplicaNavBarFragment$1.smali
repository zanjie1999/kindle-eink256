.class Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;
.super Ljava/lang/Object;
.source "ReplicaNavBarFragment.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$000(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/widget/ThumbnailSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->stopScroll()V

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$1;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$000(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/widget/ThumbnailSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/widget/ThumbnailSlider;->showSelectedPage()V

    .line 77
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_THUMBNAIL_SLIDER:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method
