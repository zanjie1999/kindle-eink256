.class synthetic Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$1;
.super Ljava/lang/Object;
.source "HushpuppyReaderPluginBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$enable$HushpuppyStateChangeEvent$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->values()[Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$1;->$SwitchMap$com$audible$hushpuppy$common$event$enable$HushpuppyStateChangeEvent$State:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase$1;->$SwitchMap$com$audible$hushpuppy$common$event$enable$HushpuppyStateChangeEvent$State:[I

    sget-object v1, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;->DISABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
