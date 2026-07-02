.class public final Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;
.super Ljava/lang/Object;
.source "RecapsMarginalDataHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
.implements Lcom/amazon/kindle/rendering/IBookPageMarginalHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

.field private mColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

.field private mContext:Landroid/content/Context;

.field private mFooterContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

.field private mFooterContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mContext:Landroid/content/Context;

    .line 29
    const-class p1, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(RecapsMargi\u2026lDataHandler::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized getOrCreateTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getToc()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const-string p3, "footers"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "type"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    .line 222
    iput-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getBookEndPosition()I
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 53
    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 4

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0
.end method

.method public getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    const-string v0, "colorMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/krf/platform/ViewSettings;->getColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDocView()Landroid/view/View;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;-><init>()V

    .line 130
    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;->setMarginalContentProviderContext(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    .line 131
    iput-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    return-object v0
.end method

.method public getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/amazon/android/docviewer/mobi/FooterContentType;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;-><init>(Lcom/amazon/kcp/application/UserSettingsController;)V

    .line 140
    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_RECAPS:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->setType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)V

    .line 141
    iput-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mFooterContentType:Lcom/amazon/android/docviewer/mobi/FooterContentType;

    return-object v0
.end method

.method public getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNextChapterPosition(I)I
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getOrCreateTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/android/docviewer/IBookTOC;

    .line 58
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getNextChapterPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IBookTOC;->getTOCChapters()Ljava/util/List;

    move-result-object v2

    .line 64
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IChapterTOCItem;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getBookEndPosition()I

    move-result v1

    :cond_0
    return v1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.android.docviewer.IBookTOC"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumWordsBetweenPositions(III)I
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Lcom/amazon/krf/platform/KRFBookInfo;->getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_5

    .line 79
    new-instance v3, Lcom/amazon/kindle/search/KRIFWordIterator;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5, v2}, Lcom/amazon/kindle/search/KRIFWordIterator;-><init>(Lcom/amazon/krf/platform/KRFBook;JLcom/amazon/krf/platform/ViewSettings$ReadingMode;)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/search/KRIFWordIterator;->gotoPosition(I)V

    .line 83
    invoke-virtual {v3}, Lcom/amazon/kindle/search/KRIFWordIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_2
    if-eqz p1, :cond_4

    .line 85
    iget p1, p1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-gt p1, p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 87
    invoke-virtual {v3}, Lcom/amazon/kindle/search/KRIFWordIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne v0, p3, :cond_3

    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/kindle/search/KRIFWordIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p1

    goto :goto_2

    .line 93
    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/amazon/kindle/search/KRIFWordIterator;->close()V

    return v0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public getPageEndPosition()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 40
    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageStartPosition()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 46
    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 164
    invoke-static {v0}, Lcom/amazon/kindle/util/ReadingModeUtil;->fromKRFReadingMode(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/kindle/dualreadingmode/ReadingMode;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSettings()Lcom/amazon/krf/platform/ViewSettings;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getSettings()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasTOC()Z
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->getOrCreateTOCIfNeeded()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public performFooterGestureActionsFromProviders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reloadCurrentPageMarginals()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/rendering/RecapsMarginalDataHandler;->mBookViewController:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->getKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->reloadCurrentPageMarginals()V

    :cond_0
    return-void
.end method

.method public userLocationFromPosition(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
