.class Lcom/amazon/notebook/module/NotebookArrayAdapter$6;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$note:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$position:I

.field final synthetic val$starImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/widget/ImageView;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$note:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$starImage:Landroid/widget/ImageView;

    iput p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 506
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$000(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookNoteTools;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookNoteTools;->toggleStar(Lcom/amazon/kcp/reader/Note;)V

    .line 507
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$000(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookNoteTools;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$starImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->updateStarImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/Note;)V

    .line 508
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 509
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$position:I

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->onStarToggled(ILcom/amazon/kcp/reader/Note;)V

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;->val$position:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method
