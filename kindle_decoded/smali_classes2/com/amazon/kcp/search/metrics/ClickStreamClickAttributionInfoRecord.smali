.class public final Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;
.super Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;
.source "ClickStreamClickAttributionInfoRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord$Companion;
    }
.end annotation


# instance fields
.field private asinData:Ljava/lang/String;

.field private final hitType:Ljava/lang/String;

.field private final isGlanceView:Ljava/lang/String;

.field private final pageTypeId:Ljava/lang/String;

.field private final queryId:Ljava/lang/String;

.field private final refMarker:Ljava/lang/String;

.field private final siteVariant:Ljava/lang/String;

.field private final sr:Ljava/lang/String;

.field private final teamName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "refMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteVariant"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teamName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isGlanceView"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sr"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageTypeId"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->refMarker:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->siteVariant:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->hitType:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->teamName:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->queryId:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->isGlanceView:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->sr:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 20
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->queryId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->queryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->isGlanceView:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->isGlanceView:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->sr:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->sr:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getRefMarker()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->refMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteVariant()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->siteVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getHitType()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getTeamName()Ljava/lang/String;

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

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->queryId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->isGlanceView:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->sr:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAsinData(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    sget-object v3, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REFMAKER:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 29
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 32
    sget-object v6, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SITE_VARIANT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v6}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 31
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, ",%s=%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->HIT_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getHitType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 33
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TEAM_NAME:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->getTeamName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 35
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 38
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->QUERY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->queryId:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 37
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 40
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IS_GLANCE_VIEW:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->isGlanceView:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 39
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 42
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SR:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->sr:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 41
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 44
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->PAGE_TYPE_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v7, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->pageTypeId:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 43
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 47
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    sget-object v7, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->ASIN_DATA:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    iget-object v4, p0, Lcom/amazon/kcp/search/metrics/ClickStreamClickAttributionInfoRecord;->asinData:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 47
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
