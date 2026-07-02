.class synthetic Lcom/audible/hushpuppy/controller/ViewController$1;
.super Ljava/lang/Object;
.source "ViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/ViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 229
    invoke-static {}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->values()[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v3, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :catch_1
    invoke-static {}, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->values()[Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    :try_start_2
    sget-object v3, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->NONE:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v2, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAYED_PURCHASE_QUEUED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->DELAY_PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_REQUESTED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_CANCELLED:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/audible/hushpuppy/controller/ViewController$1;->$SwitchMap$com$audible$hushpuppy$model$read$IUpsellModel$UpsellState:[I

    sget-object v1, Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;->PURCHASE_FAILED_TIMEOUT:Lcom/audible/hushpuppy/model/read/IUpsellModel$UpsellState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
