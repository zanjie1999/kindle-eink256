.class public final Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;
.super Ljava/lang/Object;
.source "LegacyRelationshipManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final ONE_MINUTE:Lcom/audible/mobile/domain/Time;


# instance fields
.field private final companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

.field private final hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

.field private lastRequestTime:Lcom/audible/mobile/domain/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 35
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->ONE_MINUTE:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, -0x80000000

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->lastRequestTime:Lcom/audible/mobile/domain/Time;

    .line 56
    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    .line 57
    iput-object p2, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    return-void
.end method

.method private lastRequestedMoreThan(Lcom/audible/mobile/domain/Time;)Z
    .locals 6

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->lastRequestTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v3

    iget-object v5, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->lastRequestTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v5}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    invoke-interface {p1}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public enable()V
    .locals 2

    .line 70
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Enable client..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->enableRequests()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 63
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Shutting down..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopAllRequests()V

    return-void
.end method

.method public updateFullCompanionMappings(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 77
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->ONE_MINUTE:Lcom/audible/mobile/domain/Time;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->lastRequestedMoreThan(Lcom/audible/mobile/domain/Time;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Dropping companion mapping request from global sync - last request was executed under 1 minute ago."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Making companion mapping request for all titles"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 79
    new-instance p1, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p1, v0, v1, v2}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->lastRequestTime:Lcom/audible/mobile/domain/Time;

    .line 80
    iget-object p1, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestAllCompanionMappings()V

    :goto_1
    return-void
.end method

.method public updatePartialCompanionMappings()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->updatePartialCompanionMappings(J)V

    return-void
.end method

.method public updatePartialCompanionMappings(J)V
    .locals 2

    .line 96
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Making companion mapping request"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestCompanionMappings(J)V

    return-void
.end method

.method public updatePartialCompanionMappings(Lcom/audible/mobile/domain/Asin;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    invoke-virtual {p0, p1, v0, v1}, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->updatePartialCompanionMappings(Lcom/audible/mobile/domain/Asin;J)V

    return-void
.end method

.method public updatePartialCompanionMappings(Lcom/audible/mobile/domain/Asin;J)V
    .locals 3

    .line 110
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making companion mapping request for asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/LegacyRelationshipManager;->companionMappingClient:Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestCompanionMappingsForAsin(Lcom/audible/mobile/domain/Asin;J)V

    return-void
.end method
