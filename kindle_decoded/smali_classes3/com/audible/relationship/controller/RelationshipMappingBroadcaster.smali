.class public final Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;
.super Ljava/lang/Object;
.source "RelationshipMappingBroadcaster.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 59
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->context:Landroid/content/Context;

    return-void
.end method

.method private broadcastUpdatedCompanions(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-direct {p0, p2, p1}, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->buildIntent(Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 95
    sget-object p2, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Broadcasting %s"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private buildIntent(Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/relationship/domain/Relationship;

    .line 114
    invoke-virtual {v2}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    sget-object v4, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-virtual {v2}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    sget-object v3, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "AUDIOBOOK_ASINS"

    .line 124
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "EBOOK_ASINS"

    .line 125
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "updatedEvent is null! Don\'t broadcast anything."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->getRelationshipMappingModification()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object p1

    if-nez p1, :cond_1

    .line 77
    sget-object p1, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "RelationshipMappingModification is null! Don\'t broadcast anything."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getAddRelationship()Ljava/util/List;

    move-result-object v0

    const-string v1, "com.audible.hushpuppy.action.COMPANION_ADDED"

    invoke-direct {p0, v0, v1}, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->broadcastUpdatedCompanions(Ljava/util/List;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getDeleteRelationship()Ljava/util/List;

    move-result-object p1

    const-string v0, "com.audible.hushpuppy.action.COMPANION_DELETED"

    invoke-direct {p0, p1, v0}, Lcom/audible/relationship/controller/RelationshipMappingBroadcaster;->broadcastUpdatedCompanions(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
