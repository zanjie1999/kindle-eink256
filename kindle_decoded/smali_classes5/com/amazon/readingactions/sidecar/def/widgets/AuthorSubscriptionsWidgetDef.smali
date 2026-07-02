.class public final Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;
.super Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
.source "AuthorSubscriptionsWidgetDef.kt"


# instance fields
.field private final authorBioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;"
        }
    .end annotation
.end field

.field private final authorSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;"
        }
    .end annotation
.end field

.field private final followHint:Ljava/lang/String;

.field private final refTagFeatureIdPartial:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
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
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "refTagFeatureIdPartial"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorBioList"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorSubs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    iput-object p8, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    iput-object p9, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

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

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_2

    return v1

    .line 38
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    .line 39
    invoke-super {p0, p1}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    iget-object v3, v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    invoke-static {p1, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAuthorBioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthorSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    return-object v0
.end method

.method public final getFollowHint()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefTagFeatureIdPartial()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->toStringHelper()Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "refTagFeatureIdPartial"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 55
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->title:Ljava/lang/String;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 56
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorBioList:Ljava/util/List;

    const-string v2, "authorBioList"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 57
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->authorSubs:Ljava/util/List;

    const-string v2, "authorSubs"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    .line 58
    iget-object v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->followHint:Ljava/lang/String;

    const-string v2, "followHint"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    const-string/jumbo v1, "super.toStringHelper()\n \u2026\"followHint\", followHint)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
