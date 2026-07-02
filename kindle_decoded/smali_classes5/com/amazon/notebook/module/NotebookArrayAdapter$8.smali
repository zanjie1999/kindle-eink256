.class Lcom/amazon/notebook/module/NotebookArrayAdapter$8;
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

.field final synthetic val$viewPosition:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;I)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iput p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->val$viewPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 838
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iget v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->val$viewPosition:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->createNote(Lcom/amazon/kcp/reader/Note;I)V

    .line 839
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Notebook"

    const-string v1, "AddNoteButtonClicked"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;->val$viewPosition:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method
