.class Lcom/amazon/notebook/module/NotebookArrayAdapter$7;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->setupNoteView(Landroid/view/View;Lcom/amazon/kcp/reader/Note;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$highlight:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$noteListItem:Landroid/view/View;

.field final synthetic val$viewPosition:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;I)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$noteListItem:Landroid/view/View;

    iput p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$viewPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 776
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Notebook"

    const-string v1, "EditNoteButtonClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$noteListItem:Landroid/view/View;

    iget v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;->val$viewPosition:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->editNote(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method
