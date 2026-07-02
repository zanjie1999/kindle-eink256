.class public Lcom/amazon/kcp/search/ReaderBookSearchResult;
.super Lcom/amazon/kcp/search/InBookContentSearchResult;
.source "ReaderBookSearchResult.java"


# instance fields
.field private final locationLabel:Ljava/lang/String;

.field private final snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;


# direct methods
.method protected constructor <init>(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/InBookContentSearchResult;-><init>(Lcom/amazon/android/docviewer/IPositionRange;)V

    .line 42
    iput-object p2, p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    .line 43
    iput-object p3, p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;->locationLabel:Ljava/lang/String;

    return-void
.end method

.method static buildLocationLabel(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IPositionRange;)Ljava/lang/String;
    .locals 5

    .line 151
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 155
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProviderForSearch()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 163
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p0

    .line 164
    sget p1, Lcom/amazon/kindle/krl/R$string;->reader_search_location:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 166
    :cond_1
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 167
    sget p0, Lcom/amazon/kindle/krl/R$string;->reader_search_article:I

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 169
    :cond_2
    sget p0, Lcom/amazon/kindle/krl/R$string;->reader_search_page:I

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static buildSnippet(Lcom/amazon/android/docviewer/BookSearchResult;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 5

    .line 104
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchOffset()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->getSearchUtils()Lcom/amazon/kindle/krx/search/ISearchUtils;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/search/ISearchUtils;->hasWhitespaceOrConsecutiveSpace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/search/ISearchUtils;->stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v0, v1

    move v1, v2

    .line 121
    :cond_1
    new-instance v2, Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;-><init>(Ljava/lang/CharSequence;)V

    if-lt v1, v0, :cond_2

    .line 124
    new-instance p0, Lcom/amazon/kindle/krx/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/krx/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, p0}, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->addContextualHighlight(Lcom/amazon/kindle/krx/Range;)V

    :cond_2
    return-object v2
.end method

.method public static createFromLegacyResult(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/BookSearchResult;)Lcom/amazon/kcp/search/ReaderBookSearchResult;
    .locals 3

    .line 57
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchStartPosition()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getSearchEndPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 60
    invoke-static {p1}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->buildSnippet(Lcom/amazon/android/docviewer/BookSearchResult;)Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object p1

    .line 61
    invoke-static {p0, v0}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->buildLocationLabel(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IPositionRange;)Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v1, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    invoke-direct {v1, v0, p1, p0}, Lcom/amazon/kcp/search/ReaderBookSearchResult;-><init>(Lcom/amazon/android/docviewer/IPositionRange;Lcom/amazon/kindle/krx/search/SearchResultSnippet;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getLocationLabel()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;->locationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;->snippet:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object v0
.end method
