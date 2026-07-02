.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$4;
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

    .line 854
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$4;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$4;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    iget-object v0, v0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->viewPager:Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    new-instance v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    return-void
.end method
