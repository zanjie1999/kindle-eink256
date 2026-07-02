.class public Lcom/amazon/ea/model/widget/buybook/BuyBookModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "BuyBookModel.java"


# static fields
.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final buyButtonText:Ljava/lang/String;

.field public final buyButtonVisible:Z

.field public final buyInStore:Z

.field public imageHeight:I

.field public final isCurrentBook:Z

.field private final isOneTapEnabled:Z

.field public final oneClickBorrowSupported:Z

.field public final recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final seeInStoreButtonText:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 26
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/RecommendationData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p3, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 78
    iput-object p5, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonText:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    .line 81
    iput-boolean p8, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    .line 82
    iput-boolean p9, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    .line 83
    iput-boolean p10, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    .line 84
    iput p11, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    .line 85
    iput-boolean p12, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    .line 86
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapNextInSeriesEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isOneTapEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    if-eq v2, v3, :cond_2

    return v1

    .line 100
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    .line 101
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    .line 102
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonText:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    .line 103
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    .line 106
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    iget v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 107
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    iget-boolean v2, v2, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBorrowRefTagFeaturedId()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ku"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuyNowRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrepareBuyRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeeInStoreBookCoverRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeeInStoreRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonText:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    .line 155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 154
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initMetricConstants()V
    .locals 5

    .line 161
    iget-boolean v0, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isOneTapEnabled:Z

    const-string v1, "ClickedSampleBuyNow"

    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isOneTapEnabled:Z

    const-string v2, "ClickedSampleSeeInStore"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-boolean v2, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isOneTapEnabled:Z

    const-string v3, "ClickedSampleSeeInStoreBookCover"

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/WidgetUIActionMetricsStringInitializer;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-boolean v3, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    if-eqz v3, :cond_0

    .line 166
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 167
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 170
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    return-void
.end method

.method public prepareData()V
    .locals 4

    .line 179
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    invoke-static {v0, v1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/amazon/startactions/storage/ImageDownloadManager;->prepare(Ljava/lang/String;)V

    return-void
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 193
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonText:Ljava/lang/String;

    const-string v2, "buyButtonText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->seeInStoreButtonText:Ljava/lang/String;

    const-string/jumbo v2, "seeInStoreButtonText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyButtonVisible:Z

    const-string v2, "buyButtonVisible"

    .line 194
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->buyInStore:Z

    const-string v2, "buyInStore"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->oneClickBorrowSupported:Z

    const-string/jumbo v2, "oneClickBorrowSupported"

    .line 195
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    const-string/jumbo v2, "recommendation"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->imageHeight:I

    const-string v2, "imageHeight"

    .line 196
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureID"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->isCurrentBook:Z

    const-string v2, "isCurrentBook"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
