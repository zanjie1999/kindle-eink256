.class public Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "FeaturedBookWidgetDef.java"


# instance fields
.field public final buyButtonText:Ljava/lang/String;

.field public final buyButtonVisible:Z

.field public final buyInStore:Z

.field public final oneClickBorrowSupported:Z

.field public final recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

.field public final refTagFeatureIdPartial:Ljava/lang/String;

.field public final seeInStoreButtonText:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    .line 55
    iput-boolean p9, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    .line 56
    iput-boolean p10, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    .line 57
    iput-boolean p11, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    .line 58
    iput-object p12, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

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

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    .line 74
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    .line 75
    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    iget-boolean v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    iget-boolean v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    iget-boolean v3, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 78
    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 83
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 89
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureID"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonText:Ljava/lang/String;

    const-string v2, "buyButtonText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->seeInStoreButtonText:Ljava/lang/String;

    const-string/jumbo v2, "seeInStoreButtonText"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyButtonVisible:Z

    const-string v2, "buyButtonVisible"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->buyInStore:Z

    const-string v2, "buyInStore"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->oneClickBorrowSupported:Z

    const-string/jumbo v2, "oneClickBorrowSupported"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const-string/jumbo v2, "recommendations"

    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    return-object v0
.end method
