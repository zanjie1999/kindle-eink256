.class public final Lcom/amazon/kcp/ui/ColorModeUtil;
.super Ljava/lang/Object;
.source "ColorModeUtil.java"


# direct methods
.method public static getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/ui/ColorModeUtil$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocColorMode$Id:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 31
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object p0
.end method
