.class public final Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;
.super Ljava/lang/Object;
.source "RelationshipMappingUpdatedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;
    }
.end annotation


# instance fields
.field private final modification:Lcom/audible/relationship/domain/RelationshipMappingModification;

.field private final modificationSource:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;


# direct methods
.method public constructor <init>(Lcom/audible/relationship/domain/RelationshipMappingModification;Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/domain/RelationshipMappingModification;

    iput-object p1, p0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->modification:Lcom/audible/relationship/domain/RelationshipMappingModification;

    .line 44
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    iput-object p2, p0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->modificationSource:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    return-void
.end method


# virtual methods
.method public getRelationshipMappingModification()Lcom/audible/relationship/domain/RelationshipMappingModification;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->modification:Lcom/audible/relationship/domain/RelationshipMappingModification;

    return-object v0
.end method

.method public getRelationshipModificationType()Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->modificationSource:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    return-object v0
.end method
