.class public final Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;
.super Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;
.source "ClickStreamSearchAttributionInfoRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$Companion;
    }
.end annotation


# instance fields
.field private final aliasOrIndex:Ljava/lang/String;

.field private final hitType:Ljava/lang/String;

.field private final impressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final isSearchPage:Ljava/lang/String;

.field private final keywords:Ljava/lang/String;

.field private final pageType:Ljava/lang/String;

.field private final pageTypeId:Ljava/lang/String;

.field private final queryId:Ljava/lang/String;

.field private final rank:Ljava/lang/String;

.field private final refMarker:Ljava/lang/String;

.field private final refinements:Ljava/lang/String;

.field private final searchPrefix:Ljava/lang/String;

.field private final siteVariant:Ljava/lang/String;

.field private final spellCorrection:Ljava/lang/String;

.field private final subPageType:Ljava/lang/String;

.field private final tabId:Ljava/lang/String;

.field private final teamName:Ljava/lang/String;

.field private final totalFound:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    const-string v13, "refMarker"

    invoke-static {p1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "siteVariant"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "hitType"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "teamName"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "queryId"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "isSearchPage"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "aliasOrIndex"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "keywords"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "impressions"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "pageType"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "subPageType"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "pageTypeId"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refMarker:Ljava/lang/String;

    iput-object v2, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->siteVariant:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->hitType:Ljava/lang/String;

    iput-object v4, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->teamName:Ljava/lang/String;

    iput-object v5, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->queryId:Ljava/lang/String;

    iput-object v6, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->isSearchPage:Ljava/lang/String;

    iput-object v7, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->aliasOrIndex:Ljava/lang/String;

    iput-object v8, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->keywords:Ljava/lang/String;

    move/from16 v1, p9

    iput v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->totalFound:I

    iput-object v9, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->impressions:Ljava/util/List;

    iput-object v10, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageType:Ljava/lang/String;

    iput-object v11, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->subPageType:Ljava/lang/String;

    iput-object v12, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    return-void
.end method

.method private final formatListOfImpression(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 94
    sget-object v6, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;->INSTANCE:Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord$formatListOfImpression$1;

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->queryId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->queryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->isSearchPage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->isSearchPage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->aliasOrIndex:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->aliasOrIndex:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->keywords:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->keywords:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->totalFound:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->totalFound:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->impressions:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->impressions:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->subPageType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->subPageType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMarker()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteVariant()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->siteVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->queryId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->isSearchPage:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->aliasOrIndex:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->totalFound:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->impressions:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageType:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->subPageType:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_10
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 41
    sget-object v3, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REFMAKER:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 40
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    sget-object v6, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SITE_VARIANT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v6}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 42
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, ",%s=%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 45
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->HIT_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 44
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TEAM_NAME:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 46
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 49
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->QUERY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->queryId:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 48
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 51
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IS_SEARCH_PAGE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->isSearchPage:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 50
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 53
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->ALIAS_OR_INDEX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->aliasOrIndex:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 52
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 55
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->KEYWORDS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->keywords:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 54
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 57
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TOTAL_FOUND:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->totalFound:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    .line 56
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->impressions:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->formatListOfImpression(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 60
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageType:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 59
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 62
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SUB_PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->subPageType:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 61
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 64
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->PAGE_TYPE_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 63
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 68
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->RANK:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->rank:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 67
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 73
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SPELL_CORRECTION:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->spellCorrection:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 72
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 76
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REFINEMENTS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->refinements:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 76
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 81
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 82
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SEARCH_PREFIX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->searchPrefix:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 81
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 86
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 87
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TAB_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v4, p0, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;->tabId:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 86
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
