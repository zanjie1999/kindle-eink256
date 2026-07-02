.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$3;
.super Ljava/lang/Object;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onCurlStarted(ILcom/amazon/kindle/pagecurl/CurlStartPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$3;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$3;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v0, v0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToNextPage(Z)V

    return-void
.end method
