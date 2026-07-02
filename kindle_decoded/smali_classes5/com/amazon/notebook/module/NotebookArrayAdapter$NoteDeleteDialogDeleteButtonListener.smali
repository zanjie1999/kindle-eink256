.class Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;
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
    name = "NoteDeleteDialogDeleteButtonListener"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field private final dialogInterface:Landroid/content/DialogInterface;

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

.field private final noteListItem:Landroid/view/View;

.field private final notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field private final notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

.field private final position:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/util/Map;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/NotebookListEventHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/Note;",
            "Landroid/view/View;",
            "I",
            "Landroid/content/DialogInterface;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;",
            "Lcom/amazon/notebook/module/NotebookArrayAdapter;",
            "Lcom/amazon/notebook/module/NotebookListEventHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    .line 1603
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->noteListItem:Landroid/view/View;

    .line 1604
    iput p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->position:I

    .line 1605
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->dialogInterface:Landroid/content/DialogInterface;

    .line 1606
    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    .line 1607
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    .line 1608
    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 1609
    iput-object p8, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    .line 1610
    iput-object p9, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->entryPoint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1615
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1616
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/reader/Note;

    .line 1617
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->noteListItem:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNoteOnly(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 1618
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->reloadView()V

    .line 1620
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->entryPoint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    invoke-interface {v1, p2, v0}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    goto :goto_0

    .line 1623
    :cond_0
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    if-eqz p2, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->noteListItem:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNote(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 1625
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->entryPoint:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1626
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v0, v1, p2}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    .line 1629
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->position:I

    invoke-virtual {p2, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    .line 1630
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1631
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;->dialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
