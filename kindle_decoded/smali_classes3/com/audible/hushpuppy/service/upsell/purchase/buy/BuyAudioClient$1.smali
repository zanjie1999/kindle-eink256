.class synthetic Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;
.super Ljava/lang/Object;
.source "BuyAudioClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$service$upsell$UpsellSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->values()[Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;->$SwitchMap$com$audible$hushpuppy$service$upsell$UpsellSource:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->ACTION_BAR:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioClient$1;->$SwitchMap$com$audible$hushpuppy$service$upsell$UpsellSource:[I

    sget-object v1, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->START_ACTIONS:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
