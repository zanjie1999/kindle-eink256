.class Lcom/amazon/notebook/module/NotebookActivity$2;
.super Ljava/lang/Object;
.source "NotebookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookActivity;->onAnnotationsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookActivity;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$2;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$2;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->access$200(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    invoke-static {}, Lcom/amazon/notebook/module/NotebookActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No doc viewer found"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$2;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->access$200(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 545
    instance-of v1, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v1, :cond_1

    .line 549
    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getTOC(Z)Lcom/amazon/android/docviewer/IKindleTOC;

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity$2;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    new-instance v1, Lcom/amazon/notebook/module/NotebookActivity$2$1;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookActivity$2$1;-><init>(Lcom/amazon/notebook/module/NotebookActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
