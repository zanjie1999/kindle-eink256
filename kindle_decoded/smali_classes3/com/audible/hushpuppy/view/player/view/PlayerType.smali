.class public final enum Lcom/audible/hushpuppy/view/player/view/PlayerType;
.super Ljava/lang/Enum;
.source "PlayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/view/player/view/PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/view/player/view/PlayerType;

.field public static final enum LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

.field public static final enum MAIN_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

.field public static final enum MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const/4 v1, 0x0

    const-string v2, "LIBRARY_PLAYER"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/view/player/view/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    .line 16
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const/4 v2, 0x1

    const-string v3, "MAIN_PLAYER"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/view/player/view/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MAIN_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    .line 19
    new-instance v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const/4 v3, 0x2

    const-string v4, "MINI_PLAYER"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/view/player/view/PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MINI_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/view/player/view/PlayerType;

    .line 10
    sget-object v5, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->MAIN_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/view/player/view/PlayerType;->$VALUES:[Lcom/audible/hushpuppy/view/player/view/PlayerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/view/player/view/PlayerType;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/view/player/view/PlayerType;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerType;->$VALUES:[Lcom/audible/hushpuppy/view/player/view/PlayerType;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/view/player/view/PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/view/player/view/PlayerType;

    return-object v0
.end method
