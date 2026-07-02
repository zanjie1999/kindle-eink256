.class synthetic Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;
.super Ljava/lang/Object;
.source "MainFullPlayerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$DecorationType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$TextDecorationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 138
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->values()[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$TextDecorationType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->values()[Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$DecorationType:[I

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->TOP:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$DecorationType:[I

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$DecorationType:[I

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
