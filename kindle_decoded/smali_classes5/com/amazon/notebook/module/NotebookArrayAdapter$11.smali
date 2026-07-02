.class Lcom/amazon/notebook/module/NotebookArrayAdapter$11;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->editNote(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$entryPoint:Ljava/lang/String;

.field final synthetic val$note:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$noteListItem:Landroid/view/View;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$note:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$noteListItem:Landroid/view/View;

    iput p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$position:I

    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$entryPoint:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1243
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$note:Lcom/amazon/kcp/reader/Note;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$noteListItem:Landroid/view/View;

    iget v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$position:I

    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;->val$entryPoint:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$900(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/lang/String;)V

    .line 1244
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "NotebookDialog"

    const-string v0, "DeleteNoteButtonClicked"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
