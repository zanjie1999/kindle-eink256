.class public final Lcom/audible/hushpuppy/controller/RelationshipUpdater;
.super Ljava/lang/Object;
.source "RelationshipUpdater.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IRelationshipUpdater;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

.field private final isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final quietTime:Lcom/audible/mobile/domain/Time;

.field private final relationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

.field private final timeoutTime:Lcom/audible/mobile/domain/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/RelationshipUpdater;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/domain/Time;)V
    .locals 7

    .line 60
    new-instance v6, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;

    invoke-direct {v6}, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/RelationshipUpdater;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/framework/Factory1;)V

    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/domain/Time;Lcom/audible/mobile/framework/Factory1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            "Lcom/audible/mobile/domain/Time;",
            "Lcom/audible/mobile/domain/Time;",
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "eventBus can\'t be null."

    .line 77
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "relationshipManager can\'t be null."

    .line 78
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "hushpuppySettings can\'t be null."

    .line 79
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "quietTime can\'t be null."

    .line 80
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "countDownLatchFactory can\'t be null."

    .line 81
    invoke-static {p6, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->eventBus:Lde/greenrobot/event/EventBus;

    .line 84
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->relationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    .line 85
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    .line 86
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->timeoutTime:Lcom/audible/mobile/domain/Time;

    .line 87
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->quietTime:Lcom/audible/mobile/domain/Time;

    .line 88
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    return-void
.end method


# virtual methods
.method isUpdateRecently()Z
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

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

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->quietTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v4}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->quietTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v5}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 167
    sget-object p1, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Receiving CompanionMappingModificationPersistedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public updateRelationship()Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship update is in progress!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATE_IN_PROGRESS:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdateRecently()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Relationship has been updated recently!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATED_RECENTLY:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    return-object v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatchFactory:Lcom/audible/mobile/framework/Factory1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 108
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->relationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;->updatePartialCompanionMappings()V

    const/4 v0, 0x0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->timeoutTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->timeoutTime:Lcom/audible/mobile/domain/Time;

    invoke-interface {v4}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    sget-object v1, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Timeout waiting for companion mapping result!"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->FAILED:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-object v1

    .line 117
    :cond_2
    :try_start_1
    sget-object v1, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Companion mapping has been updated successfully."

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->SUCCESSFUL:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 120
    :try_start_2
    sget-object v2, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "InterruptedException happens while waiting for companion mapping result!"

    invoke-interface {v2, v3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    sget-object v1, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->FAILED:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/RelationshipUpdater;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 125
    throw v1
.end method
