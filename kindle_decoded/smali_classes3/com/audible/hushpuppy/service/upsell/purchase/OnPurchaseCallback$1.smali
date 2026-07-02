.class synthetic Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback$1;
.super Ljava/lang/Object;
.source "OnPurchaseCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$hushpuppy$common$http$HttpStatus$StatusType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->values()[Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback$1;->$SwitchMap$com$audible$hushpuppy$common$http$HttpStatus$StatusType:[I

    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SUCCESS:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback$1;->$SwitchMap$com$audible$hushpuppy$common$http$HttpStatus$StatusType:[I

    sget-object v1, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SERVERERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/OnPurchaseCallback$1;->$SwitchMap$com$audible$hushpuppy$common$http$HttpStatus$StatusType:[I

    sget-object v1, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->CLIENTERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
