.class Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;)V
    .locals 0

    .line 2075
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2077
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshDocViewAsync()V

    .line 2078
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5$1;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/sidecar/pagenumbers/PageNumbersLoadedEvent;

    invoke-direct {v1}, Lcom/amazon/kcp/sidecar/pagenumbers/PageNumbersLoadedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
