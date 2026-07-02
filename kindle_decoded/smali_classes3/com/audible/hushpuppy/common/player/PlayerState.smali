.class public final enum Lcom/audible/hushpuppy/common/player/PlayerState;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/player/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum END:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum ERROR:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum IDLE:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum PLAYBACK_COMPLETED:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

.field public static final enum STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->IDLE:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 14
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 16
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v3, 0x2

    const-string v4, "STARTED"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 20
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v5, 0x4

    const-string v6, "PLAYBACK_COMPLETED"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v6, 0x5

    const-string v7, "STOPPED"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 24
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v7, 0x6

    const-string v8, "END"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->END:Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    const/4 v8, 0x7

    const-string v9, "ERROR"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/player/PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->ERROR:Lcom/audible/hushpuppy/common/player/PlayerState;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/audible/hushpuppy/common/player/PlayerState;

    .line 10
    sget-object v10, Lcom/audible/hushpuppy/common/player/PlayerState;->IDLE:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v10, v9, v1

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v2

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v3

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v4

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v5

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v6

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->END:Lcom/audible/hushpuppy/common/player/PlayerState;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/audible/hushpuppy/common/player/PlayerState;->$VALUES:[Lcom/audible/hushpuppy/common/player/PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/player/PlayerState;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/player/PlayerState;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/player/PlayerState;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->$VALUES:[Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/player/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/player/PlayerState;

    return-object v0
.end method
