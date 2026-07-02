.class public final Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "BlurbCardWidgetDef.kt"


# instance fields
.field private final byLine:Ljava/lang/String;

.field private final oneClickBorrowSupported:Z

.field private final programDarkImageUrl:Ljava/lang/String;

.field private final programImageAltText:Ljava/lang/String;

.field private final programLightImageUrl:Ljava/lang/String;

.field private final recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;"
        }
    .end annotation
.end field

.field private final refTagFeatureIdPartial:Ljava/lang/String;

.field private final showBadges:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recommendations"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    iput-object p10, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    iput-object p12, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    .line 56
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Collections.unmodifiableList(recommendations)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

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

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 69
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    .line 70
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    iget-boolean v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    iget-boolean v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getByLine()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    return-object v0
.end method

.method public final getOneClickBorrowSupported()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    return v0
.end method

.method public final getProgramDarkImageUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramImageAltText()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramLightImageUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/BlurbCardRecommendationData;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

    return-object v0
.end method

.method public final getRefTagFeatureIdPartial()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowBadges()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 81
    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 80
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 85
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 86
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->byLine:Ljava/lang/String;

    const-string v2, "byLine"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programLightImageUrl:Ljava/lang/String;

    const-string/jumbo v2, "programLightImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 87
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programDarkImageUrl:Ljava/lang/String;

    const-string/jumbo v2, "programDarkImageUrl"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 88
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->programImageAltText:Ljava/lang/String;

    const-string/jumbo v2, "programImageAltText"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 89
    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->oneClickBorrowSupported:Z

    const-string/jumbo v2, "oneClickBorrowSupported"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 90
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->recommendations:Ljava/util/List;

    const-string/jumbo v2, "recommendations"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->showBadges:Z

    const-string/jumbo v2, "showBadges"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper().a\u2026\"showBadges\", showBadges)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
