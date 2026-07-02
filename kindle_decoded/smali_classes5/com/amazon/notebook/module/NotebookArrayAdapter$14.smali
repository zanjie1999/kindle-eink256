.class Lcom/amazon/notebook/module/NotebookArrayAdapter$14;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$hasDarkBackground:Z


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroidx/appcompat/app/AlertDialog;Z)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-boolean p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->val$hasDarkBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1284
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-boolean v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->val$hasDarkBackground:Z

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, v0, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$1000(Lcom/amazon/notebook/module/NotebookArrayAdapter;ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
