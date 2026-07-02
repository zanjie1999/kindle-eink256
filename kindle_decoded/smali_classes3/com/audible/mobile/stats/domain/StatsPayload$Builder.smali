.class public Lcom/audible/mobile/stats/domain/StatsPayload$Builder;
.super Ljava/lang/Object;
.source "StatsPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/stats/domain/StatsPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private stats:[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/audible/mobile/stats/domain/StatsPayload;
    .locals 3

    .line 39
    :try_start_0
    new-instance v0, Lcom/audible/mobile/stats/domain/StatsPayload;

    iget-object v1, p0, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;->stats:[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-direct {v0, v1}, Lcom/audible/mobile/stats/domain/StatsPayload;-><init>([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
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

.method public withStats([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/mobile/stats/domain/StatsPayload$Builder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/StatsPayload$Builder;->stats:[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    return-object p0
.end method
