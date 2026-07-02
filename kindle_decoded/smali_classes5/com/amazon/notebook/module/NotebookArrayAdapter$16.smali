.class Lcom/amazon/notebook/module/NotebookArrayAdapter$16;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$highlight:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iput p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$position:I

    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1327
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$highlight:Lcom/amazon/kcp/reader/Note;

    iget v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$position:I

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->addAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    .line 1328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
