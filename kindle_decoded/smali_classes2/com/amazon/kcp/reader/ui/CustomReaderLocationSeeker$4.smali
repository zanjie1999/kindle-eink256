.class Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;->val$event:Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;->val$event:Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1353
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMRPRPosition()I

    move-result v0

    .line 1354
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$4;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    :cond_1
    return-void
.end method
