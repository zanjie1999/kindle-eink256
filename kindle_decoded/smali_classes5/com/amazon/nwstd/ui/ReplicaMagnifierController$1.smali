.class Lcom/amazon/nwstd/ui/ReplicaMagnifierController$1;
.super Ljava/lang/Object;
.source "ReplicaMagnifierController.java"

# interfaces
.implements Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->magnifyRegion(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/ui/ReplicaMagnifierController;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController$1;->this$0:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(ILcom/amazon/nwstd/model/replica/BitmapProvider$BitmapInfo;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaMagnifierController$1;->this$0:Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    iget-object p1, p1, Lcom/amazon/nwstd/ui/ReplicaMagnifierController;->mReplicaMagnifyingView:Lcom/amazon/kcp/periodicals/ui/PeriodicalMagnifyingView;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    :cond_0
    return-void
.end method
