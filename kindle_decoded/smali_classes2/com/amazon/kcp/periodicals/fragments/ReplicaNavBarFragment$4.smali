.class Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$4;
.super Ljava/lang/Object;
.source "ReplicaNavBarFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$4;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment$4;->this$0:Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;->access$400(Lcom/amazon/kcp/periodicals/fragments/ReplicaNavBarFragment;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    const/4 p1, 0x0

    return p1
.end method
