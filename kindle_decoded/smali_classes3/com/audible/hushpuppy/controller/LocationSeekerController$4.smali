.class synthetic Lcom/audible/hushpuppy/controller/LocationSeekerController$4;
.super Ljava/lang/Object;
.source "LocationSeekerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/LocationSeekerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 456
    invoke-static {}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->values()[Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    sget-object v3, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :catch_1
    invoke-static {}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    :try_start_2
    sget-object v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PLAY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    sget-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->SPINNER:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->DOWNLOAD:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
