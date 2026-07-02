.class Lcom/amazon/kcp/reader/NotesListEventHandler$3;
.super Ljava/lang/Object;
.source "NotesListEventHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NotesListEventHandler;->populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/Note;ILandroid/widget/AdapterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

.field final synthetic val$annotation:Lcom/amazon/kcp/reader/Note;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 195
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "GoToContextMenu"

    const-string v1, "EditAnnotation"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result v0

    const-string v1, "editNoteAtIndex"

    .line 198
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const-string v1, "selectedAnnotationStart"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const-string v1, "selectedAnnotationType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 202
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$200(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$3;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$300(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    const/4 p1, 0x1

    return p1
.end method
