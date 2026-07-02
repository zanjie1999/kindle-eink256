.class public final Lcom/audible/relationship/domain/RelationshipRequest;
.super Ljava/lang/Object;
.source "RelationshipRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/relationship/domain/RelationshipRequest$Type;
    }
.end annotation


# instance fields
.field private final payload:Ljava/lang/String;

.field private final type:Lcom/audible/relationship/domain/RelationshipRequest$Type;


# direct methods
.method public constructor <init>(Lcom/audible/relationship/domain/RelationshipRequest$Type;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type can\'t be null"

    .line 42
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/relationship/domain/RelationshipRequest$Type;

    iput-object p1, p0, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    .line 43
    iput-object p2, p0, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 80
    const-class v2, Lcom/audible/relationship/domain/RelationshipRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    check-cast p1, Lcom/audible/relationship/domain/RelationshipRequest;

    .line 86
    iget-object v2, p0, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    iget-object v3, p1, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    if-eq v2, v3, :cond_2

    return v1

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/audible/relationship/domain/RelationshipRequest$Type;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelationshipRequest{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipRequest;->type:Lcom/audible/relationship/domain/RelationshipRequest$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/relationship/domain/RelationshipRequest;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
