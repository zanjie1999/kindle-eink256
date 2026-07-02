.class final Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy$1;
.super Ljava/lang/Object;
.source "IPlayerColorStrategy.java"

# interfaces
.implements Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLinkTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_blue2_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_blue1_text:I

    :goto_0
    return p1
.end method

.method public getSubTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_grey3_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_grey2_text:I

    :goto_0
    return p1
.end method

.method public getTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_white_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->player_black_text:I

    :goto_0
    return p1
.end method
