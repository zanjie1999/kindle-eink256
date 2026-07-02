.class Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;
.super Ljava/lang/Object;
.source "ReplicaNavBarFragment.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


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

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$100(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$000(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/widget/ThumbnailSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$100(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/widget/ThumbnailSlider;->setNewSelected(II)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$200(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->setOrientation(I)V

    return-void
.end method
