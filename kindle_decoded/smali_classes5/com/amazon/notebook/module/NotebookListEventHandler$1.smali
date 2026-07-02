.class Lcom/amazon/notebook/module/NotebookListEventHandler$1;
.super Ljava/lang/Object;
.source "NotebookListEventHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookListEventHandler;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/notebook/module/NotebookScreenLayout;Landroid/os/Bundle;Landroid/content/Context;Lcom/amazon/notebook/module/NotebookNoteTools;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field final synthetic val$activity:Lcom/amazon/notebook/module/NotebookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/notebook/module/NotebookActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->val$activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/Note;

    .line 118
    sget-object p2, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    if-ne p1, p2, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p2, p1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$000(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 125
    iget-object p5, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p5}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$100(Lcom/amazon/notebook/module/NotebookListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p5}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$100(Lcom/amazon/notebook/module/NotebookListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p5

    invoke-interface {p5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p5

    invoke-interface {p5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p5

    if-eqz p5, :cond_1

    const/4 p5, 0x0

    .line 126
    invoke-static {p4, p5}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logAnnotationViewed(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Z)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$200()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to KRXIAnnotation.AnnotationType."

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-object p4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p4}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$100(Lcom/amazon/notebook/module/NotebookListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 132
    iget-object p4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p4}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$100(Lcom/amazon/notebook/module/NotebookListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->stopPopulateBookText()V

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Selected_"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getLogNameForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "Notebook"

    invoke-virtual {p4, v0, p5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 135
    iget-object p5, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p5}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$300(Lcom/amazon/notebook/module/NotebookListEventHandler;)Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p5, "selectedAnnotationIndex"

    .line 136
    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    const-string/jumbo p5, "selectedAnnotationStart"

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p3

    const-string/jumbo p5, "selectedAnnotationType"

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const-string p3, "OpenPositionOverride"

    invoke-virtual {p4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EntryPoint"

    .line 140
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->val$activity:Lcom/amazon/notebook/module/NotebookActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->val$activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$400(Lcom/amazon/notebook/module/NotebookListEventHandler;)I

    move-result p2

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$1;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {p3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$500(Lcom/amazon/notebook/module/NotebookListEventHandler;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/amazon/notebook/module/NotebookActivity;->animateAndFinish(II)V

    :cond_2
    return-void
.end method
