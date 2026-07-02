.class public final Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;
.super Ljava/lang/Object;
.source "RelationshipModifiedInStorageEvent.java"


# instance fields
.field private final newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 44
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;

    .line 46
    iget-object v1, p0, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v2

    :cond_3
    return v0
.end method

.method public getNewRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;->newRelationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
