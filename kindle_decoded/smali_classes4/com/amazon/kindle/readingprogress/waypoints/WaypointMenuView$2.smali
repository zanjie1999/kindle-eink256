.class Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;
.super Ljava/lang/Object;
.source "WaypointMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->buildWaypointList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

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

    .line 108
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    .line 111
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-static {p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$000(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid waypoint position "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Not navigating."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-static {p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$100(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 124
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p3

    .line 125
    invoke-interface {p3, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageStartPositionForPageIndex(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 127
    :cond_2
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    .line 128
    iget-object p3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-static {p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$200(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p3

    if-nez p3, :cond_3

    .line 129
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p3

    .line 130
    iget-object p4, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    const-class p5, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-interface {p3, p5}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$202(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/kindle/krx/events/IMessageQueue;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 132
    :cond_3
    iget-object p3, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;->this$0:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-static {p3}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->access$200(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p3

    new-instance p4, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;

    invoke-direct {p4, p2, p1}, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;I)V

    invoke-interface {p3, p4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
