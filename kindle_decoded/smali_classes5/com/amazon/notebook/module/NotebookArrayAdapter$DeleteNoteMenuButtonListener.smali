.class Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteNoteMenuButtonListener"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

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

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final note:Lcom/amazon/kcp/reader/Note;

.field private final noteListItem:Landroid/view/View;

.field private final notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field private final notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

.field private final position:I


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILcom/amazon/notebook/module/NotebookListEventHandler;Ljava/util/Map;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/PopupWindow;",
            "Lcom/amazon/kcp/reader/Note;",
            "Landroid/view/View;",
            "I",
            "Lcom/amazon/notebook/module/NotebookListEventHandler;",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/module/NotebookArrayAdapter;",
            "Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;",
            ")V"
        }
    .end annotation

    .line 1648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1649
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1650
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    .line 1651
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->noteListItem:Landroid/view/View;

    .line 1652
    iput p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->position:I

    .line 1653
    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    .line 1654
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    .line 1655
    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 1656
    iput-object p8, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1661
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    const-string v0, "NotebookItemOverFlowMenu"

    const-string v1, "AnnotationActionDeleteNote"

    const-string v2, "NotebookAnnotationAction"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1662
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/Note;

    .line 1663
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->noteListItem:Landroid/view/View;

    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNoteOnly(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 1664
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1666
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    invoke-interface {v1, p1, v0}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    .line 1668
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->reloadView()V

    goto :goto_0

    .line 1669
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    if-eqz p1, :cond_1

    .line 1670
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->noteListItem:Landroid/view/View;

    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->adapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    const/4 v6, 0x1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNoteOnly(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 1671
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1672
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p1, v1, v0}, Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;->recordDeleted(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    .line 1675
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;->position:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method
