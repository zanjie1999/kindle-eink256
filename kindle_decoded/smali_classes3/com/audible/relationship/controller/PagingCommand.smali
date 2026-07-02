.class public final Lcom/audible/relationship/controller/PagingCommand;
.super Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;
.source "PagingCommand.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

.field private final companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

.field private final configuration:Lcom/audible/relationship/db/IConfiguration;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

.field private final relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/PagingCommand;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p7}, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;-><init>(Z)V

    const-string p7, "eventBus can\'t be null."

    .line 70
    invoke-static {p1, p7}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lde/greenrobot/event/EventBus;

    iput-object p1, p0, Lcom/audible/relationship/controller/PagingCommand;->eventBus:Lde/greenrobot/event/EventBus;

    const-string p1, "relationshipRequest can\'t be null."

    .line 71
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/domain/RelationshipRequest;

    iput-object p2, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    const-string p1, "callback can\'t be null."

    .line 72
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iput-object p3, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    const-string p1, "companionMappingClient can\'t be null."

    .line 73
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iput-object p4, p0, Lcom/audible/relationship/controller/PagingCommand;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    const-string p1, "relationshipStorage can\'t be null."

    .line 74
    invoke-static {p5, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Lcom/audible/relationship/db/IRelationshipStorage;

    iput-object p5, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    const-string p1, "configuration can\'t be null."

    .line 75
    invoke-static {p6, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Lcom/audible/relationship/db/IConfiguration;

    iput-object p6, p0, Lcom/audible/relationship/controller/PagingCommand;->configuration:Lcom/audible/relationship/db/IConfiguration;

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipRequest;->getPayload()Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started paging request with token = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    invoke-interface {v1, v0}, Lcom/audible/relationship/network/client/ICompanionMappingClient;->requestFullCompanionMapping(Ljava/lang/String;)Lcom/audible/relationship/domain/RelationshipMapping;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v1}, Lcom/audible/relationship/domain/RelationshipMapping;->getRelationshipMappingModifications()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->configuration:Lcom/audible/relationship/db/IConfiguration;

    invoke-interface {v0}, Lcom/audible/relationship/db/IConfiguration;->incrementAndGetSessionId()I

    move-result v0

    .line 103
    sget-object v2, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increment session id to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 106
    sget-object v0, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to increment session id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    .line 112
    :cond_1
    invoke-virtual {v1}, Lcom/audible/relationship/domain/RelationshipMapping;->getRelationshipMappingModifications()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getAddRelationship()Ljava/util/List;

    move-result-object v2

    .line 117
    sget-object v3, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " record(s) to database."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v3, v2}, Lcom/audible/relationship/db/IRelationshipStorage;->saveRelationships(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    sget-object v0, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to save relationship mapping to database!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    .line 126
    :cond_2
    sget-object v2, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Save mapping successfully!"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/audible/relationship/controller/PagingCommand;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;

    sget-object v4, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->PAGING:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-direct {v3, v0, v4}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;-><init>(Lcom/audible/relationship/domain/RelationshipMappingModification;Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v1}, Lcom/audible/relationship/domain/RelationshipMapping;->getCompanionMappingToken()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    sget-object v1, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting for next page with token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v2, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    new-instance v3, Lcom/audible/relationship/domain/RelationshipRequest;

    sget-object v4, Lcom/audible/relationship/domain/RelationshipRequest$Type;->PAGING_REQUEST:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-direct {v3, v4, v0}, Lcom/audible/relationship/domain/RelationshipRequest;-><init>(Lcom/audible/relationship/domain/RelationshipRequest$Type;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onNextRequest(Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    .line 137
    :cond_3
    sget-object v0, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reaching last page! Clean up mapping from old session."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    invoke-interface {v0}, Lcom/audible/relationship/db/IRelationshipStorage;->deleteRelationshipsForOldSessionId()I

    move-result v0

    .line 139
    sget-object v1, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "%s row(s) deleted"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onSuccess(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    .line 95
    :cond_4
    :goto_0
    sget-object v0, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Response is empty! Do nothing."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onSuccess(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void

    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/audible/relationship/controller/PagingCommand;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Failed to request relationship mapping from service!"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    iget-object v0, p0, Lcom/audible/relationship/controller/PagingCommand;->callback:Lcom/audible/relationship/controller/IRelationshipUpdateCallback;

    iget-object v1, p0, Lcom/audible/relationship/controller/PagingCommand;->relationshipRequest:Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-interface {v0, v1}, Lcom/audible/relationship/controller/IRelationshipUpdateCallback;->onFailure(Lcom/audible/relationship/domain/RelationshipRequest;)V

    return-void
.end method
