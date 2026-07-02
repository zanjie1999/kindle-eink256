.class public Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "FeaturedBookModel.java"


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

.field public final oneClickBorrowSupported:Z

.field public final recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final seeInStoreButtonText:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 24
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p3, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 71
    iput-object p5, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonText:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->seeInStoreButtonText:Ljava/lang/String;

    .line 74
    iput-boolean p8, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    .line 75
    iput-boolean p9, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    .line 76
    iput-boolean p10, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    .line 77
    iput p11, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

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

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    if-eq v2, v3, :cond_2

    return v1

    .line 91
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    .line 92
    invoke-super {p0, p1}, Lcom/amazon/ea/model/widget/WidgetModel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonText:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->seeInStoreButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->seeInStoreButtonText:Ljava/lang/String;

    .line 93
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    iget-boolean v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 96
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    iget v3, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 97
    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBorrowRefTagFeaturedId()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ku"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuyNowRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLearnMoreRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrepareBuyRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeeInStoreBookCoverRefTagFeatureId()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_bv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnBuyAsinRefTagFeaturedId()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonText:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->seeInStoreButtonText:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 144
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initMetricConstants()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedFeaturedBuyNow"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 155
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedFeaturedLearnMore"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "ClickedFeaturedSeeInStoreBookCover"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v2, p0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    return-void
.end method

.method public prepareData()V
    .locals 4

    .line 164
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->getPrepareBuyRefTagFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->prepareBuy(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->imageURL:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->imageHeight:I

    invoke-static {v0, v1}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 168
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

    .line 173
    sget-object v0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 178
    invoke-super {p0}, Lcom/amazon/ea/model/widget/WidgetModel;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonText:Ljava/lang/String;

    const-string v2, "buyButtonText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->seeInStoreButtonText:Ljava/lang/String;

    const-string/jumbo v2, "seeInStoreButtonText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyButtonVisible:Z

    const-string v2, "buyButtonVisible"

    .line 179
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->buyInStore:Z

    const-string v2, "buyInStore"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->oneClickBorrowSupported:Z

    const-string/jumbo v2, "oneClickBorrowSupported"

    .line 180
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const-string/jumbo v2, "recommendation"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureID"

    .line 181
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
