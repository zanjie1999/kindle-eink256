.class public final Lcom/amazon/kcp/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.kt"


# direct methods
.method public static final isFontSizeAbove(Landroid/content/res/Resources;F)Z
    .locals 1

    const-string v0, "$this$isFontSizeAbove"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
