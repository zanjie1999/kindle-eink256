.class public Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;
.super Ljava/lang/Object;
.source "NotebookSearchAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final METRICS_METADATA_KEY_HIGHLIGHT_RESULTS:Ljava/lang/String; = "HIGHLIGHT_RESULTS"

.field private static final METRICS_METADATA_KEY_NOTE_RESULTS:Ljava/lang/String; = "NOTE_RESULTS"

.field private static final METRICS_METADATA_KEY_TOTAL_HIGHLIGHTS:Ljava/lang/String; = "TOTAL_HIGHLIGHTS"

.field private static final METRICS_METADATA_KEY_TOTAL_NOTES:Ljava/lang/String; = "TOTAL_NOTES"

.field private static final NOTEBOOK_ADAPTER_KEY:Ljava/lang/String; = "NOTEBOOK"

.field private static final TAG:Ljava/lang/String;

.field private static final highContrastColorResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->TAG:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->createHighContrastColorResourceMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->highContrastColorResources:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method private static createHighContrastColorResourceMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    sget-object v1, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->BLUE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v2, Lcom/amazon/kindle/krl/R$color;->notebook_search_highlight_blue_dark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v1, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->PINK:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v2, Lcom/amazon/kindle/krl/R$color;->notebook_search_highlight_pink_dark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->ORANGE:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v2, Lcom/amazon/kindle/krl/R$color;->notebook_search_highlight_orange_dark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v1, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->YELLOW:Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    sget v2, Lcom/amazon/kindle/krl/R$color;->notebook_search_highlight_yellow_dark:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private createNoteViewBuilder(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;ILcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;Landroid/content/Context;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 1

    .line 274
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v0

    invoke-interface {v0, p5, p4}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p4

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {p0, p1, p5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->getPageLabel(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget p1, Lcom/amazon/kindle/krl/R$string;->notebook_search_view_footer_note:I

    invoke-virtual {p5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {p4, p2, p3}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method private createViewBuilderForHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Ljava/util/List;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/content/Context;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Lcom/amazon/kindle/krx/search/SearchResultSnippet;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            "Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            "Landroid/content/Context;",
            ")",
            "Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;"
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v0

    invoke-interface {v0, p7, p4}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->notebook_search_highlight_text_max_lines:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 156
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 157
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v2, v3, p7}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->getHighlightFooter(IILandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColorHighlightProperties(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object p1

    .line 162
    sget-object v3, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p6, v3, :cond_1

    .line 163
    sget-object p6, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->highContrastColorResources:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 164
    sget-object p6, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->highContrastColorResources:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 166
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$color;->notebook_search_highlight_yellow_dark:I

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getWhiteModeColorResId()I

    move-result p1

    .line 171
    :goto_0
    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 173
    invoke-interface {v0, p2, v1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    .line 174
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    .line 175
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setDecoratorColor(I)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2

    .line 179
    invoke-virtual {p4}, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;->getChildResults()Ljava/util/List;

    move-result-object p1

    .line 181
    :cond_2
    invoke-virtual {p0, p1, p3, p5, p7}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->getChildNoteViews(Ljava/util/List;Ljava/util/List;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 183
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setChildResults(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method private getHighlightFooter(IILandroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->getPageLabel(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    .line 203
    sget p1, Lcom/amazon/kindle/krl/R$string;->notebook_search_view_footer_highlight:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 205
    sget p1, Lcom/amazon/kindle/krl/R$string;->notebook_search_view_footer_combined_single_note:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    .line 207
    sget p1, Lcom/amazon/kindle/krl/R$string;->notebook_search_view_footer_combined_multiple_notes:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getPageLabel(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 447
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 452
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 457
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 458
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 459
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 460
    sget v0, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_page_type:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 463
    :cond_2
    sget v1, Lcom/amazon/kindle/krl/R$string;->book_menu_notes_location_type:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    .line 464
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 463
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSearchHitRangesForHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/Collection;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 360
    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 362
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 364
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v2

    .line 365
    new-instance v3, Ljava/util/TreeSet;

    new-instance v4, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$SortRangeByLower;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter$1;)V

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 366
    invoke-virtual {v3, p2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 367
    invoke-virtual {v3}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/Range;

    .line 369
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 370
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_0
    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 386
    iget v9, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    .line 387
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v10

    invoke-interface {v10}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v10

    if-gt v9, v10, :cond_4

    .line 390
    iget-object v9, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    .line 392
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 393
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 394
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 399
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 400
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 399
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    .line 403
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v8, v9

    .line 406
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v8, :cond_2

    if-ne v7, v6, :cond_2

    .line 408
    iget v7, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    :cond_2
    if-eq v7, v6, :cond_3

    .line 411
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v8, :cond_3

    .line 412
    new-instance p2, Lcom/amazon/android/docviewer/IntPositionRange;

    iget v4, v4, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    invoke-direct {p2, v7, v4}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v3}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/Range;

    const/4 v7, -0x1

    .line 416
    :cond_3
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    .line 417
    invoke-interface {v1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v4

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public allowExtraResultToReplaceExpander()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public areSearchResultsDynamic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createSearchTask(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/ISearchTask;
    .locals 2

    .line 94
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;

    iget-object v1, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchTask;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V

    return-object v0
.end method

.method public getAdapterSpecificMetricsMetadata(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 329
    check-cast v3, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 330
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedNotes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 331
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedHighlights()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 332
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getTotalNotes()I

    move-result v4

    .line 333
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getTotalHighlights()I

    move-result v3

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "NOTE_RESULTS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "HIGHLIGHT_RESULTS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "TOTAL_NOTES"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "TOTAL_HIGHLIGHTS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getChildNoteViews(Ljava/util/List;Ljava/util/List;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;",
            "Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->notebook_search_single_notes_text_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 232
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v2, v1, :cond_0

    .line 233
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->notebook_search_multiple_notes_text_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 237
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->notebook_search_max_combined_note_results:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 239
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    if-ge v9, v8, :cond_2

    .line 240
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v1, 0x0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_1

    .line 243
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    :cond_1
    move-object v5, v1

    .line 246
    invoke-virtual {p3, v2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v3

    move-object v1, p0

    move v4, v0

    move-object v6, p4

    .line 245
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->createNoteViewBuilder(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;ILcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;Landroid/content/Context;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    move-result-object v1

    .line 248
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "NOTEBOOK"

    return-object v0
.end method

.method public getMaximumSearchResultsBeforeExpander()I
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->notebook_search_max_results_before_expander:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 88
    sget v0, Lcom/amazon/kindle/krl/R$string;->notebook_search_provider_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeForResult(Lcom/amazon/kindle/krx/search/ISearchResult;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResultClicked(Lcom/amazon/kindle/krx/search/ISearchResult;)Z
    .locals 7

    .line 285
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    .line 287
    check-cast p1, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedHighlights()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedHighlights()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 295
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v5

    .line 296
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_1

    .line 299
    invoke-virtual {v5}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->getContextualHighlightRanges()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->getSearchHitRangesForHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/IPositionRange;

    .line 303
    new-instance v6, Lcom/amazon/kcp/search/InBookContentSearchResult;

    invoke-direct {v6, v5}, Lcom/amazon/kcp/search/InBookContentSearchResult;-><init>(Lcom/amazon/android/docviewer/IPositionRange;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->noteHasSearchHit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    new-instance v0, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedNotes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    .line 312
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSearchResults(Ljava/util/List;)V

    :cond_4
    return v3
.end method

.method public prepareForSearch()V
    .locals 0

    return-void
.end method

.method public viewForSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;Landroid/view/View;Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 12

    .line 101
    move-object v5, p1

    check-cast v5, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    .line 102
    move-object v10, p2

    check-cast v10, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    .line 103
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedHighlights()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getPrioritizedNotes()Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 114
    invoke-virtual {v5, v7}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v8

    .line 115
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->notebook_search_single_notes_text_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v6, p0

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->createNoteViewBuilder(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;ILcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;Landroid/content/Context;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 119
    invoke-virtual {v5, v1}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getSearchResultSnippetForAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object v2

    move-object v0, p0

    move-object v4, v10

    move-object/from16 v6, p4

    move-object v7, p3

    .line 121
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/notebook/NotebookSearchAdapter;->createViewBuilderForHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Ljava/util/List;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/content/Context;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object v0

    .line 125
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    move-result-object v0

    return-object v0
.end method
