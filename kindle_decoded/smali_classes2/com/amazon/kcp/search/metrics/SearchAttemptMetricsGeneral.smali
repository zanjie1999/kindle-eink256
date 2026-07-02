.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsGeneral.kt"


# instance fields
.field private final context:Ljava/lang/String;

.field private final isDeviceOffline:Z

.field private final refinements:Ljava/lang/String;

.field private final searchId:Ljava/util/UUID;

.field private final searchKeyword:Ljava/lang/String;

.field private final searchKeywordBeforeSuggestion:Ljava/lang/String;

.field private final searchSessionId:Ljava/util/UUID;

.field private final searchSuggestionResult:Ljava/lang/String;

.field private final searchSuggestionSelectedPosition:I

.field private final spellCorrectedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "searchId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    iput-object p5, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    iput p10, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

    iget p1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

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

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefinements()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchId()Ljava/util/UUID;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchKeyword()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchKeywordBeforeSuggestion()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchSuggestionResult()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchSuggestionSelectedPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

    return v0
.end method

.method public final getSpellCorrectedKeyword()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDeviceOffline()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAttemptMetricsGeneral(searchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSessionId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDeviceOffline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->isDeviceOffline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", searchKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spellCorrectedKeyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->spellCorrectedKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refinements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->refinements:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSuggestionResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchKeywordBeforeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchKeywordBeforeSuggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSuggestionSelectedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsGeneral;->searchSuggestionSelectedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
