.class synthetic Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;
.super Ljava/lang/Object;
.source "UpsellModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/write/UpsellModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$upsell$StateChangeViewSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 295
    invoke-static {}, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->values()[Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$upsell$StateChangeViewSource:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$upsell$StateChangeViewSource:[I

    sget-object v3, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$upsell$StateChangeViewSource:[I

    sget-object v3, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->ERROR:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    :catch_2
    invoke-static {}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->values()[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    :try_start_3
    sget-object v3, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/audible/hushpuppy/model/write/UpsellModelManager$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
