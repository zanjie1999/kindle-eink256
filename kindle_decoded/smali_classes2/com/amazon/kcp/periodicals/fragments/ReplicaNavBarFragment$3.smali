.class Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$3;
.super Ljava/lang/Object;
.source "ReplicaNavBarFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->init(Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;Lcom/amazon/android/docviewer/IPeriodicalNavigator;Lcom/amazon/nwstd/model/replica/BitmapProvider;)V
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

    .line 159
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$3;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->getClickedThumbnailIndex(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 165
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$3;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {p2, p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$300(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;I)V

    :cond_0
    return-void
.end method
