.class public final enum Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;
.super Ljava/lang/Enum;
.source "RelationshipMappingUpdatedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelationshipMappingModificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

.field public static final enum ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

.field public static final enum PAGING:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    const/4 v1, 0x0

    const-string v2, "ASIN_PAIR"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    .line 31
    new-instance v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    const/4 v2, 0x1

    const-string v3, "PAGING"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->PAGING:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    .line 22
    sget-object v4, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->$VALUES:[Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;
    .locals 1

    .line 22
    const-class v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;
    .locals 1

    .line 22
    sget-object v0, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->$VALUES:[Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-virtual {v0}, [Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    return-object v0
.end method
