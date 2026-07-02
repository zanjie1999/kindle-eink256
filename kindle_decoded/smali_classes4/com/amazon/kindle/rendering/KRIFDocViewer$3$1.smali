.class Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->call()Lcom/amazon/android/docviewer/IKindleTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer$3;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;->this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;->this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$500(Lcom/amazon/kindle/rendering/KRIFDocViewer;Z)Lcom/amazon/android/docviewer/IKindleTOC;

    .line 1199
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;->this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    new-instance v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;->this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1201
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;->this$1:Lcom/amazon/kindle/rendering/KRIFDocViewer$3;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$600(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
