.class public Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;
.super Ljava/lang/Object;
.source "ShowSeriesBarDecider.java"

# interfaces
.implements Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;

.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/sitb/android/model/UpsellModel;Lcom/amazon/kindle/krx/reader/IBookNavigator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    .line 28
    iput-object p2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 29
    iput-object p3, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    return-void
.end method


# virtual methods
.method public showBar()Z
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 39
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 40
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    iget-object v3, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 41
    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 44
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 45
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    int-to-double v3, v0

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 46
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    int-to-double v5, v0

    iget-object v0, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 47
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result v0

    int-to-double v7, v0

    .line 45
    invoke-static/range {v3 .. v8}, Lcom/amazon/sitb/android/utils/SeriesRangeUtils;->isInShowSeriesUpsellRange(DDD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    sget-object v3, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    invoke-interface {v3}, Lcom/amazon/sitb/android/ISamplingLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 50
    sget-object v3, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v5, "Showing"

    goto :goto_1

    :cond_2
    const-string v5, "Not showing"

    :goto_1
    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    const-string v5, "null"

    if-nez v2, :cond_3

    move-object v2, v5

    goto :goto_2

    .line 52
    :cond_3
    invoke-interface {v2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-nez v2, :cond_4

    move-object v2, v5

    goto :goto_3

    .line 53
    :cond_4
    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_3
    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-eqz v2, :cond_6

    .line 54
    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v2

    goto :goto_5

    :cond_6
    :goto_4
    move-object v2, v5

    :goto_5
    aput-object v2, v4, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    if-eqz v2, :cond_8

    .line 55
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7

    :cond_8
    :goto_6
    move-object v2, v5

    :goto_7
    aput-object v2, v4, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    if-eqz v2, :cond_a

    .line 56
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :cond_a
    :goto_8
    move-object v2, v5

    :goto_9
    aput-object v2, v4, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/amazon/sitb/android/view/series/ShowSeriesBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-nez v2, :cond_b

    goto :goto_a

    .line 57
    :cond_b
    invoke-virtual {v2}, Lcom/amazon/sitb/android/model/UpsellModel;->getShowAtPercentRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_a
    aput-object v5, v4, v1

    const-string v1, "%s bar, restrictionHandler: %s, model.hasUpseelBook: %s, model.getCurrentBook().getContentClass(): %s, startPagePosition: %s, endPosition: %s, showAtPercent: %s"

    .line 50
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    :cond_c
    return v0
.end method
