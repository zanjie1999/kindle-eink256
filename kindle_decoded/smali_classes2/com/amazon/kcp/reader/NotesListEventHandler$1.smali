.class Lcom/amazon/kcp/reader/NotesListEventHandler$1;
.super Ljava/lang/Object;
.source "NotesListEventHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NotesListEventHandler;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;ZLcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

.field final synthetic val$activity:Lcom/amazon/kcp/redding/ReddingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

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

    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/Note;

    .line 107
    sget-object p2, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    if-ne p1, p2, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p2, p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$000(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p2

    .line 113
    iget-object p4, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p4}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->stopPopulateBookText()V

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p4

    const-string p5, "GoToMenu"

    const-string v0, "NotesMarks"

    invoke-virtual {p4, p5, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    const-string p5, "selectedAnnotationIndex"

    .line 116
    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    const-string p5, "selectedAnnotationStart"

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p1

    const-string p3, "selectedAnnotationType"

    invoke-virtual {p4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "EntryPoint"

    .line 119
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p2}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$200(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$1;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p3}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$300(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    return-void
.end method
