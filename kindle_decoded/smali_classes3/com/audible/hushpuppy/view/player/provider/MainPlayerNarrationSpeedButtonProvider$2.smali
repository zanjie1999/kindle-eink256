.class synthetic Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$2;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButtonProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->values()[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$2;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/MainPlayerNarrationSpeedButtonProvider$2;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
