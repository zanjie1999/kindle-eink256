.class public Lcom/amazon/xray/ui/util/TextScalingUtil;
.super Ljava/lang/Object;
.source "TextScalingUtil.java"


# static fields
.field private static final EPSILON:F = 0.05f

.field private static final FONT_SCALE_CAP:F = 1.25f


# direct methods
.method public static getFontScale()F
    .locals 3

    .line 59
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static isFontScaleOverCap()Z
    .locals 2

    .line 40
    invoke-static {}, Lcom/amazon/xray/ui/util/TextScalingUtil;->getFontScale()F

    move-result v0

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static scaleTextWithCap(Landroid/widget/TextView;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {}, Lcom/amazon/xray/ui/util/TextScalingUtil;->getFontScale()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
