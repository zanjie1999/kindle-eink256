.class public final Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;
.super Ljava/lang/Object;
.source "ListeningStatsPositionTracker.java"

# interfaces
.implements Lcom/audible/application/stats/util/IStatsPositionTracker;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Audible Service cannot be null."

    .line 31
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method


# virtual methods
.method public getCurrentPosition()Ljava/lang/Long;
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Couldnt get duration from IAudibleService."

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
