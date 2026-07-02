.class synthetic Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;
.super Ljava/lang/Object;
.source "DefaultAudibleReadyPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PrepareResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

.field static final synthetic $SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 671
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    sget-object v3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    sget-object v4, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SeekResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INDEX_OUT_OF_BOUNDS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 608
    :catch_3
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    :try_start_4
    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED_FOR_THIS_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v4, 0x5

    :try_start_8
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$AuthenticateResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 439
    :catch_d
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PrepareResult:[I

    :try_start_e
    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->SUCCESS_ASYNC:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PrepareResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 402
    :catch_f
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    :try_start_10
    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->UNSUPPORTED_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FILE_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v5, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$SetDataSourceResult:[I

    sget-object v6, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 350
    :catch_14
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    :try_start_15
    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$StartResult:[I

    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->COULD_NOT_READ_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 265
    :catch_18
    invoke-static {}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    :try_start_19
    sget-object v5, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    sget-object v4, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer$2;->$SwitchMap$com$audible$mobile$player$state$AudiobookPlayerStateDelegate$PauseResult:[I

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method
