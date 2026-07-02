.class Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;
.super Ljava/lang/Object;
.source "NotebookExportSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->registerButtonActions(Landroidx/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 149
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$000(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    move-result-object p1

    .line 150
    iget-object p2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$100(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    move-result-object p2

    .line 152
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$200(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget v0, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->noteCount:I

    iget v1, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->previouslyExported:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v1, v2

    iget v4, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->currentlyExported:F

    sub-float/2addr v4, v1

    mul-float v4, v4, v2

    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    .line 156
    invoke-static {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$300(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Z

    move-result v1

    .line 157
    invoke-virtual {p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->getMetricsName()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v0, v3, v4, v1, v2}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExportStarted(IFFZLjava/lang/String;)V

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    iget-object p2, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->status:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    const-string v1, "exportClippingStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    iget-object p2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$400(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/CompositeNotebookFilter;

    move-result-object p2

    const-string v1, "CompositeFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "CitationStyleIndex"

    .line 164
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$300(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Z

    move-result p1

    const-string p2, "OpenPositionOverride"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    sget-object p1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;->EXPORT_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;->emit()Lkotlin/Unit;

    .line 170
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
