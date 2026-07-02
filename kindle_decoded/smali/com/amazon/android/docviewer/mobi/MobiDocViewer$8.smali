.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->sendPositionChangedEvent(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

.field final synthetic val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 0

    .line 2269
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;->val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2272
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$1100(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$8;->val$event:Lcom/amazon/kindle/event/KindleDocNavigationEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
