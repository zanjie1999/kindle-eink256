.class public final Lcom/audible/relationship/controller/AsinCommand;
.super Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;
.source "AsinCommand.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

.field private final companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

.field private final relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/AsinCommand;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p6}, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;-><init>(Z)V

    const-string p6, "eventBus can\'t be null."

    .line 61
    invoke-static {p1, p6}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lde/greenrobot/event/EventBus;

    iput-object p1, p0, Lcom/audible/relationship/controller/AsinCommand;->eventBus:Lde/greenrobot/event/EventBus;

    const-string p1, "relationshipRequest can\'t be null."

    .line 62
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/domain/RelationshipRequest;

    iput-object p2, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    const-string p1, "callback can\'t be null."

    .line 63
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iput-object p3, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    const-string p1, "companionMappingClient can\'t be null."

    .line 64
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iput-object p4, p0, Lcom/audible/relationship/controller/AsinCommand;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    const-string p1, "relationshipStorage can\'t be null."

    .line 65
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/relationship/db/IRelationshipStorage;

    iput-object p5, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipRequest;->getPayload()Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started asin request with ASIN pair list = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    invoke-interface {v1, v0}, Lcom/audible/relationship/network/client/ICompanionMappingClient;->requestMappingForAsinPairs(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMapping;->getRelationshipMappingModifications()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMapping;->getRelationshipMappingModifications()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getAddRelationship()Ljava/util/List;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " record(s) to database."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v2, v1}, Lcom/audible/relationship/db/IRelationshipStorage;->saveRelationships(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 99
    sget-object v1, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Failed to save mappings to database!"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v3, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v1, v3}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 102
    sget-object v1, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Saved mappings successfully!"

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getDeleteRelationship()Ljava/util/List;

    move-result-object v1

    .line 107
    sget-object v3, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " record(s) from database."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v3, v1}, Lcom/audible/relationship/db/IRelationshipStorage;->deleteRelationships(Ljava/util/List;)I

    move-result v3

    .line 110
    sget-object v4, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " record(s) deleted from database!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 113
    sget-object v4, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Failed to process all requested deletions"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v5, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v4, v5}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    :cond_3
    if-nez v2, :cond_4

    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;

    sget-object v3, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-direct {v2, v0, v3}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;-><init>(Lcom/audible/relationship/domain/RelationshipMappingModification;Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onSuccess(Lcom/audible/relationship/domain/RelationshipRequest;)V

    :cond_5
    return-void

    .line 85
    :cond_6
    :goto_1
    sget-object v0, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Response is empty! Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onSuccess(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/audible/relationship/controller/AsinCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Failed to request relationship mapping from service!"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/audible/relationship/controller/AsinCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/AsinCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void
.end method
