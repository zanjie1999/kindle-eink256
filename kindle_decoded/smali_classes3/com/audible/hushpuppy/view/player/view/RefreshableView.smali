.class public abstract Lcom/audible/hushpuppy/view/player/view/RefreshableView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "RefreshableView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract getPlayerType()Lcom/audible/hushpuppy/view/player/view/PlayerType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract refresh()V
.end method
