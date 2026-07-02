.class public Lcom/amazon/klo/sidecar/SidecarHandler;
.super Ljava/lang/Object;
.source "SidecarHandler.java"


# static fields
.field private static final NO_CURRENT_PAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.sidecar.SidecarHandler"


# instance fields
.field private assetsObject:Lorg/json/JSONObject;

.field private cacheTerm:Lorg/json/JSONObject;

.field private cachedAssets:Lorg/json/JSONArray;

.field private chapterArray:Lorg/json/JSONArray;

.field private final currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private final currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private pageSelectorIndex:I

.field private sidecarJson:Lorg/json/JSONObject;

.field private termArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->cacheTerm:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->deserializePosition(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 106
    invoke-direct {p0, p2}, Lcom/amazon/klo/sidecar/SidecarHandler;->deserializePosition(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    if-nez p1, :cond_1

    .line 114
    iput-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 115
    iput-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    :goto_0
    return-void
.end method

.method private deserializePosition(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 4

    .line 744
    invoke-direct {p0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 750
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 753
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get positionFactory"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 759
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 760
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 764
    :catch_0
    sget-object v0, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a short position"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getAssetsForTerm(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 5

    .line 320
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->cacheTerm:Lorg/json/JSONObject;

    if-ne v0, p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->cachedAssets:Lorg/json/JSONArray;

    return-object p1

    :cond_0
    const-string v0, "assets"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 334
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 335
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, -0x1

    .line 337
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->assetsObject:Lorg/json/JSONObject;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_2
    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->cacheTerm:Lorg/json/JSONObject;

    .line 346
    iput-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->cachedAssets:Lorg/json/JSONArray;

    return-object v1
.end method

.method private getBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;
    .locals 3

    .line 771
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 773
    sget-object v0, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "No KRX!"

    invoke-static {v0, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 777
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 780
    sget-object v0, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get ReaderManager"

    invoke-static {v0, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 784
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 787
    sget-object v0, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get bookNavigator"

    invoke-static {v0, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getChapterAtSelectorIndex(I)Lorg/json/JSONObject;
    .locals 2

    .line 491
    iget v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    if-ltz p1, :cond_3

    .line 508
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private getChapterItemsByObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "start"

    .line 596
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "end"

    .line 597
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 596
    invoke-virtual {p0, v0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getTermsInRange(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 613
    invoke-virtual {p0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->generateTermListItem(Lorg/json/JSONObject;)Lcom/amazon/klo/list/TermListItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 601
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v0

    const-string v1, "Error getting term list for chapter"

    if-eqz v0, :cond_1

    .line 603
    sget-object v0, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    :cond_1
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPageListForTerm(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 4

    const-string v0, "locs"

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 232
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 233
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 236
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v1, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    .line 238
    invoke-direct {p0, v3}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPageListItemAt(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPageListItemAt(I)Lorg/json/JSONObject;
    .locals 4

    .line 249
    invoke-virtual {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getChapterForShortPosition(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    invoke-virtual {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->positionLabelForShortPosition(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "location"

    .line 256
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v3, "Cannot put page shortPosition on page list item"

    invoke-static {p1, v3}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    const-string/jumbo p1, "page"

    .line 266
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 270
    :catch_1
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v1, "Cannot put page label on page list item"

    invoke-static {p1, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    const-string p1, "chapter"

    const-string v1, "name"

    .line 278
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 282
    :catch_2
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot put chapter title on page list item"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v2
.end method

.method private getPositionLabel(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 799
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 800
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->isPageNumberingSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 804
    :try_start_0
    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->getPageForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/IPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 807
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/amazon/klo/R$string;->klo_position_label_page_format:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    .line 808
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPage;->getPageLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 807
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 813
    :catch_0
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string p2, "PageNumberManager is failing to return page labels"

    invoke-static {p1, p2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 821
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/klo/R$string;->klo_position_label_location_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 822
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/content/IBookContent;->getLocationFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 821
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public generateTermListItem(Lorg/json/JSONObject;)Lcom/amazon/klo/list/TermListItem;
    .locals 4

    const-string v0, ".XrayDetailedDefinitionAsset"

    const-string v1, ".XrayCardAsset"

    .line 464
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 466
    new-instance v2, Lcom/amazon/klo/list/TermListItem;

    invoke-virtual {p0, p1, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, p1, v1, v0}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 472
    :cond_0
    new-instance v2, Lcom/amazon/klo/list/TermListItem;

    const-string v0, ".XrayDefinitionAsset"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    new-instance v2, Lcom/amazon/klo/list/TermListItem;

    invoke-direct {v2, p1}, Lcom/amazon/klo/list/TermListItem;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    return-object v2
.end method

.method public getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .line 290
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTerm(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 298
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "type"

    .line 303
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public declared-synchronized getBookTerms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->termArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->termArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->termArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/klo/sidecar/SidecarHandler;->generateTermListItem(Lorg/json/JSONObject;)Lcom/amazon/klo/list/TermListItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChapterForShortPosition(I)Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorIndexForShortPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    monitor-enter p0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSelectorIndex()I
    .locals 1

    monitor-enter p0

    .line 551
    :try_start_0
    iget v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPageTerms()Ljava/util/List;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 556
    iget v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 559
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorIndexForShortPosition(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDetailsOf(Lcom/amazon/klo/list/TermListItem;)Lorg/json/JSONObject;
    .locals 8

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/amazon/klo/list/TermListItem;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPageListForTerm(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, ".XrayDefinitionAsset"

    .line 164
    invoke-virtual {p0, p1, v2}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, ".XrayCardAsset"

    .line 165
    invoke-virtual {p0, p1, v3}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, ".XrayDetailedDefinitionAsset"

    .line 166
    invoke-virtual {p0, p1, v4}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, ".XrayDescriptionAsset"

    .line 167
    invoke-virtual {p0, p1, v5}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, ".XrayDescriptionWithImagesAsset"

    .line 168
    invoke-virtual {p0, p1, v6}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, ".XrayVideoAsset"

    .line 169
    invoke-virtual {p0, p1, v7}, Lcom/amazon/klo/sidecar/SidecarHandler;->getAssetsForTermOfType(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :try_start_0
    const-string v7, "definitionArray"

    .line 172
    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    sget-object v2, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v7, "Cannot put definition array in details object"

    invoke-static {v2, v7}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v2, "cardArray"

    .line 180
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    sget-object v2, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v3, "Cannot put card asset array in details object"

    invoke-static {v2, v3}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v2, "detailedDefintionArray"

    .line 188
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 192
    :catch_2
    sget-object v2, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v3, "Cannot put detailedDefinition array in details object"

    invoke-static {v2, v3}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    const-string/jumbo v2, "pagesArray"

    .line 196
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 200
    :catch_3
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot put pages array in details object"

    invoke-static {v1, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_4
    const-string/jumbo v1, "wikisArray"

    .line 204
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 208
    :catch_4
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot put wikis array in details object"

    invoke-static {v1, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    :try_start_5
    const-string/jumbo v1, "wikisWithImagesArray"

    .line 212
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 216
    :catch_5
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v2, "Cannot put wikis with images array in details object"

    invoke-static {v1, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_6
    const-string/jumbo v1, "videosArray"

    .line 220
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 224
    :catch_6
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v1, "Cannot put videos array in details object"

    invoke-static {p1, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v0
.end method

.method public getPageTerms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;"
        }
    .end annotation

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageEndPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getTermsInRange(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 452
    invoke-virtual {p0, v2}, Lcom/amazon/klo/sidecar/SidecarHandler;->generateTermListItem(Lorg/json/JSONObject;)Lcom/amazon/klo/list/TermListItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getSelectorIndexForShortPosition(I)I
    .locals 6

    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 663
    iget-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 667
    iget-object v2, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lt p1, v2, :cond_4

    iget-object v2, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "end"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v0, v1

    .line 675
    div-int/lit8 v2, v2, 0x2

    .line 677
    iget-object v4, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "end"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-le p1, v4, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 687
    :cond_2
    monitor-exit p0

    return v2

    .line 694
    :cond_3
    monitor-exit p0

    return v3

    .line 669
    :cond_4
    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSelectorNames()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    .line 363
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 365
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 368
    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 372
    :cond_0
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/amazon/klo/R$string;->klo_entire_book:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 374
    iput v5, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I

    if-nez v1, :cond_1

    .line 378
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 386
    :goto_1
    iget-object v7, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 388
    iget-object v7, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    .line 389
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FRONT MATTER"

    .line 390
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "END MATTER"

    .line 394
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 398
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    .line 400
    iget-object v8, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    const-string/jumbo v9, "start"

    .line 401
    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-gt v9, v8, :cond_6

    const-string v9, "end"

    const/4 v10, -0x1

    .line 403
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_4

    if-ge v8, v7, :cond_6

    .line 406
    :cond_4
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/amazon/klo/KLOApp;->hasPageLabels()Z

    move-result v8

    if-eqz v8, :cond_5

    sget v8, Lcom/amazon/klo/R$string;->klo_current_reading_page:I

    goto :goto_2

    :cond_5
    sget v8, Lcom/amazon/klo/R$string;->klo_current_reading_location:I

    :goto_2
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%s: %s"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v5

    .line 409
    iget-object v7, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->currentPageStartPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 411
    invoke-direct {p0, v3, v7}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPositionLabel(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v1

    .line 409
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v6, 0x1

    .line 413
    iput v6, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v7

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 417
    :cond_7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectorTerms(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amazon/klo/list/TermListItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getBookTerms()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 532
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getChapterAtSelectorIndex(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 535
    iget v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I

    if-ne p1, v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPageTerms()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 541
    :cond_1
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 543
    :cond_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/amazon/klo/sidecar/SidecarHandler;->getChapterItemsByObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTermsInRange(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 621
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    iget-object v1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->termArray:Lorg/json/JSONArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 629
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 632
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "locs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 637
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 639
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 642
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-gt p1, v7, :cond_0

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    if-gt v6, p2, :cond_0

    .line 645
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->getSidecarJson(Lcom/amazon/kindle/krx/content/IBook;)Lorg/json/JSONObject;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->sidecarJson:Lorg/json/JSONObject;

    if-eq p1, v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->sidecarJson:Lorg/json/JSONObject;

    const-string/jumbo v0, "terms"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->termArray:Lorg/json/JSONArray;

    .line 142
    iget-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->sidecarJson:Lorg/json/JSONObject;

    const-string v0, "chapters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->chapterArray:Lorg/json/JSONArray;

    .line 143
    iget-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->sidecarJson:Lorg/json/JSONObject;

    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->assetsObject:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 144
    iput p1, p0, Lcom/amazon/klo/sidecar/SidecarHandler;->pageSelectorIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEndMatter(I)Z
    .locals 1

    monitor-enter p0

    .line 576
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getChapterAtSelectorIndex(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 579
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "name"

    .line 582
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "END MATTER"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isFrontMatter(I)Z
    .locals 1

    monitor-enter p0

    .line 564
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getChapterAtSelectorIndex(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 567
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "name"

    .line 570
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRONT MATTER"

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public positionLabelForShortPosition(I)Ljava/lang/String;
    .locals 3

    .line 701
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 704
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get ReaderManager"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 707
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    if-nez v2, :cond_1

    .line 710
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get bookNavigator"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 714
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    if-nez v2, :cond_2

    .line 717
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get positionFactory"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 720
    :cond_2
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_3

    .line 723
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarHandler;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get position"

    invoke-static {p1, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 727
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getPositionLabel(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
