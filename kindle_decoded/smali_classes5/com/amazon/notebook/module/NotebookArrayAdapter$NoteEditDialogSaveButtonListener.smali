.class Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;
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
    name = "NoteEditDialogSaveButtonListener"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field private final editText:Landroid/widget/EditText;

.field private final entryPoint:Ljava/lang/String;

.field private final highlightToNoteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field

.field private final note:Lcom/amazon/kcp/reader/Note;

.field private final notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

.field private final position:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;Landroid/widget/EditText;Ljava/util/Map;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;Lcom/amazon/notebook/module/NotebookArrayAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/Note;",
            "I",
            "Ljava/lang/String;",
            "Landroid/widget/EditText;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;",
            "Lcom/amazon/notebook/module/NotebookArrayAdapter;",
            ")V"
        }
    .end annotation

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    .line 1558
    iput p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->position:I

    .line 1559
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->entryPoint:Ljava/lang/String;

    .line 1560
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->editText:Landroid/widget/EditText;

    .line 1561
    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    .line 1562
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    .line 1563
    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1570
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1571
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/Note;

    .line 1572
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->position:I

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->saveAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->entryPoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1574
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    invoke-interface {v1, p2, v0}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordEdited(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    goto :goto_0

    .line 1576
    :cond_0
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1577
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    iget v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->position:I

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->saveAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V

    .line 1578
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->entryPoint:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v0, v1, p2}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordEdited(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    .line 1582
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
