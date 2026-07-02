.class Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;
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

    .line 175
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 178
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$000(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    move-result-object p1

    .line 179
    iget-object p2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$100(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    move-result-object p2

    .line 181
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$200(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget v0, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->noteCount:I

    iget v1, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->previouslyExported:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v1, v2

    iget p2, p2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->currentlyExported:F

    sub-float/2addr p2, v1

    mul-float p2, p2, v2

    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    .line 185
    invoke-static {v1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->access$300(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Z

    move-result v1

    .line 186
    invoke-virtual {p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;->getMetricsName()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {v0, v3, p2, v1, p1}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExportCanceledBeforeStarting(IFFZLjava/lang/String;)V

    .line 189
    :cond_0
    sget-object p1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;->CANCEL_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;->emit()Lkotlin/Unit;

    .line 191
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 192
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;->this$0:Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
