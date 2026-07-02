.class Lcom/amazon/kcp/reader/NotesListEventHandler$4;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iput p3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 213
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "GoToContextMenu"

    const-string v1, "DeleteAnnotation"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 217
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$500(Lcom/amazon/kcp/reader/NotesListEventHandler;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/NotesArrayAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->getItemViewResourceId()I

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$500(Lcom/amazon/kcp/reader/NotesListEventHandler;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v2}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v3}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$600(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Lcom/amazon/kcp/reader/NotesArrayAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->val$position:I

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$500(Lcom/amazon/kcp/reader/NotesListEventHandler;)Landroid/widget/ListView;

    move-result-object p1

    iget v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->val$position:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$700(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$4;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$700(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->updateContent()V

    :cond_1
    return v0
.end method
