.class public final enum Lcom/audible/mobile/player/service/AudioFocusOptions;
.super Ljava/lang/Enum;
.source "AudioFocusOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/service/AudioFocusOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/service/AudioFocusOptions;

.field public static final enum DUCK_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

.field public static final enum PAUSE_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/audible/mobile/player/service/AudioFocusOptions;

    const/4 v1, 0x0

    const-string v2, "PAUSE_WHEN_LOSS_CAN_DUCK"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/service/AudioFocusOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/service/AudioFocusOptions;->PAUSE_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

    .line 17
    new-instance v0, Lcom/audible/mobile/player/service/AudioFocusOptions;

    const/4 v2, 0x1

    const-string v3, "DUCK_WHEN_LOSS_CAN_DUCK"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/service/AudioFocusOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/service/AudioFocusOptions;->DUCK_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/player/service/AudioFocusOptions;

    .line 6
    sget-object v4, Lcom/audible/mobile/player/service/AudioFocusOptions;->PAUSE_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/player/service/AudioFocusOptions;->$VALUES:[Lcom/audible/mobile/player/service/AudioFocusOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;Lcom/audible/mobile/player/service/AudioFocusOptions;)Lcom/audible/mobile/player/service/AudioFocusOptions;
    .locals 5

    .line 30
    invoke-static {}, Lcom/audible/mobile/player/service/AudioFocusOptions;->values()[Lcom/audible/mobile/player/service/AudioFocusOptions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/service/AudioFocusOptions;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/player/service/AudioFocusOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/service/AudioFocusOptions;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/service/AudioFocusOptions;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocusOptions;->$VALUES:[Lcom/audible/mobile/player/service/AudioFocusOptions;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/service/AudioFocusOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/service/AudioFocusOptions;

    return-object v0
.end method
