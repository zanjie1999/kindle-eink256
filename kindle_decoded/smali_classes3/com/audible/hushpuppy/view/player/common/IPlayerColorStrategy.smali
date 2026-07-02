.class public interface abstract Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;
.super Ljava/lang/Object;
.source "IPlayerColorStrategy.java"


# static fields
.field public static final BASE_VIEW_STRATEGY:Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy$1;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy$1;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;->BASE_VIEW_STRATEGY:Lcom/audible/hushpuppy/view/player/common/IPlayerColorStrategy;

    return-void
.end method


# virtual methods
.method public abstract getLinkTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
.end method

.method public abstract getSubTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
.end method

.method public abstract getTitleTextColor(Lcom/amazon/kindle/krx/ui/ColorMode;)I
.end method
