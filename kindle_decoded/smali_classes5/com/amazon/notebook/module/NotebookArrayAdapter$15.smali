.class Lcom/amazon/notebook/module/NotebookArrayAdapter$15;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->createNote(Lcom/amazon/kcp/reader/Note;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;I)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1314
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {p2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->reloadView()V

    .line 1315
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p2

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;->val$position:I

    invoke-virtual {p2, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    .line 1316
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "NotebookDialog"

    const-string v1, "CancelNoteButtonClicked"

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
