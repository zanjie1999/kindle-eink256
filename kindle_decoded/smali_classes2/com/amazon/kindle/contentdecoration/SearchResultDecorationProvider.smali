.class public Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;
.super Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;
.source "SearchResultDecorationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final highlightDecorationStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final underlineDecorationStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final underlineWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->highlightDecorationStyles:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->underlineDecorationStyles:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_search_in_book_underline_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->underlineWidth:F

    return-void
.end method

.method private getHighlightDecorationStyle(I)Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->highlightDecorationStyles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/ContentDecorationStyle;

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSearchHighlightColor()I

    move-result v1

    .line 154
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createContentDecorationStyle(II)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->highlightDecorationStyles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getSearchDecorations(IIILcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 92
    invoke-direct {p0, p3}, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->getHighlightDecorationStyle(I)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object p3

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->getUnderlineDecorationStyle()Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 98
    invoke-virtual {p4}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v6

    .line 100
    invoke-virtual {p3}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v7

    if-ne v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v3, :cond_2

    if-eqz p4, :cond_3

    .line 102
    invoke-virtual {p4}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p4

    .line 104
    invoke-virtual {v3}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v7

    if-ne p4, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 107
    instance-of v4, v2, Lcom/amazon/kcp/search/InBookContentSearchResult;

    if-eqz v4, :cond_4

    .line 108
    check-cast v2, Lcom/amazon/kcp/search/InBookContentSearchResult;

    .line 110
    invoke-virtual {v2}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    .line 111
    invoke-virtual {v2}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSearchDecorations() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-gt v4, p2, :cond_4

    if-gt p1, v2, :cond_4

    .line 117
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 118
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 119
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v4

    .line 120
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v2

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 122
    new-instance v5, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v5, v4, v2}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 123
    new-instance v2, Lcom/amazon/krf/platform/ContentDecoration;

    invoke-direct {v2, v5, p3}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 125
    new-instance v4, Lcom/amazon/krf/platform/ContentDecoration;

    invoke-direct {v4, v5, v3}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)V

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private getUnderlineDecorationStyle()Lcom/amazon/krf/platform/ContentDecorationStyle;
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSearchUnderlineColor()I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->underlineDecorationStyles:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/ContentDecorationStyle;

    if-nez v2, :cond_1

    .line 177
    iget v2, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->underlineWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createUnderlineStyle(IF)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->underlineDecorationStyles:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    const-string v0, "SearchResultDecorationProvider.getContentDecorations"

    const/4 v1, 0x1

    .line 49
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    long-to-int p1, v3

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const p1, 0x7fffffff

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getTextColor()I

    move-result v1

    .line 58
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v3

    sget-object v4, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    .line 59
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 p2, 0x0

    .line 63
    :cond_1
    invoke-direct {p0, v2, p1, v1, p2}, Lcom/amazon/kindle/contentdecoration/SearchResultDecorationProvider;->getSearchDecorations(IIILcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    invoke-static {v0, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1
.end method
