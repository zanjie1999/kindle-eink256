.class public final enum Lcom/audible/android/kcp/player/receiver/PlayerAction;
.super Ljava/lang/Enum;
.source "PlayerAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/player/receiver/PlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/player/receiver/PlayerAction;

.field private static final CLASS_NAME:Ljava/lang/String;

.field public static final enum OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

.field public static final enum PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

.field public static final enum PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

.field public static final enum STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

.field public static final enum STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    invoke-direct {v0, v2, v1, v2}, Lcom/audible/android/kcp/player/receiver/PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    new-instance v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v2, 0x1

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v2, v3}, Lcom/audible/android/kcp/player/receiver/PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    new-instance v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3, v4}, Lcom/audible/android/kcp/player/receiver/PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    new-instance v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v4, 0x3

    const-string v5, "STOP"

    invoke-direct {v0, v5, v4, v5}, Lcom/audible/android/kcp/player/receiver/PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    .line 16
    new-instance v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v5, 0x4

    const-string v6, "STOP_PLAYER"

    invoke-direct {v0, v6, v5, v6}, Lcom/audible/android/kcp/player/receiver/PlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/android/kcp/player/receiver/PlayerAction;

    .line 13
    sget-object v7, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/android/kcp/player/receiver/PlayerAction;->$VALUES:[Lcom/audible/android/kcp/player/receiver/PlayerAction;

    .line 18
    const-class v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static fromActionString(Landroid/content/Context;Ljava/lang/String;)Lcom/audible/android/kcp/player/receiver/PlayerAction;
    .locals 5

    .line 30
    invoke-static {}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->values()[Lcom/audible/android/kcp/player/receiver/PlayerAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3, p0}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/player/receiver/PlayerAction;
    .locals 1

    .line 13
    const-class v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/player/receiver/PlayerAction;
    .locals 1

    .line 13
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->$VALUES:[Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/player/receiver/PlayerAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/player/receiver/PlayerAction;

    return-object v0
.end method


# virtual methods
.method public getActionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->mIntentAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->CLASS_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->mAction:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/audible/android/kcp/util/IntentUtil;->buildIntentAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->mIntentAction:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->mIntentAction:Ljava/lang/String;

    return-object p1
.end method
