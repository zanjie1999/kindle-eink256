.class public final enum Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;
.super Ljava/lang/Enum;
.source "GlobalSyncEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

.field public static final enum DB_CREATION_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

.field public static final enum MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

.field public static final enum SIGN_IN_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    const/4 v1, 0x0

    const-string v2, "MANUAL_LIBRARY_SYNC"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    const/4 v2, 0x1

    const-string v3, "SIGN_IN_SYNC"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->SIGN_IN_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    .line 24
    new-instance v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    const/4 v3, 0x2

    const-string v4, "DB_CREATION_SYNC"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->DB_CREATION_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    .line 15
    sget-object v5, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->MANUAL_LIBRARY_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->SIGN_IN_SYNC:Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;
    .locals 1

    .line 15
    const-class v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;
    .locals 1

    .line 15
    sget-object v0, Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->$VALUES:[Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/GlobalSyncEvent;

    return-object v0
.end method
