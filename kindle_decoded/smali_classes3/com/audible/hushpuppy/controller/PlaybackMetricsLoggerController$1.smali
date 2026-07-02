.class synthetic Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;
.super Ljava/lang/Object;
.source "PlaybackMetricsLoggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$common$ReaderActivityForegroundStateChangeEvent:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 303
    invoke-static {}, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->values()[Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$event$common$ReaderActivityForegroundStateChangeEvent:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$event$common$ReaderActivityForegroundStateChangeEvent:[I

    sget-object v3, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :catch_1
    invoke-static {}, Lcom/audible/hushpuppy/common/player/PlayerState;->values()[Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    :try_start_2
    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->END:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->ERROR:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 253
    :catch_7
    invoke-static {}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->values()[Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    :try_start_8
    sget-object v3, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
