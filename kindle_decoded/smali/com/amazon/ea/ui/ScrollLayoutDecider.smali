.class Lcom/amazon/ea/ui/ScrollLayoutDecider;
.super Ljava/lang/Object;
.source "ScrollLayoutDecider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.ScrollLayoutDecider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static onLayoutChangeDecider(Landroid/view/ViewGroup;Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;)V
    .locals 2

    .line 13
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    .line 15
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->onLayoutChangeBottomSheet(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/amazon/ea/ui/ScrollLayoutDecider;->TAG:Ljava/lang/String;

    const-string v1, "Using legacy implementation of scrolling with ScrollView"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p1, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->onLayoutChangeLegacy(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->onLayoutChangeLegacy(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method
