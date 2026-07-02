.class public final enum Lcom/audible/mobile/player/LegacyCompatibleError;
.super Ljava/lang/Enum;
.source "LegacyCompatibleError.java"

# interfaces
.implements Lcom/audible/mobile/player/Error;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/LegacyCompatibleError;",
        ">;",
        "Lcom/audible/mobile/player/Error;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum CALL_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum INTERNAL_PLAYER:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum IO_ERROR:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum LICENSE_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum MEDIA_MALFORMED:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum MEDIA_NOT_FOUND:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum NO_NETWORK:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum REMOTE_PLAYER_CONFIG:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum REMOTE_PLAYER_GENERIC:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum REMOTE_PLAYER_LOADING:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum REMOTE_PLAYER_PLAYBACK:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum REMOTE_PLAYER_SESSION:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum TIME_OUT:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum UNKNOWN:Lcom/audible/mobile/player/LegacyCompatibleError;

.field public static final enum UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 19
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v1, 0x0

    const-string v2, "CALL_FAILED"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->CALL_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 24
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v2, 0x1

    const-string v3, "UNSUPPORTED_MEDIA"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 29
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v3, 0x2

    const-string v4, "MEDIA_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 34
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v4, 0x3

    const-string v5, "SEEK_OUT_OF_BOUNDS"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 39
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v5, 0x4

    const-string v6, "COULD_NOT_READ_MEDIA"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 44
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v6, 0x5

    const-string v7, "LICENSE_FAILED"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->LICENSE_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 49
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v7, 0x6

    const-string v8, "IO_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->IO_ERROR:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 54
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/4 v8, 0x7

    const-string v9, "MEDIA_MALFORMED"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_MALFORMED:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 59
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v9, 0x8

    const-string v10, "TIME_OUT"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->TIME_OUT:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 64
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v10, 0x9

    const-string v11, "UNABLE_TO_ACQUIRE_AUDIOFOCUS"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 69
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v11, 0xa

    const-string v12, "INTERNAL_PLAYER"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->INTERNAL_PLAYER:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 74
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v12, 0xb

    const-string v13, "REMOTE_PLAYER_CONFIG"

    invoke-direct {v0, v13, v12}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_CONFIG:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 79
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v13, 0xc

    const-string v14, "REMOTE_PLAYER_SESSION"

    invoke-direct {v0, v14, v13}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_SESSION:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 84
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v14, 0xd

    const-string v15, "REMOTE_PLAYER_PLAYBACK"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_PLAYBACK:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 90
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v15, 0xe

    const-string v14, "REMOTE_PLAYER_GENERIC"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_GENERIC:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 95
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v14, 0xf

    const-string v15, "REMOTE_PLAYER_LOADING"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_LOADING:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 100
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v15, 0x10

    const-string v14, "CREATING_RENDERER_FAILED"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 105
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v14, 0x11

    const-string v15, "NO_NETWORK"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->NO_NETWORK:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 110
    new-instance v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v15, 0x12

    const-string v14, "UNKNOWN"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/player/LegacyCompatibleError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNKNOWN:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 12
    sget-object v16, Lcom/audible/mobile/player/LegacyCompatibleError;->CALL_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->LICENSE_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->IO_ERROR:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_MALFORMED:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->TIME_OUT:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->INTERNAL_PLAYER:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_CONFIG:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_SESSION:Lcom/audible/mobile/player/LegacyCompatibleError;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_PLAYBACK:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_GENERIC:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_LOADING:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/player/LegacyCompatibleError;->NO_NETWORK:Lcom/audible/mobile/player/LegacyCompatibleError;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/mobile/player/LegacyCompatibleError;->$VALUES:[Lcom/audible/mobile/player/LegacyCompatibleError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/LegacyCompatibleError;
    .locals 1

    .line 12
    const-class v0, Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/LegacyCompatibleError;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/LegacyCompatibleError;
    .locals 1

    .line 12
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->$VALUES:[Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/LegacyCompatibleError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/LegacyCompatibleError;

    return-object v0
.end method
