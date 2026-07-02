.class synthetic Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;
.super Ljava/lang/Object;
.source "SdkBasedAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1157
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INDEX_OUT_OF_BOUNDS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    :catch_1
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    :try_start_2
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
