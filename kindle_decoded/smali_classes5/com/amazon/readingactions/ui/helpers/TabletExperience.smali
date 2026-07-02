.class public Lcom/amazon/readingactions/ui/helpers/TabletExperience;
.super Ljava/lang/Object;
.source "TabletExperience.java"


# static fields
.field private static final SMALLEST_WIDTH_FOR_TABLET:I = 0x1e0


# direct methods
.method public static shouldUseTabletExperience()Z
    .locals 2

    .line 19
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 21
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
