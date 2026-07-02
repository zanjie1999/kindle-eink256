.class Lcom/amazon/kindle/krx/reader/BookNavigator$5;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->navigateToPercent(DZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$clearSelection:Z

.field final synthetic val$makeWaypoint:Z

.field final synthetic val$percent:D


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;ZDZ)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-boolean p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$makeWaypoint:Z

    iput-wide p3, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$percent:D

    iput-boolean p5, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$clearSelection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-boolean v2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$makeWaypoint:Z

    if-nez v2, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 285
    :cond_0
    iget-wide v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$percent:D

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPercent(D)V

    .line 286
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->val$clearSelection:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$5;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    :cond_1
    return-void
.end method
