.class synthetic Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;
.super Ljava/lang/Object;
.source "LibraryPersistentPlayerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$DecorationPosition:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 137
    invoke-static {}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->values()[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    :catch_3
    invoke-static {}, Lcom/amazon/kindle/krx/ui/DecorationPosition;->values()[Lcom/amazon/kindle/krx/ui/DecorationPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider$1;->$SwitchMap$com$amazon$kindle$krx$ui$DecorationPosition:[I

    :try_start_4
    sget-object v2, Lcom/amazon/kindle/krx/ui/DecorationPosition;->BOTTOM:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
