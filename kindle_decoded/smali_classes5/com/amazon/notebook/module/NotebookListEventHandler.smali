.class Lcom/amazon/notebook/module/NotebookListEventHandler;
.super Ljava/lang/Object;
.source "NotebookListEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/notebook/module/NotebookActivity;

.field private context:Landroid/content/Context;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private enterAnim:I

.field private exitAnim:I

.field private final extras:Landroid/os/Bundle;

.field private listView:Landroid/widget/ListView;

.field private final noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private final notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

.field private notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookListEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/notebook/module/NotebookScreenLayout;Landroid/os/Bundle;Landroid/content/Context;Lcom/amazon/notebook/module/NotebookNoteTools;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->enterAnim:I

    .line 77
    iput v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->exitAnim:I

    .line 100
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    .line 101
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 102
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->listView:Landroid/widget/ListView;

    .line 103
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;

    .line 104
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    .line 105
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->context:Landroid/content/Context;

    .line 106
    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 107
    new-instance p2, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    invoke-direct {p2}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;-><init>()V

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    .line 108
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    const-string p4, "CompositeFilter"

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p6

    invoke-virtual {p2, p4, p6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "OpenPositionOverride"

    .line 109
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 110
    iget-object p4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p4, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    :cond_0
    new-instance p2, Lcom/amazon/notebook/module/NotebookListEventHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/notebook/module/NotebookListEventHandler$1;-><init>(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/notebook/module/NotebookActivity;)V

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->recordViewAnnotation(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/NotebookListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/notebook/module/NotebookListEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/notebook/module/NotebookListEventHandler;)Landroid/os/Bundle;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/notebook/module/NotebookListEventHandler;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->enterAnim:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/notebook/module/NotebookListEventHandler;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->exitAnim:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/notebook/module/NotebookListEventHandler;Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/amazon/notebook/module/NotebookListEventHandler;->animateRemoval(Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V

    return-void
.end method

.method private animateRemoval(Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ")V"
        }
    .end annotation

    .line 248
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x15e

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    new-instance v1, Lcom/amazon/notebook/module/NotebookListEventHandler$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/amazon/notebook/module/NotebookListEventHandler$2;-><init>(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/kcp/reader/Note;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateRemoval(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 234
    move-object v1, p2

    check-cast v1, Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 235
    invoke-virtual {v1, p4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getHighlightCoveringNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/Note;

    move-result-object v2

    .line 236
    invoke-virtual {v1, p4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getHighlightIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p4

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, p4, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    :cond_0
    move-object v5, v0

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v8, v5

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    .line 242
    invoke-direct/range {v3 .. v8}, Lcom/amazon/notebook/module/NotebookListEventHandler;->animateRemoval(Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V

    return-void
.end method

.method public static getLogNameForType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "HIGHLIGHT"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "NOTE"

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "BOOKMARK"

    return-object p0

    :cond_2
    const-string p0, "UNKNOWN_TYPE"

    return-object p0
.end method

.method private getViewByPosition(ILandroid/widget/ListView;)Landroid/view/View;
    .locals 2

    .line 337
    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 338
    invoke-virtual {p2}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v0, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 344
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private recordViewAnnotation(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 4

    .line 310
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->emit()Lkotlin/Unit;

    const-string v0, "ViewPopularHighlight"

    goto :goto_0

    .line 321
    :cond_1
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->emit()Lkotlin/Unit;

    const-string v0, "ViewHighlight"

    goto :goto_0

    .line 317
    :cond_2
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->emit()Lkotlin/Unit;

    const-string v0, "ViewNote"

    goto :goto_0

    .line 313
    :cond_3
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;->emit()Lkotlin/Unit;

    const-string v0, "ViewBookmark"

    :goto_0
    if-eqz v0, :cond_4

    .line 329
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 330
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const-string v3, "Book"

    .line 330
    invoke-interface {v1, v3, v0, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public deleteNote(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/kcp/reader/Note;",
            "Z)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logAnnotationDeleted(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/NotebookListEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to KRXIAnnotation.AnnotationType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook"

    const-string v2, "DeleteAnnotation"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getHighlightCoveringPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    .line 179
    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 180
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    invoke-virtual {v2, p3}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->emitDelete(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    .line 184
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->animateRemoval(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_1

    .line 201
    :cond_2
    sget-object p1, Lcom/amazon/notebook/module/NotebookListEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "No doc viewer found when deleting the annotation"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public deleteNoteOnly(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/kcp/reader/Note;",
            "Z)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logAnnotationDeleted(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/NotebookListEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to KRXIAnnotation.AnnotationType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook"

    const-string v2, "DeleteAnnotation"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getHighlightCoveringPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteNoteOnly(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    .line 223
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->animateRemoval(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_1
    return-void
.end method

.method public getActivity()Lcom/amazon/notebook/module/NotebookActivity;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotesScreen()Lcom/amazon/notebook/module/NotebookScreenLayout;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;

    return-object v0
.end method

.method public onStarToggled(ILcom/amazon/kcp/reader/Note;)V
    .locals 3

    .line 292
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    const-string v0, "CompositeFilter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object p2

    sget-object v0, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->saveScrollPosition(Landroid/os/Bundle;I)V

    .line 297
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0, v1, p2, v2}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setAnnotationListAdapter(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    :cond_0
    return-void
.end method

.method public refreshListAndFilter(I)V
    .locals 2

    .line 278
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 279
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->notesScreen:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->saveScrollPosition(Landroid/os/Bundle;I)V

    .line 280
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookActivity;->refreshAnnotations(Landroid/os/Bundle;)V

    .line 283
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->extras:Landroid/os/Bundle;

    const-string v0, "CompositeFilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookNoteTools;->getChapterList()Ljava/util/List;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
