.class public final Lcom/audible/relationship/controller/RelationshipCommandFactory;
.super Ljava/lang/Object;
.source "RelationshipCommandFactory.java"

# interfaces
.implements Lcom/audible/relationship/controller/IRelationshipCommandFactory;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

.field private final configuration:Lcom/audible/relationship/db/IConfiguration;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

.field private final throwException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/RelationshipCommandFactory;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eventBus can\'t be null."

    .line 58
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lde/greenrobot/event/EventBus;

    iput-object p1, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->eventBus:Lde/greenrobot/event/EventBus;

    const-string p1, "companionMappingClient can\'t be null."

    .line 59
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iput-object p2, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    const-string p1, "relationshipStorage can\'t be null."

    .line 60
    invoke-static {p3, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/relationship/db/IRelationshipStorage;

    iput-object p3, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    const-string p1, "configuration can\'t be null."

    .line 61
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/audible/relationship/db/IConfiguration;

    iput-object p4, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->configuration:Lcom/audible/relationship/db/IConfiguration;

    .line 62
    iput-boolean p5, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->throwException:Z

    return-void
.end method


# virtual methods
.method public createCommand(Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;)Ljava/lang/Runnable;
    .locals 10

    const-string v0, "request can\'t be null."

    .line 69
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null."

    .line 70
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipRequest;->getType()Lcom/audible/relationship/domain/RelationshipRequest$Type;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/audible/relationship/controller/RelationshipCommandFactory$1;->$SwitchMap$com$audible$relationship$domain$RelationshipRequest$Type:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 81
    sget-object v0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating AsinCommand with request %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/audible/relationship/controller/AsinCommand;

    iget-object v3, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v6, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iget-object v7, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    iget-boolean v8, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->throwException:Z

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/audible/relationship/controller/AsinCommand;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Z)V

    return-object v0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown request type!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    sget-object v0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Creating PagingCommand with request %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lcom/audible/relationship/controller/PagingCommand;

    iget-object v3, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v6, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->companionMappingClient:Lcom/audible/relationship/network/client/ICompanionMappingClient;

    iget-object v7, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->relationshipStorage:Lcom/audible/relationship/db/IRelationshipStorage;

    iget-object v8, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->configuration:Lcom/audible/relationship/db/IConfiguration;

    iget-boolean v9, p0, Lcom/audible/relationship/controller/RelationshipCommandFactory;->throwException:Z

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/audible/relationship/controller/PagingCommand;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/relationship/domain/RelationshipRequest;Lcom/audible/relationship/controller/IRelationshipUpdateCallback;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;Z)V

    return-object v0
.end method
