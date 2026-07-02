.class Lcom/amazon/notebook/module/NotebookArrayAdapter$12;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$note:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$note:Lcom/amazon/kcp/reader/Note;

    iput p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$position:I

    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1255
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    iget v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$position:I

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->saveAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    goto :goto_0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$note:Lcom/amazon/kcp/reader/Note;

    iget v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$position:I

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->saveAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    .line 1260
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
