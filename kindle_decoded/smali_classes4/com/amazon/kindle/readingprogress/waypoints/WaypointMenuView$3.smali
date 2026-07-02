.class Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;
.super Ljava/lang/Object;
.source "WaypointMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->onColorModeChangeEvent(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

.field final synthetic val$kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    iput-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;->val$kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;->val$kindleDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$300(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    return-void
.end method
