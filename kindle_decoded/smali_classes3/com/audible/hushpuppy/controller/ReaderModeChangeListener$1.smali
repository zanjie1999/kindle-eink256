.class synthetic Lcom/audible/hushpuppy/controller/ReaderModeChangeListener$1;
.super Ljava/lang/Object;
.source "ReaderModeChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    invoke-static {}, Lcom/audible/hushpuppy/common/player/PlayerState;->values()[Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
