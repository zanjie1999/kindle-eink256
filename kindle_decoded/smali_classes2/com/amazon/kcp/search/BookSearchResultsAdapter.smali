.class public Lcom/amazon/kcp/search/BookSearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;,
        Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;,
        Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;
    }
.end annotation


# static fields
.field private static final RESULT_CONTEXT_LINES:I = 0x2


# instance fields
.field private cachedPaint:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedResultText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            "Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;",
            ">;"
        }
    .end annotation
.end field

.field private cachedResultTextViewDimension:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLocationMarker:Lcom/amazon/android/docviewer/BookSearchResult;

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field protected final resultComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field protected final results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field protected searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

.field private tooManyResultsMarker:Lcom/amazon/android/docviewer/BookSearchResult;

.field protected final whiteSpacePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Z)V
    .locals 1

    .line 174
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedPaint:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedResultTextViewDimension:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedResultText:Ljava/util/Map;

    const-string v0, "\\s"

    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->whiteSpacePattern:Ljava/util/regex/Pattern;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;-><init>(Lcom/amazon/kcp/search/BookSearchResultsAdapter;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->resultComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->tooManyResultsMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    .line 175
    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    .line 176
    iput-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 178
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result p1

    if-eqz p3, :cond_0

    .line 181
    iget-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAtLocationText(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    sget p3, Lcom/amazon/kindle/krl/R$string;->reader_search_current_location_relative:I

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 185
    :goto_0
    new-instance p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p1, v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    iput-object p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->currentLocationMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    return-void
.end method

.method private findNearestWordBreak(Ljava/lang/String;IZZ)I
    .locals 2

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int p2, p1, p2

    :goto_0
    return p2

    :cond_2
    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_1
    if-gt p4, p2, :cond_5

    if-eqz p3, :cond_3

    move v1, p4

    goto :goto_2

    .line 600
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x1

    .line 601
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, p4

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private getOrResetCachedValue(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 567
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected addCurrentLocationMarker()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->readyToDisplayResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->currentLocationMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->addCurrentLocationMarker()V

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->resultComparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public appendTooManyResultsLabel(I)V
    .locals 5

    .line 230
    new-instance v0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_search_narrow_your_search:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1, v4}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->tooManyResultsMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->tooManyResultsMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected generateResultTextValue(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/text/TextPaint;Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;)Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;
    .locals 11

    .line 454
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->max_search_result_string_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 475
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchOffset()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 479
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchOffset()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 482
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchOffset()I

    move-result v6

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    .line 480
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 478
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v2, 0x3

    .line 489
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 490
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    div-float v6, p2, v6

    .line 499
    iget v7, p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    iget v8, p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    sub-int/2addr v7, v8

    iget v8, p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float v9, v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v9, v9, v10

    float-to-double v9, v9

    .line 501
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    cmpl-float p2, p2, v7

    if-lez p2, :cond_6

    .line 504
    iget-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 505
    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 506
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 507
    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 508
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez v5, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 511
    :goto_3
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    sub-float/2addr v7, v5

    div-float/2addr v7, v6

    float-to-double v5, v7

    .line 514
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v5, v5, -0x3

    .line 512
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 519
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v7

    add-int/2addr v7, v2

    sub-int/2addr v6, v7

    .line 520
    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v5, v7

    if-le v7, v2, :cond_4

    .line 527
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr v7, v2

    add-int/2addr v5, v7

    .line 526
    invoke-direct {p0, v3, v5, v1, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->findNearestWordBreak(Ljava/lang/String;IZZ)I

    move-result v6

    move p2, v2

    goto :goto_4

    :cond_4
    if-le v5, v6, :cond_5

    .line 532
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v5, v6

    add-int/2addr v7, v5

    invoke-direct {p0, v1, v7, v3, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->findNearestWordBreak(Ljava/lang/String;IZZ)I

    move-result p2

    goto :goto_4

    .line 536
    :cond_5
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7, v3, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->findNearestWordBreak(Ljava/lang/String;IZZ)I

    move-result v3

    .line 539
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 538
    invoke-direct {p0, v6, v5, v1, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->findNearestWordBreak(Ljava/lang/String;IZZ)I

    move-result v6

    move p2, v3

    .line 543
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, v2, p2

    .line 545
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    .line 544
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, p2, 0x3

    .line 549
    :cond_6
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 550
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getTextHighlightColor()I

    move-result v0

    .line 551
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 552
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getMatchLength()I

    move-result p1

    add-int/2addr p1, v5

    const/16 v0, 0x21

    .line 551
    invoke-virtual {p2, v1, v5, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 553
    new-instance p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;

    invoke-direct {p1, p3, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;-><init>(Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;Landroid/text/SpannableString;)V

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 278
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 279
    instance-of v0, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    if-eqz v0, :cond_1

    .line 280
    check-cast p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    iget-boolean p1, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;->isSectionHeader:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getResultCount()I
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 248
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->tooManyResultsMarker:Lcom/amazon/android/docviewer/BookSearchResult;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 253
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getChapterHeaderCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getTextHighlightColor()I
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->amazon_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/android/docviewer/BookSearchResult;

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/LayoutInflater;

    .line 305
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p1

    .line 324
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getViewForSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown item type passed to getView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    .line 312
    sget p1, Lcom/amazon/kindle/krl/R$layout;->reader_search_label:I

    const/4 p2, 0x0

    invoke-virtual {v5, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 315
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$id;->reader_search_label_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 316
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, p3}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-object p1, p2

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p1

    .line 329
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getViewForResultType(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getViewForResultType(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 349
    sget p2, Lcom/amazon/kindle/krl/R$layout;->reader_search_result_item:I

    const/4 p5, 0x0

    invoke-virtual {p4, p2, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 352
    :cond_0
    sget p4, Lcom/amazon/kindle/krl/R$id;->result_text:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    .line 356
    iget-object p5, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p4, p5}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    .line 359
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p5, p3

    .line 360
    invoke-virtual {p0, p4, p5, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->setHighlightedResultText(Landroid/widget/TextView;ILcom/amazon/android/docviewer/BookSearchResult;)V

    .line 364
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->searchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p3}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->shouldDisplayLocation()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 365
    sget p3, Lcom/amazon/kindle/krl/R$id;->location_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 366
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result p4

    .line 367
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getLocation()I

    move-result p1

    .line 368
    iget-object p5, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p5, p4, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchLocationText(II)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method protected getViewForSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 377
    sget p2, Lcom/amazon/kindle/krl/R$layout;->reader_search_header:I

    const/4 p5, 0x0

    invoke-virtual {p4, p2, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 380
    :cond_0
    sget p3, Lcom/amazon/kindle/krl/R$id;->reader_search_header_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 381
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected prepareHighlightedResultText(Landroid/text/TextPaint;IIILcom/amazon/android/docviewer/BookSearchResult;)Landroid/text/SpannableString;
    .locals 1

    .line 427
    new-instance v0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    invoke-direct {v0, p2, p3, p4}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;-><init>(III)V

    .line 429
    iget-object p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedResultTextViewDimension:Ljava/util/concurrent/atomic/AtomicReference;

    .line 430
    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->isSet()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 429
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getOrResetCachedValue(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    .line 432
    iget-object p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedResultText:Ljava/util/Map;

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;

    if-eqz p3, :cond_1

    .line 433
    iget-object v0, p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;->dimension:Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 435
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedPaint:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getOrResetCachedValue(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 439
    invoke-virtual {p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->isSet()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 440
    invoke-virtual {p0, p5, p1, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->generateResultTextValue(Lcom/amazon/android/docviewer/BookSearchResult;Landroid/text/TextPaint;Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;)Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;

    move-result-object p1

    move-object p3, p1

    goto :goto_1

    :cond_2
    move-object p3, p4

    .line 442
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->cachedResultText:Ljava/util/Map;

    invoke-interface {p1, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez p3, :cond_4

    goto :goto_2

    .line 445
    :cond_4
    iget-object p4, p3, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextCacheValue;->text:Landroid/text/SpannableString;

    :goto_2
    return-object p4
.end method

.method public prepareHighlightedResultText(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 403
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->prepareHighlightedResultText(Landroid/text/TextPaint;IIILcom/amazon/android/docviewer/BookSearchResult;)Landroid/text/SpannableString;

    return-void
.end method

.method protected setHighlightedResultText(Landroid/widget/TextView;ILcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 6

    .line 398
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    .line 398
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->prepareHighlightedResultText(Landroid/text/TextPaint;IIILcom/amazon/android/docviewer/BookSearchResult;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
