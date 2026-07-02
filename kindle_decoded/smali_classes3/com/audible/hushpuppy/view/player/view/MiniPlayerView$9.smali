.class synthetic Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;
.super Ljava/lang/Object;
.source "MiniPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 269
    invoke-static {}, Lcom/audible/hushpuppy/common/player/PlayerViewState;->values()[Lcom/audible/hushpuppy/common/player/PlayerViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_NEEDS_DOWNLOAD:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADING:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOADED:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$9;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerViewState:[I

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerViewState;->OWNED_AND_DOWNLOAD_ERROR:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
