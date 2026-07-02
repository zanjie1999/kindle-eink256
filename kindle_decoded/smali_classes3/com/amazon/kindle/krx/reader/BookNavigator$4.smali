.class Lcom/amazon/kindle/krx/reader/BookNavigator$4;
.super Ljava/lang/Object;
.source "BookNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/BookNavigator;->navigateDocument(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

.field final synthetic val$createWaypoint:Z

.field final synthetic val$position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/BookNavigator;ZLcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    iput-boolean p2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->val$createWaypoint:Z

    iput-object p3, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$100(Lcom/amazon/kindle/krx/reader/BookNavigator;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    iget-boolean v2, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->val$createWaypoint:Z

    if-nez v2, :cond_0

    .line 261
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->suppressNextWaypoint()V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->val$position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BookNavigator$4;->this$0:Lcom/amazon/kindle/krx/reader/BookNavigator;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BookNavigator;->access$200(Lcom/amazon/kindle/krx/reader/BookNavigator;)V

    :cond_1
    return-void
.end method
