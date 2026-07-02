.class public Lcom/amazon/notebook/module/NotebookNoteTools;
.super Ljava/lang/Object;
.source "NotebookNoteTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookNoteTools$Counter;,
        Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;
    }
.end annotation


# static fields
.field private static final SUBTOC_POSITION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TOC_POSITION:I


# instance fields
.field private final allTOCLabelsCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field

.field private filterOptionCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_context:Landroid/content/Context;

.field private final m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private themeProvider:Lcom/amazon/notebook/ThemeProvider;

.field private toc:Lcom/amazon/android/docviewer/IKindleTOC;

.field private final tocLabelCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookNoteTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Ljava/util/List;Lcom/amazon/notebook/ThemeProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/ThemeProvider;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->allTOCLabelsCache:Landroidx/collection/SparseArrayCompat;

    .line 45
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->tocLabelCache:Landroidx/collection/SparseArrayCompat;

    .line 54
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 56
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->annotations:Ljava/util/List;

    .line 58
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    return-void
.end method

.method private decrementCounter(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/NotebookNoteTools$Counter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 476
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->decrement()V

    :cond_0
    return-void
.end method

.method private filterNotesByChapters(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 113
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 119
    invoke-virtual {p0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v2

    .line 120
    iget-object v3, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_2
    iget-object v3, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p1
.end method

.method private getHierarchyPair(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->toc:Lcom/amazon/android/docviewer/IKindleTOC;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_1
    instance-of v1, v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-eqz v1, :cond_2

    .line 282
    check-cast v0, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getHierarchyForPosition(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 284
    :cond_2
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/android/docviewer/ITOCItem;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 285
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static getHighlightColor(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/notebook/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHighlightColorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 486
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "pink"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "blue"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "yellow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "orange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    return-object v0

    .line 494
    :cond_2
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_orange:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 492
    :cond_3
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_blue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :cond_4
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_pink:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 488
    :cond_5
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_yellow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c21d9d2 -> :sswitch_3
        -0x2bc39b8c -> :sswitch_2
        0x2e305a -> :sswitch_1
        0x348176 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHighlightNoteMappings(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/Note;",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 505
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/Note;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_2

    .line 508
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    :cond_1
    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v4, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v3, :cond_3

    goto :goto_0

    .line 520
    :cond_3
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    .line 521
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 522
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    if-lt v7, v6, :cond_5

    if-gt v8, v6, :cond_5

    .line 523
    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 524
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 526
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 529
    :cond_4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPreferredPositionLabel(I)Ljava/lang/String;
    .locals 4

    .line 304
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getPageLabelFromPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/notebook/module/R$string;->book_menu_notes_page_type:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->suppressLocations()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 315
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getLocationFromPosition(I)I

    move-result p1

    .line 316
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/notebook/module/R$string;->book_menu_notes_location_type:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private incrementCounter(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/notebook/module/NotebookNoteTools$Counter;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 467
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;-><init>(Lcom/amazon/notebook/module/NotebookNoteTools$1;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->increment()V

    :goto_0
    return-void
.end method

.method private isNoteInRange(Lcom/amazon/kcp/reader/Note;)Z
    .locals 0

    .line 361
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method filterNotesByNotebookFilters(Ljava/util/List;Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Lcom/amazon/notebook/module/CompositeNotebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightNoteMappings(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 134
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->isStarredAnnotationFiltered()Z

    move-result v2

    .line 135
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getFilteredAnnotationTypes()Ljava/util/Set;

    move-result-object v3

    .line 136
    invoke-virtual {p2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getFilteredHighlightColors()Ljava/util/Set;

    move-result-object p2

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/Note;

    .line 139
    invoke-direct {p0, v4}, Lcom/amazon/notebook/module/NotebookNoteTools;->isNoteInRange(Lcom/amazon/kcp/reader/Note;)Z

    move-result v5

    .line 140
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 141
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/notebook/AnnotationUtils;->isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result v7

    .line 143
    invoke-static {v4}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColor(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 144
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v2, :cond_2

    if-eqz v7, :cond_0

    :cond_2
    if-nez v6, :cond_3

    if-eqz v8, :cond_0

    .line 147
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;
    .locals 5

    if-nez p1, :cond_0

    .line 200
    new-instance p1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    invoke-direct {p1, p0}, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/notebook/module/NotebookNoteTools;)V

    return-object p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->allTOCLabelsCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    if-eqz v0, :cond_1

    return-object v0

    .line 207
    :cond_1
    new-instance v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    invoke-direct {v0, p0}, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/notebook/module/NotebookNoteTools;)V

    .line 209
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 210
    invoke-direct {p0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getPreferredPositionLabel(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v3, Lcom/amazon/notebook/module/R$string;->front_matter:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 213
    invoke-direct {p0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHierarchyPair(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 215
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 217
    iput-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 220
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iput-object v3, v0, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    .line 223
    :cond_5
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->allTOCLabelsCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method getChapterList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/Note;

    .line 88
    invoke-virtual {p0, v2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v2

    .line 89
    iget-object v3, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 90
    iget-object v4, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 91
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    iget-object v2, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    iget-object v2, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getFilterCount()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 379
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->filterOptionCount:Ljava/util/Map;

    if-eqz v1, :cond_0

    return-object v1

    .line 383
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string/jumbo v13, "pink"

    const-string v14, "blue"

    const-string/jumbo v15, "yellow"

    const-string/jumbo v3, "orange"

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/kcp/reader/Note;

    move-object/from16 v17, v2

    .line 395
    invoke-virtual {v12}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-eq v2, v1, :cond_8

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_1

    const/4 v1, 0x7

    if-eq v2, v1, :cond_2

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 398
    :cond_2
    invoke-static {v12}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColor(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    const/4 v2, 0x3

    sparse-switch v19, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v18, v1

    add-int/lit8 v4, v4, 0x1

    .line 412
    :goto_4
    invoke-virtual {v0, v12}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v1

    .line 413
    iget-object v2, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v12, v18

    .line 414
    invoke-direct {v0, v12, v2}, Lcom/amazon/notebook/module/NotebookNoteTools;->incrementCounter(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object/from16 v12, v18

    .line 415
    iget-object v1, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 416
    invoke-direct {v0, v12, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->incrementCounter(Ljava/util/Map;Ljava/lang/String;)V

    :cond_b
    :goto_5
    move-object v1, v12

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_c
    move-object v12, v1

    .line 420
    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightNoteMappings(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/Note;

    .line 423
    invoke-virtual {v0, v2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getAllTOCLabels(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    move-result-object v2

    move-object/from16 v16, v1

    .line 425
    iget-object v1, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 426
    invoke-direct {v0, v12, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->decrementCounter(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_7

    .line 427
    :cond_d
    iget-object v1, v2, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 428
    invoke-direct {v0, v12, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->decrementCounter(Ljava/util/Map;Ljava/lang/String;)V

    :cond_e
    :goto_7
    move-object/from16 v1, v16

    goto :goto_6

    .line 432
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 433
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object/from16 v16, v2

    .line 434
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;

    invoke-virtual {v12}, Lcom/amazon/notebook/module/NotebookNoteTools$Counter;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v16

    goto :goto_8

    .line 437
    :cond_10
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v12, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-direct {v0, v15}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-direct {v0, v13}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-direct {v0, v14}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-direct {v0, v3}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHighlightColorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_bookmark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_notes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v2, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_phl_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iput-object v1, v0, Lcom/amazon/notebook/module/NotebookNoteTools;->filterOptionCount:Ljava/util/Map;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3c21d9d2 -> :sswitch_3
        -0x2bc39b8c -> :sswitch_2
        0x2e305a -> :sswitch_1
        0x348176 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/notebook/module/CompositeNotebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->filterNotesByChapters(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->filterNotesByNotebookFilters(Ljava/util/List;Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getLocationFromPosition(I)I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    return p1
.end method

.method getPageLabelFromPosition(I)Ljava/lang/String;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/amazon/notebook/module/NotebookNoteTools;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method getTOC(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    sget-object p1, Lcom/amazon/notebook/module/NotebookNoteTools;->TAG:Ljava/lang/String;

    const-string v0, "No doc viewer found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTOCLabels(Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;
    .locals 8

    if-nez p1, :cond_0

    .line 229
    new-instance p1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    invoke-direct {p1, p0}, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/notebook/module/NotebookNoteTools;)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->tocLabelCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    if-eqz v1, :cond_2

    return-object v1

    .line 238
    :cond_2
    new-instance v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;-><init>(Lcom/amazon/notebook/module/NotebookNoteTools;)V

    const/4 v4, 0x0

    if-nez p2, :cond_3

    .line 244
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v5, Lcom/amazon/notebook/module/R$string;->front_matter:I

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    move-object p2, v4

    move-object v5, p2

    move-object v6, v5

    goto :goto_2

    .line 246
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 247
    invoke-direct {p0, p2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getPreferredPositionLabel(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-direct {p0, p2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHierarchyPair(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v6}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v4

    .line 251
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v4

    goto :goto_2

    :cond_6
    move-object p2, v4

    move-object v6, p2

    .line 255
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 256
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getPreferredPositionLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-direct {p0, v7, v5}, Lcom/amazon/notebook/module/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->pagePosition:Ljava/lang/String;

    .line 260
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getHierarchyPair(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v4

    .line 263
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v2, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    :cond_8
    if-eqz v3, :cond_9

    .line 265
    invoke-direct {p0, v3, v6}, Lcom/amazon/notebook/module/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->tocPosition:Ljava/lang/String;

    .line 267
    :cond_9
    invoke-direct {p0, v4, p2}, Lcom/amazon/notebook/module/NotebookNoteTools;->getLabelIfChanged(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/amazon/notebook/module/NotebookNoteTools$PositionHierarchy;->subTocPosition:Ljava/lang/String;

    .line 270
    :cond_a
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->tocLabelCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public resetAnnotations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)V"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->annotations:Ljava/util/List;

    const/4 p1, 0x0

    .line 375
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->filterOptionCount:Ljava/util/Map;

    return-void
.end method

.method toggleStar(Lcom/amazon/kcp/reader/Note;)V
    .locals 3

    .line 185
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logStarToggled(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/NotebookNoteTools;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to KRXIAnnotation.AnnotationType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookListEventHandler;->getLogNameForType(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {v0, v1, p1}, Lcom/amazon/notebook/AnnotationUtils;->toggleAnnotationStar(Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 194
    sget-object p1, Lcom/amazon/notebook/module/NotebookNoteTools;->TAG:Ljava/lang/String;

    const-string v0, "Failed toggling favorite status on a highlight"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method updateStarImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/Note;)V
    .locals 2

    .line 166
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/notebook/AnnotationUtils;->isStarred(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    .line 170
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {p2}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 171
    sget p2, Lcom/amazon/notebook/module/R$drawable;->notebook_star_on_dark_ruby:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    :cond_1
    sget p2, Lcom/amazon/notebook/module/R$drawable;->notebook_star_on_ruby:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_0
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_starred:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto :goto_1

    .line 178
    :cond_2
    sget p2, Lcom/amazon/notebook/module/R$drawable;->notebook_star_off_ruby:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookNoteTools;->m_context:Landroid/content/Context;

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_not_starred:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :goto_1
    return-void
.end method
