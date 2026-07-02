.class synthetic Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;
.super Ljava/lang/Object;
.source "StartActionsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$startaction$StartActionCancelState:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    invoke-static {}, Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;->values()[Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$event$startaction$StartActionCancelState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;->PURCHASE_CANCEL:Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$event$startaction$StartActionCancelState:[I

    sget-object v3, Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;->RETURN_FROM_PURCHASE_CANCEL:Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :catch_1
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ColorMode;->values()[Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    :try_start_2
    sget-object v3, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v3, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v4, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    sget-object v5, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 130
    :catch_5
    invoke-static {}, Lcom/audible/hushpuppy/common/player/PlayerViewState;->values()[Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    :try_start_6
    sget-object v5, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v4, Lcom/audible/hushpuppy/common/player/PlayerViewState;->UNOWNED_TOA_ELIGIBLE:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->DELAYED_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
