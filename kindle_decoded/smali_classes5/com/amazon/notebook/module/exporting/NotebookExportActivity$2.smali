.class Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;
.super Ljava/lang/Object;
.source "NotebookExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->registerActionButtons(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->access$200(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    invoke-static {}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExportCanceled()V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 155
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
