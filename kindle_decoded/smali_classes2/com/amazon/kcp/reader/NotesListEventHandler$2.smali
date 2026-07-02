.class Lcom/amazon/kcp/reader/NotesListEventHandler$2;
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

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iput p3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$000(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "GoToContextMenu"

    const-string v1, "GotoLocation"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 180
    iget v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$position:I

    const-string v1, "selectedAnnotationIndex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const-string v1, "selectedAnnotationStart"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->val$annotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const-string v1, "selectedAnnotationType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$200(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$2;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$300(Lcom/amazon/kcp/reader/NotesListEventHandler;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    const/4 p1, 0x1

    return p1
.end method
