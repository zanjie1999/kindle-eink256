.class public Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;
.super Ljava/lang/Object;
.source "AggregatedStatsPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDailyListeningEndDate:Ljava/util/Date;

.field private mDailyListeningStartDate:Ljava/util/Date;

.field private mGenerateTotalListeningStat:Ljava/lang/Boolean;

.field private mMonthlyListeningEndDate:Ljava/util/Date;

.field private mMonthlyListeningStartDate:Ljava/util/Date;

.field private store:Lcom/audible/application/stats/integration/StoreType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;
    .locals 8

    .line 146
    :try_start_0
    new-instance v7, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;

    iget-object v1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mDailyListeningStartDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mDailyListeningEndDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mMonthlyListeningStartDate:Ljava/util/Date;

    iget-object v4, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mMonthlyListeningEndDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mGenerateTotalListeningStat:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->store:Lcom/audible/application/stats/integration/StoreType;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Lcom/audible/application/stats/integration/StoreType;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to assemble JSON payload, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public withDailyListeningInterval(Ljava/util/Date;Ljava/util/Date;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 116
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mDailyListeningStartDate:Ljava/util/Date;

    .line 117
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mDailyListeningEndDate:Ljava/util/Date;

    return-object p0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public withGenerateTotalListeningStatFlag(Z)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;
    .locals 0

    .line 133
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mGenerateTotalListeningStat:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withMonthlyListeningInterval(Ljava/util/Date;Ljava/util/Date;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 126
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mMonthlyListeningStartDate:Ljava/util/Date;

    .line 127
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->mMonthlyListeningEndDate:Ljava/util/Date;

    return-object p0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public withStore(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsPayload$Builder;->store:Lcom/audible/application/stats/integration/StoreType;

    return-object p0
.end method
