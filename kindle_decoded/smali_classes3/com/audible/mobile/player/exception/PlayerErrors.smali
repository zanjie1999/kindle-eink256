.class public final enum Lcom/audible/mobile/player/exception/PlayerErrors;
.super Ljava/lang/Enum;
.source "PlayerErrors.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/exception/PlayerErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/exception/PlayerErrors;


# instance fields
.field private final id:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x17

    new-array v1, v0, [Lcom/audible/mobile/player/exception/PlayerErrors;

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 9
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->CALL_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "CALL_FAILED"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 10
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const-string v6, "UNSUPPORTED_MEDIA"

    invoke-direct {v2, v6, v4, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 11
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v6, "MEDIA_NOT_FOUND"

    invoke-direct {v2, v6, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 12
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const-string v6, "SEEK_OUT_OF_BOUNDS"

    invoke-direct {v2, v6, v4, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 13
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const-string v6, "COULD_NOT_READ_MEDIA"

    invoke-direct {v2, v6, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 14
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->LICENSE_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v6, "LICENSE_FAILED"

    invoke-direct {v2, v6, v4, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 15
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->IO_ERROR:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    const-string v6, "IO_ERROR"

    invoke-direct {v2, v6, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 16
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_MALFORMED:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    const-string v6, "MEDIA_MALFORMED"

    invoke-direct {v2, v6, v4, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 17
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->TIME_OUT:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const-string v6, "TIME_OUT"

    invoke-direct {v2, v6, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 18
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    const-string v6, "UNABLE_TO_ACQUIRE_AUDIOFOCUS"

    const/16 v7, 0x9

    invoke-direct {v2, v6, v7, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 19
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->INTERNAL_PLAYER:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const-string v7, "INTERNAL_PLAYER"

    invoke-direct {v2, v7, v4, v6, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 20
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_CONFIG:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    const-string v7, "REMOTE_PLAYER_CONFIG"

    invoke-direct {v2, v7, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 21
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_SESSION:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xe

    const-string v7, "REMOTE_PLAYER_SESSION"

    invoke-direct {v2, v7, v6, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 22
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_PLAYBACK:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    const-string v7, "REMOTE_PLAYER_PLAYBACK"

    invoke-direct {v2, v7, v4, v6, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 23
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_GENERIC:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const-string v7, "REMOTE_PLAYER_GENERIC"

    invoke-direct {v2, v7, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 24
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_LOADING:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x11

    const-string v7, "REMOTE_PLAYER_LOADING"

    invoke-direct {v2, v7, v6, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 25
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x12

    const-string v7, "CREATING_RENDERER_FAILED"

    invoke-direct {v2, v7, v4, v6, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 26
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->NO_NETWORK:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    const-string v7, "NO_NETWORK"

    invoke-direct {v2, v7, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 27
    sget-object v3, Lcom/audible/mobile/player/LegacyCompatibleError;->UNKNOWN:Lcom/audible/mobile/player/LegacyCompatibleError;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    const-string v7, "UNKNOWN"

    invoke-direct {v2, v7, v6, v5, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 28
    sget-object v3, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->SOURCE:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x15

    const-string v7, "SOURCE"

    invoke-direct {v2, v7, v4, v6, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 29
    sget-object v3, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->RENDERER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x16

    const-string v7, "RENDERER"

    invoke-direct {v2, v7, v5, v4, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 30
    sget-object v3, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->UNEXPECTED:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UNEXPECTED"

    invoke-direct {v2, v5, v6, v0, v3}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v0, Lcom/audible/mobile/player/exception/PlayerErrors;

    .line 31
    sget-object v2, Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;->OTHER:Lcom/audible/mobile/player/exception/ExoPlayerExceptionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTHER"

    const/16 v5, 0x18

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/audible/mobile/player/exception/PlayerErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    aput-object v0, v1, v4

    sput-object v1, Lcom/audible/mobile/player/exception/PlayerErrors;->$VALUES:[Lcom/audible/mobile/player/exception/PlayerErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/audible/mobile/player/exception/PlayerErrors;->id:I

    iput-object p4, p0, Lcom/audible/mobile/player/exception/PlayerErrors;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exception/PlayerErrors;
    .locals 1

    const-class v0, Lcom/audible/mobile/player/exception/PlayerErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/exception/PlayerErrors;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/exception/PlayerErrors;
    .locals 1

    sget-object v0, Lcom/audible/mobile/player/exception/PlayerErrors;->$VALUES:[Lcom/audible/mobile/player/exception/PlayerErrors;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/exception/PlayerErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/exception/PlayerErrors;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/audible/mobile/player/exception/PlayerErrors;->id:I

    return v0
.end method
