.class public final enum Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;
.super Ljava/lang/Enum;
.source "CompanionMappingModificationPersistedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

.field public static final enum INSTANCE:Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    aput-object v0, v2, v1

    .line 11
    sput-object v2, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    return-object v0
.end method
