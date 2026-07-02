.class public Lcom/amazon/notebook/module/NotebookArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotebookArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;,
        Lcom/amazon/notebook/module/NotebookArrayAdapter$DeleteNoteMenuButtonListener;,
        Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;,
        Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;,
        Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kcp/reader/Note;",
        ">;"
    }
.end annotation


# static fields
.field private static final MENU_DARK_BACKGROUND:I = -0xdcdcdd

.field private static final NOTE_HIGHLIGHT_BLUE:I = -0x6a2f11

.field private static final NOTE_HIGHLIGHT_ORANGE:I = -0x4d9a

.field private static final NOTE_HIGHLIGHT_PINK:I = -0x4d4e

.field private static final NOTE_HIGHLIGHT_YELLOW:I = -0xa1ca5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

.field private final defaultHighlightStripeColor:I

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private highlightToNoteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field

.field private itemViewResourceId:I

.field private maxGHLWidth:I

.field private final noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private final notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

.field private notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field private final notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field

.field private supportsGraphics:Z

.field private themeProvider:Lcom/amazon/notebook/ThemeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;I",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Lcom/amazon/notebook/module/NotebookNoteTools;",
            "Lcom/amazon/notebook/ThemeProvider;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->itemViewResourceId:I

    .line 186
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    .line 187
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 188
    iput p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->itemViewResourceId:I

    .line 189
    new-instance p2, Lcom/amazon/notebook/module/AsyncGraphicForRange;

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p2, p3}, Lcom/amazon/notebook/module/AsyncGraphicForRange;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    .line 190
    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/notebook/module/R$color;->transparent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->defaultHighlightStripeColor:I

    .line 192
    new-instance p1, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    invoke-direct {p1}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;-><init>()V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    .line 193
    new-instance p1, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;

    invoke-direct {p1}, Lcom/amazon/notebook/module/metrics/FastMetricsNotebookNoteActionMetric;-><init>()V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    .line 194
    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    .line 198
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->supportsGraphics:Z

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->supportsGraphics:Z

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->computeMaxGHLWidth()V

    .line 204
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getHighlightNoteMappings()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    .line 205
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->removeUnavailableNotes()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookNoteTools;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/notebook/module/NotebookArrayAdapter;ZLandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->changeHighlightColor(ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/ThemeProvider;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/content/res/Resources;)I
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getTOCTextColor(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->addColoredHighlightOptions(ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$800(FI)Ljava/util/Map;
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getMetricData(FI)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->onDelete(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method

.method private addColoredHighlightOptions(ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    .line 1464
    invoke-static {}, Lcom/amazon/notebook/module/ColorHighlightProperties;->values()[Lcom/amazon/notebook/module/ColorHighlightProperties;

    move-result-object v10

    .line 1466
    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_1

    aget-object v0, v10, v13

    move-object/from16 v14, p2

    .line 1467
    invoke-interface {v0, v14}, Lcom/amazon/notebook/module/IColorHighlightProperties;->isAnnotationSameColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    invoke-static/range {p2 .. p2}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v9}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->viewForColorTitle(Ljava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    .line 1469
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1473
    :cond_0
    invoke-interface {v0}, Lcom/amazon/notebook/module/IColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v5

    .line 1474
    invoke-direct {v8, v5, v9}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->viewForColorTitle(Ljava/lang/String;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v15

    .line 1475
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1476
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getTOCTextColor(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1477
    new-instance v7, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v15

    move-object v12, v7

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/PopupWindow;)V

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private changeHighlightColor(ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;)Z
    .locals 2

    .line 1509
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    const-string v1, "Notebook"

    invoke-static {v0, p2, p4, v1}, Lcom/amazon/notebook/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookHighlightActionMetric:Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;

    invoke-virtual {v0, p2}, Lcom/amazon/notebook/module/metrics/NotebookHighlightActionMetric;->emitChangeColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 1516
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1517
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1518
    invoke-static {v0, p4}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logHighlightColorChanged(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Ljava/lang/String;)V

    goto :goto_0

    .line 1520
    :cond_1
    sget-object p4, Lcom/amazon/notebook/module/NotebookArrayAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to KRXIAnnotation.AnnotationType."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :goto_0
    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1525
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "CompositeFilter"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    if-eqz p2, :cond_3

    .line 1527
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object p3

    sget-object p4, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1528
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object p3

    sget-object p4, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1529
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object p3

    sget-object p4, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1530
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1531
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1532
    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getNotesScreen()Lcom/amazon/notebook/module/NotebookScreenLayout;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->saveScrollPosition(Landroid/os/Bundle;I)V

    .line 1533
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getNotesScreen()Lcom/amazon/notebook/module/NotebookScreenLayout;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {p1, p3, p2, p4}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setAnnotationListAdapter(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private computeMaxGHLWidth()V
    .locals 4

    .line 346
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 348
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 349
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 350
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 351
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 356
    sget v2, Lcom/amazon/notebook/module/R$dimen;->notebook_list_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_paddingLeft:I

    .line 357
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_paddingRight:I

    .line 358
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notecard_margin_left:I

    .line 359
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notecard_margin_right:I

    .line 360
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_annotation_selection_image_frame_marginLeft:I

    .line 361
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_right_stripe_width:I

    .line 362
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_annotation_selection_image_marginRight:I

    .line 363
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 365
    iput v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->maxGHLWidth:I

    return-void
.end method

.method public static createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/notebook/module/CompositeNotebookFilter;Lcom/amazon/notebook/module/NotebookNoteTools;)Lcom/amazon/notebook/module/NotebookArrayAdapter;
    .locals 7

    .line 151
    invoke-virtual {p4, p3}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object v2

    .line 153
    new-instance p3, Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {}, Lcom/amazon/notebook/DarkModeUtil;->getInstance()Lcom/amazon/notebook/DarkModeUtil;

    move-result-object v6

    move-object v0, p3

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/notebook/module/NotebookArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    return-object p3
.end method

.method public static createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)Lcom/amazon/notebook/module/NotebookArrayAdapter;
    .locals 1

    const-string v0, "CompositeFilter"

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    if-nez p2, :cond_0

    .line 168
    new-instance p2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    .line 170
    :cond_0
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_list_item:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ILcom/amazon/notebook/module/CompositeNotebookFilter;Lcom/amazon/notebook/module/NotebookNoteTools;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getContentDescriptionOverlay(Lcom/amazon/kcp/reader/Note;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 529
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/notebook/module/R$string;->no_text_in_scribble:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getHighlightNoteMappings()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/Note;

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 315
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-eq v7, v6, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    :cond_1
    :goto_1
    move-object v2, v3

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-eq v7, v5, :cond_3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-eq v7, v4, :cond_3

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 328
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    .line 329
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v9

    if-lt v8, v7, :cond_5

    if-gt v9, v7, :cond_5

    .line 330
    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 331
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 333
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 336
    :cond_4
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v7

    if-eq v7, v6, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private static getMetricData(FI)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1540
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1541
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ClippingLimit"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextSize"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getTOCBackgroundColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    sget v0, Lcom/amazon/notebook/module/R$color;->notebook_module_toc_location_background_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 1129
    :cond_0
    sget v0, Lcom/amazon/notebook/module/R$color;->notebook_module_toc_location_background_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getTOCTextColor(Landroid/content/res/Resources;)I
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    sget v0, Lcom/amazon/notebook/module/R$color;->notebook_module_toc_location_text_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 1141
    :cond_0
    sget v0, Lcom/amazon/notebook/module/R$color;->notebook_module_toc_location_text_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private insertStubNotesForHostApp()V
    .locals 26

    move-object/from16 v0, p0

    .line 240
    new-instance v9, Lcom/amazon/kcp/reader/Annotation;

    const-string v2, "booktext"

    const/4 v3, 0x1

    const/16 v4, 0x7b

    const/16 v5, 0x155

    const/4 v6, 0x4

    const-string v7, "This is a note. I am taking this note to remember details about the highlight."

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    .line 241
    new-instance v1, Lcom/amazon/kcp/reader/Annotation;

    const-string v11, "booktext"

    const/4 v12, 0x0

    const/16 v13, 0x81

    const/16 v14, 0x155

    const/16 v15, 0x1c3

    const-string v16, "This is a bookmark. I am taking this note to remember details about the highlight."

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    .line 242
    new-instance v2, Lcom/amazon/kcp/reader/Annotation;

    const-string v19, "booktext"

    const/16 v20, 0x2

    const/16 v21, 0x97

    const/16 v22, 0x155

    const/16 v23, 0x234

    const-string v24, "This is a highlight. I am taking this note to remember details about the highlight."

    const/16 v25, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v25}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    .line 243
    new-instance v3, Lcom/amazon/kcp/reader/Annotation;

    const-string v11, "booktext"

    const/4 v12, 0x3

    const/16 v13, 0x44e

    const/16 v14, 0x4b4

    const/16 v15, 0x444

    const-string v16, "This is a fourth note note. I am taking this note to remember details about the highlight."

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Lcom/amazon/kcp/reader/Annotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    .line 245
    new-instance v4, Lcom/amazon/kcp/reader/Note;

    const-string v5, "Note"

    const/4 v6, 0x0

    const/16 v7, 0x7b

    invoke-direct {v4, v9, v7, v6, v5}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 246
    new-instance v7, Lcom/amazon/kcp/reader/Note;

    const/16 v8, 0x155

    const-string v9, "Bookmark"

    invoke-direct {v7, v1, v8, v6, v9}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/amazon/kcp/reader/Note;

    const/16 v8, 0x15a

    const-string v9, "Highlight"

    invoke-direct {v1, v2, v8, v6, v9}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcom/amazon/kcp/reader/Note;

    const/16 v8, 0x44e

    invoke-direct {v2, v3, v8, v6, v5}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v0, v4, v3}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    const/4 v5, 0x1

    .line 251
    invoke-virtual {v0, v7, v5}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    const/4 v6, 0x2

    .line 252
    invoke-virtual {v0, v1, v6}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    const/4 v8, 0x3

    .line 253
    invoke-virtual {v0, v2, v8}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/amazon/kcp/reader/Note;

    aput-object v4, v9, v3

    aput-object v7, v9, v5

    aput-object v1, v9, v6

    aput-object v2, v9, v8

    .line 254
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    return-void
.end method

.method private onDelete(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 14

    move-object v10, p0

    .line 1392
    new-instance v11, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v10, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1394
    sget v0, Lcom/amazon/notebook/module/R$string;->annotation_verify_delete_title:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1395
    sget v0, Lcom/amazon/notebook/module/R$string;->annotation_verify_delete_message:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1396
    sget v12, Lcom/amazon/notebook/module/R$string;->notes_context_delete:I

    new-instance v13, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;

    iget-object v5, v10, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v6, v10, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    iget-object v8, v10, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, p0

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteDeleteDialogDeleteButtonListener;-><init>(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILandroid/content/DialogInterface;Ljava/util/Map;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/NotebookListEventHandler;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1399
    sget v0, Lcom/amazon/notebook/module/R$string;->cancel:I

    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$19;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$19;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {v11}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1408
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$20;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$20;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1415
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$21;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$21;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1425
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private removeUnavailableNotes()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 215
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1168
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1169
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 1171
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1188
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setVisibilityIfExisting(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1177
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setupNoteView(Landroid/view/View;Lcom/amazon/kcp/reader/Note;Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    .line 737
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v4}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v4

    .line 738
    sget v5, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_note_body:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 739
    sget v6, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_note_top_row_container:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 740
    sget v7, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_note_image_container:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 741
    sget v8, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_note_type:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 742
    sget v9, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_note_image:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 743
    sget v10, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_edit_note_view:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 744
    sget v11, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_edit_note:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 745
    sget v12, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_type_location_separator:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 747
    sget v13, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_note_location_marker:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 748
    sget v14, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_note_type_location_separator:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 749
    sget v15, Lcom/amazon/notebook/module/R$drawable;->ic_note_icon:I

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v15, -0x1

    const/high16 v1, -0x1000000

    if-eqz v4, :cond_0

    .line 751
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 752
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 754
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 757
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 762
    :goto_0
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_2

    .line 763
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 764
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 767
    invoke-virtual {v7, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 768
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 770
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v15, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 772
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 773
    new-instance v12, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;

    move-object/from16 v15, p1

    invoke-direct {v12, v0, v2, v15, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter$7;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;I)V

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_notes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v2, " \u2022 "

    .line 784
    invoke-direct {v0, v14, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    const v2, 0x3f0a3d71    # 0.54f

    .line 785
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 786
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v3, 0x0

    .line 787
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 788
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 789
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 790
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 791
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 792
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 793
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v8, v2, v6, v3, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-boolean v3, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->supportsGraphics:Z

    iget-object v6, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    iget v8, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->maxGHLWidth:I

    move/from16 v16, p4

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v6

    move/from16 v21, v8

    invoke-static/range {v16 .. v21}, Lcom/amazon/notebook/module/notecard/NotecardBodyViewGenerator;->generateView(ILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ZLcom/amazon/notebook/module/AsyncGraphicForRange;I)Lcom/amazon/notebook/module/notecard/NotecardBodyView;

    move-result-object v2

    .line 795
    invoke-virtual {v2, v1, v4}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->applyAnnotationNote(Lcom/amazon/kcp/reader/Note;Z)V

    .line 796
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 798
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 799
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 800
    sget v1, Lcom/amazon/notebook/module/R$drawable;->ic_note_edit:I

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v4, :cond_1

    const/4 v1, -0x1

    .line 802
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    .line 804
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    move-object/from16 v1, p3

    .line 807
    invoke-direct {v0, v13, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0x8

    .line 810
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 811
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 814
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_4

    const/high16 v1, 0x41500000    # 13.0f

    .line 817
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 818
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v1, 0x0

    .line 819
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 820
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 822
    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 823
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v4, :cond_3

    const-string v1, "#29ABE2"

    .line 826
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    const-string v1, "#1E78BA"

    .line 828
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 830
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_module_add_note:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, 0x0

    .line 832
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 833
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 835
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter$8;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;I)V

    .line 843
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 846
    :cond_4
    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 847
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private setupNotesListView(Landroid/view/View;ILcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;Lcom/amazon/kcp/reader/Note;)Landroid/view/View;
    .locals 28

    move-object/from16 v6, p0

    move/from16 v5, p2

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v7, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->itemViewResourceId:I

    invoke-static {v4, v7, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    :goto_0
    const/16 v4, 0x8

    if-nez v2, :cond_1

    .line 552
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    return-object v7

    .line 555
    :cond_1
    sget v8, Lcom/amazon/notebook/module/R$id;->notebook_module_toc_count:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 556
    sget v9, Lcom/amazon/notebook/module/R$id;->notebook_chapter_separator:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 557
    sget v10, Lcom/amazon/notebook/module/R$id;->notebook_module_annotation_actions:I

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 558
    sget v11, Lcom/amazon/notebook/module/R$id;->notebook_module_annotation_actions_image_view:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 560
    sget v13, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_type:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 561
    sget v14, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_type_location_separator:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 562
    sget v15, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_left_marker:I

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 563
    sget v3, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_star_image:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 564
    sget v4, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_star_image_view:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v17, v9

    .line 565
    sget v9, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_top_row_container:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 566
    sget v9, Lcom/amazon/notebook/module/R$id;->notebook_module_toc_location:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 567
    sget v0, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_main_body:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 568
    sget v1, Lcom/amazon/notebook/module/R$id;->note_module_item_loading_spinner:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v15

    .line 569
    sget v15, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_location_marker:I

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 570
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_toc_page_location_container:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object/from16 v20, v1

    .line 571
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_notecard_container:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    .line 572
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v5, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    .line 577
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 578
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object v7

    .line 581
    :cond_2
    invoke-direct {v6, v12}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getTOCBackgroundColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 583
    invoke-direct {v6, v12}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getTOCTextColor(Landroid/content/res/Resources;)I

    move-result v1

    .line 584
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    const/4 v1, 0x1

    if-eqz v3, :cond_4

    const/4 v12, 0x6

    if-ne v5, v12, :cond_3

    const/16 v12, 0x8

    .line 590
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x2

    .line 591
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 593
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    .line 595
    iget-object v4, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v4, v3, v2}, Lcom/amazon/notebook/module/NotebookNoteTools;->updateStarImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/Note;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v12, 0x0

    .line 599
    :goto_2
    iget-object v3, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v3}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    .line 601
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_5
    const/high16 v12, -0x1000000

    .line 605
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    const v12, 0x3f0a3d71    # 0.54f

    .line 609
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 610
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 611
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v10, :cond_7

    if-eqz v3, :cond_6

    .line 614
    sget v12, Lcom/amazon/notebook/module/R$drawable;->ic_overflow_amazon_dark:I

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 616
    :cond_6
    sget v12, Lcom/amazon/notebook/module/R$drawable;->ic_overflow_amazon_light:I

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    move/from16 v12, p2

    const/4 v10, 0x0

    .line 618
    invoke-virtual {v6, v7, v12, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setAnnotationActionMenu(Landroid/view/View;ILandroid/widget/RelativeLayout;)V

    goto :goto_5

    :cond_7
    move/from16 v12, p2

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v11, v20

    const/16 v14, 0x8

    .line 622
    invoke-direct {v6, v11, v14}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setVisibilityIfExisting(Landroid/view/View;I)V

    .line 624
    invoke-virtual {v6, v7}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->cancelBackgroundLoads(Landroid/view/View;)V

    .line 625
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 628
    sget-object v14, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    const-string v1, " "

    if-ne v2, v14, :cond_8

    .line 629
    invoke-direct {v6, v9, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 631
    new-instance v0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;-><init>(Landroid/content/Context;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/notebook/module/R$string;->loading_book:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflateTextView(Ljava/lang/String;Z)V

    move-object/from16 v14, v19

    .line 633
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    return-object v7

    :cond_8
    move-object/from16 v14, v19

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v22

    iget-object v11, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-boolean v10, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->supportsGraphics:Z

    iget-object v4, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    move-object/from16 v27, v15

    iget v15, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->maxGHLWidth:I

    move/from16 v21, v5

    move-object/from16 v23, v11

    move/from16 v24, v10

    move-object/from16 v25, v4

    move/from16 v26, v15

    invoke-static/range {v21 .. v26}, Lcom/amazon/notebook/module/notecard/NotecardBodyViewGenerator;->generateView(ILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ZLcom/amazon/notebook/module/AsyncGraphicForRange;I)Lcom/amazon/notebook/module/notecard/NotecardBodyView;

    move-result-object v4

    .line 641
    invoke-virtual {v4, v2, v3}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->applyAnnotationNote(Lcom/amazon/kcp/reader/Note;Z)V

    .line 644
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    iget-object v3, v2, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    invoke-direct {v6, v13, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextOnView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 648
    iget v3, v2, Lcom/amazon/kcp/reader/Note;->typeTextResourceId:I

    const/4 v10, -0x1

    if-eq v3, v10, :cond_9

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v10, v2, Lcom/amazon/kcp/reader/Note;->typeTextResourceId:I

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 651
    :cond_9
    iget-object v3, v2, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    .line 655
    :goto_6
    iget v10, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->defaultHighlightStripeColor:I

    move-object/from16 v15, v18

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 656
    invoke-virtual {v4}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 657
    invoke-static/range {p5 .. p5}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v4

    .line 658
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-virtual {v6, v2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getNoteStripColor(Lcom/amazon/kcp/reader/Note;)I

    move-result v4

    .line 660
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 663
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    iget-object v10, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    const-string v11, ""

    if-nez v10, :cond_b

    move-object v10, v11

    goto :goto_7

    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-nez v10, :cond_c

    move-object v1, v11

    goto :goto_8

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    move-object v11, v1

    :goto_9
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v7, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v1, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_e

    .line 669
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    const/4 v4, 0x4

    goto :goto_b

    :cond_f
    const/4 v4, 0x3

    .line 680
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 681
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 682
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 683
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 684
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x8

    .line 685
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v1, p3

    .line 687
    iget-object v4, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    const-string v10, ")"

    const-string v11, "("

    if-eqz v4, :cond_12

    .line 689
    iget-object v4, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x0

    :cond_10
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amazon/kcp/reader/Note;

    .line 690
    iget-object v15, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v15, v14}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v14

    .line 691
    iget-object v14, v14, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v14, :cond_10

    iget-object v15, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 695
    :cond_11
    iget-object v1, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    invoke-direct {v6, v9, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v8, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v4, v17

    const/4 v1, 0x0

    .line 697
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 698
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_d
    const/16 v0, 0x8

    goto :goto_f

    :cond_12
    move-object/from16 v4, v17

    .line 699
    iget-object v13, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v13, :cond_15

    .line 701
    iget-object v13, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/kcp/reader/Note;

    .line 702
    iget-object v2, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v2, v15}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v2

    .line 703
    iget-object v15, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    move-object/from16 v16, v13

    if-eqz v15, :cond_13

    iget-object v13, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v2, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-nez v2, :cond_13

    add-int/lit8 v14, v14, 0x1

    :cond_13
    move-object/from16 v2, p5

    move-object/from16 v13, v16

    goto :goto_e

    .line 707
    :cond_14
    iget-object v1, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    invoke-direct {v6, v9, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v8, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 709
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    .line 712
    invoke-direct {v6, v9, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 713
    invoke-direct {v6, v8, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 714
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_f
    const/4 v1, 0x1

    if-ge v12, v1, :cond_16

    .line 717
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 719
    :cond_16
    iget-object v0, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    move-object/from16 v15, v27

    invoke-direct {v6, v15, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setTextAndMakeVisibleIfNotNull(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v12, v0, :cond_17

    .line 722
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_bottom_separator:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 724
    :cond_17
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_bottom_separator:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    :goto_10
    iget-object v3, v3, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p5

    move v4, v5

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setupNoteView(Landroid/view/View;Lcom/amazon/kcp/reader/Note;Ljava/lang/String;II)V

    return-object v7
.end method

.method public static shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1111
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    .line 1112
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/amazon/kcp/debug/DebugUtils;->RTL_CONTENT_SUPPORT_FOR_NLN:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V
    .locals 4

    const/4 v0, -0x1

    .line 1429
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, -0x777778

    .line 1431
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz p1, :cond_2

    .line 1434
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1435
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1437
    :cond_1
    invoke-virtual {p2, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1438
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 1440
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_3

    .line 1441
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1443
    :cond_3
    invoke-virtual {p2, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1444
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private viewForColorTitle(Ljava/lang/String;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    const-string v0, "blue"

    .line 1495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget p1, Lcom/amazon/notebook/module/R$id;->change_to_blue:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "orange"

    .line 1497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    sget p1, Lcom/amazon/notebook/module/R$id;->change_to_orange:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pink"

    .line 1499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1500
    sget p1, Lcom/amazon/notebook/module/R$id;->change_to_pink:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    .line 1502
    :cond_2
    sget p1, Lcom/amazon/notebook/module/R$id;->change_to_yellow:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected addAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V
    .locals 7

    .line 1382
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    const/4 v6, 0x0

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addNote(IIILjava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1383
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p3, "NotebookDialog"

    const-string v0, "SaveAddNoteButtonClicked"

    invoke-interface {p1, p3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->reloadView()V

    .line 1385
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method cancelBackgroundLoads(Landroid/view/View;)V
    .locals 2

    .line 1149
    sget v0, Lcom/amazon/notebook/module/R$id;->annotation_module_selection_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 1152
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_image_fetching_task:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1154
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1156
    :cond_0
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_image_fetching_task:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method createNote(Lcom/amazon/kcp/reader/Note;I)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 1301
    iget-object v0, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$layout;->notecard_edit_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1302
    sget v0, Lcom/amazon/notebook/module/R$id;->edit_note_text:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/EditText;

    const/4 v10, 0x0

    .line 1303
    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1304
    iget-object v0, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_0

    .line 1306
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1308
    :cond_0
    new-instance v13, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v0

    invoke-direct {v13, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1309
    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_add_note:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1310
    sget v14, Lcom/amazon/notebook/module/R$string;->save:I

    new-instance v15, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;

    iget-object v5, v6, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter$AddNoteDialogSaveButtonListener;-><init>(Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;)V

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1311
    sget v0, Lcom/amazon/notebook/module/R$string;->cancel:I

    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;

    invoke-direct {v1, v6, v7}, Lcom/amazon/notebook/module/NotebookArrayAdapter$15;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;I)V

    invoke-virtual {v13, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v13, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v13}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1324
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;

    move-object/from16 v2, p1

    invoke-direct {v1, v6, v2, v7, v9}, Lcom/amazon/notebook/module/NotebookArrayAdapter$16;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1332
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$17;

    invoke-direct {v1, v6}, Lcom/amazon/notebook/module/NotebookArrayAdapter$17;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1342
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1344
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    invoke-virtual {v0, v12}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1348
    :cond_1
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$18;

    invoke-direct {v1, v6, v0, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter$18;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroidx/appcompat/app/AlertDialog;Z)V

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1365
    invoke-direct {v6, v11, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method editNote(Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILjava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1212
    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logEditNote()V

    .line 1215
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook"

    const-string v2, "EditAnnotation"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$layout;->notecard_module_edit_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1218
    sget v0, Lcom/amazon/notebook/module/R$id;->edit_note_module_text:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    const/4 v12, 0x0

    .line 1219
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1220
    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v13

    const/4 v14, -0x1

    if-eqz v13, :cond_1

    .line 1222
    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1224
    :cond_1
    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1226
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    :cond_3
    :goto_0
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1230
    new-instance v15, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getActivity()Lcom/amazon/notebook/module/NotebookActivity;

    move-result-object v0

    invoke-direct {v15, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1231
    sget v0, Lcom/amazon/notebook/module/R$string;->annotation_actions_menu_edit_note:I

    invoke-virtual {v15, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1232
    sget v7, Lcom/amazon/notebook/module/R$string;->save:I

    new-instance v6, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;

    iget-object v5, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->highlightToNoteMappings:Ljava/util/Map;

    iget-object v4, v8, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookNoteActionMetric:Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;

    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v16, v4

    move-object v4, v11

    move-object v12, v6

    move-object/from16 v6, v16

    move v14, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookArrayAdapter$NoteEditDialogSaveButtonListener;-><init>(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;Landroid/widget/EditText;Ljava/util/Map;Lcom/amazon/notebook/module/metrics/NotebookNoteActionMetric;Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v15, v14, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1233
    sget v0, Lcom/amazon/notebook/module/R$string;->cancel:I

    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$10;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/NotebookArrayAdapter$10;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v15, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1240
    sget v6, Lcom/amazon/notebook/module/R$string;->delete:I

    new-instance v7, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter$11;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v15, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1248
    invoke-virtual {v15, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {v15}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1252
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;

    move/from16 v2, p3

    invoke-direct {v1, v8, v9, v2, v11}, Lcom/amazon/notebook/module/NotebookArrayAdapter$12;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;ILandroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1264
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$13;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/NotebookArrayAdapter$13;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1274
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1276
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    .line 1277
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1280
    :cond_4
    new-instance v1, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;

    invoke-direct {v1, v8, v0, v13}, Lcom/amazon/notebook/module/NotebookArrayAdapter$14;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroidx/appcompat/app/AlertDialog;Z)V

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1297
    invoke-direct {v8, v13, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public getHighlightCoveringNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/Note;
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 395
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 396
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHighlightIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/Note;

    add-int/lit8 v2, v2, 0x1

    .line 378
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 379
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne v4, v3, :cond_0

    return v2

    :cond_1
    return v1
.end method

.method getNoteHighlightColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "blue"

    .line 1199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0x6a2f11

    return p1

    :cond_0
    const-string/jumbo v0, "orange"

    .line 1202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, -0x4d9a

    return p1

    :cond_1
    const-string/jumbo v0, "pink"

    .line 1205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, -0x4d4e

    return p1

    :cond_2
    const p1, -0xa1ca5

    return p1
.end method

.method getNoteStripColor(Lcom/amazon/kcp/reader/Note;)I
    .locals 0

    .line 1453
    invoke-static {p1}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getNoteHighlightColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    .line 418
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    .line 419
    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/Note;

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 420
    :goto_0
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getTOCLabels(Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v5

    .line 421
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v2, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v6

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v7, v1

    .line 423
    invoke-direct/range {v2 .. v7}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setupNotesListView(Landroid/view/View;ILcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;Lcom/amazon/kcp/reader/Note;)Landroid/view/View;

    move-result-object p2

    .line 425
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne p1, v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 427
    sget-object v5, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_MENU_POPULATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v5}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    :cond_1
    sget v2, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_left_marker:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 432
    new-instance v5, Lcom/amazon/notebook/module/NotebookArrayAdapter$1;

    invoke-direct {v5, p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$1;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    :cond_2
    sget v2, Lcom/amazon/notebook/module/R$id;->notecard_module_ruby_body:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 445
    new-instance v5, Lcom/amazon/notebook/module/NotebookArrayAdapter$2;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$2;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v5

    .line 457
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_4

    .line 458
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/amazon/notebook/module/R$string;->notes_graphical_highlight_description:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 461
    :cond_4
    invoke-direct {p0, v1, v5}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->getContentDescriptionOverlay(Lcom/amazon/kcp/reader/Note;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 464
    :cond_5
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_type:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 466
    new-instance v5, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_6
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_type_location_separator:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 476
    new-instance v5, Lcom/amazon/notebook/module/NotebookArrayAdapter$4;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$4;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :cond_7
    sget v2, Lcom/amazon/notebook/module/R$id;->annotation_module_ruby_location_marker:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 486
    new-instance v5, Lcom/amazon/notebook/module/NotebookArrayAdapter$5;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$5;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    :cond_8
    sget p3, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_star_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 495
    sget v2, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_star_image_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_a

    .line 497
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    const/16 v1, 0x8

    .line 498
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x2

    .line 499
    invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 501
    :cond_9
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    .line 503
    new-instance v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;

    invoke-direct {v3, p0, v1, p3, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$6;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Lcom/amazon/kcp/reader/Note;Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return-object p2

    .line 519
    :catch_0
    sget-object p2, Lcom/amazon/notebook/module/NotebookArrayAdapter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to get note at position "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "notes length "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected hasNoteForExportToEmail()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 279
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->isExportableToEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected hasNoteForExportToFlashcards()Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 270
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->isExportableToFlashcards()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public indexOfNearestNoteBeforePosition(I)I
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/reader/Note;

    .line 291
    invoke-virtual {v6}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    if-le v6, p1, :cond_0

    goto :goto_1

    :cond_0
    sub-int v6, p1, v6

    if-ge v6, v3, :cond_1

    move v5, v4

    move v3, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v5, v1, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 303
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_3
    return v5
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->asyncGraphic:Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/AsyncGraphicForRange;->release()V

    return-void
.end method

.method reloadView()V
    .locals 0

    .line 1161
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected saveAndExit(Lcom/amazon/kcp/reader/Note;ILjava/lang/String;)V
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1373
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p3, "NotebookDialog"

    const-string v0, "SaveNoteButtonClicked"

    invoke-interface {p1, p3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->reloadView()V

    .line 1375
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method

.method setAnnotationActionMenu(Landroid/view/View;ILandroid/widget/RelativeLayout;)V
    .locals 7

    .line 853
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 854
    new-instance v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;-><init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILandroid/content/res/Resources;Landroid/view/View;Landroid/widget/RelativeLayout;)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setNotebookListEventHandler(Lcom/amazon/notebook/module/NotebookListEventHandler;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notebookListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    return-void
.end method

.method public startPopulating()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->insertStubNotesForHostApp()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 231
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 232
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter;->notes:Ljava/util/List;

    invoke-interface {v0, p0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
