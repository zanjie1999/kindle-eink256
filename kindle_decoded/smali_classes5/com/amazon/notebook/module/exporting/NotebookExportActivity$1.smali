.class Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;
.super Ljava/lang/Object;
.source "NotebookExportActivity.java"

# interfaces
.implements Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 92
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveHTMLFile(Ljava/io/File;Landroid/net/Uri;Lcom/amazon/notebook/module/exporting/NotebookExportStatus;F)V
    .locals 2

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p3}, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->totalExportableCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 102
    invoke-virtual {p3}, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->totalOriginalCount()I

    move-result p3

    const-string/jumbo p4, "originalAnnotationCount"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object p3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    const/4 p4, 0x1

    invoke-virtual {p3, p4, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 105
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 106
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->access$000()Ljava/lang/String;

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    const/4 v1, -0x1

    invoke-virtual {p3, p1, p2, p4}, Lcom/amazon/notebook/module/exporting/NotebookExportStatus;->transferToIntent(Ljava/io/File;Landroid/net/Uri;F)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->access$000()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public receiveOversize()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 125
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public receiveProgressUpdate(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->access$100(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
