.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsSection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;,
        Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;
    }
.end annotation


# instance fields
.field private final isWidget:Z

.field private final outcomeSeqNum:I

.field private final searchId:Ljava/util/UUID;

.field private final searchSessionId:Ljava/util/UUID;

.field private final sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

.field private final sectionPosition:I

.field private final totalFound:I

.field private final widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;ZLjava/lang/String;III)V
    .locals 1

    const-string v0, "searchId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sectionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    iput-boolean p4, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    iput-object p5, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    iput p6, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    iput p7, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    iput p8, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;ZLjava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v10, p8

    .line 13
    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;ZLjava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    iget p1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getOutcomeSeqNum()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    return v0
.end method

.method public final getSearchId()Ljava/util/UUID;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSectionName()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    return-object v0
.end method

.method public final getSectionPosition()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    return v0
.end method

.method public final getTotalFound()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    return v0
.end method

.method public final getWidgetId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isWidget()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAttemptMetricsSection(searchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->searchSessionId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->totalFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sectionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->sectionPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outcomeSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->outcomeSeqNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
