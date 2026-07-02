.class Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;
.super Ljava/lang/Object;
.source "PdfDoc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->call()Lcom/amazon/android/docviewer/IKindleTOC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/pdf/PdfDoc$1;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc$1;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDoc$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDoc$1;

    iget-object v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;

    .line 169
    new-instance v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$1$1;->this$1:Lcom/amazon/android/docviewer/pdf/PdfDoc$1;

    iget-object v1, v1, Lcom/amazon/android/docviewer/pdf/PdfDoc$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->access$000(Lcom/amazon/android/docviewer/pdf/PdfDoc;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 170
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    const-class v2, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
