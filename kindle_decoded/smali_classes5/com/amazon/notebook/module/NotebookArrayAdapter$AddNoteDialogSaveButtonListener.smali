.class Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddNoteDialogSaveButtonListener"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field private final editText:Landroid/widget/EditText;

.field private final highlight:Lcom/amazon/kcp/reader/Note;

.field private final notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

.field private final position:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;)V
    .locals 0

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->highlight:Lcom/amazon/kcp/reader/Note;

    .line 1688
    iput p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->position:I

    .line 1689
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->editText:Landroid/widget/EditText;

    .line 1690
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 1691
    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1696
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->highlight:Lcom/amazon/kcp/reader/Note;

    iget v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->position:I

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->addAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    .line 1697
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;->highlight:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p2, v0}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1698
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
