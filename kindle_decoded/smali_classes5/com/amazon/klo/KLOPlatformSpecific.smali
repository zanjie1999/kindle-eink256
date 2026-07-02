.class public final Lcom/amazon/klo/KLOPlatformSpecific;
.super Ljava/lang/Object;
.source "KLOPlatformSpecific.java"


# direct methods
.method public static getDetailHeaderBar(Landroid/content/Context;)Lcom/amazon/klo/IKLODetailHeaderBar;
    .locals 1

    .line 24
    sget v0, Lcom/amazon/klo/R$string;->klo_detail_header_bar:I

    invoke-static {p0, v0}, Lcom/amazon/klo/KLOPlatformSpecific;->getPlatformSpecificInstance(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/IKLODetailHeaderBar;

    return-object p0
.end method

.method public static getDevicePlatformSpecificUtils(Landroid/content/Context;)Lcom/amazon/klo/IDevicePlatformSpecificUtils;
    .locals 1

    .line 30
    sget v0, Lcom/amazon/klo/R$string;->klo_platform_specific_utils:I

    invoke-static {p0, v0}, Lcom/amazon/klo/KLOPlatformSpecific;->getPlatformSpecificInstance(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/IDevicePlatformSpecificUtils;

    return-object p0
.end method

.method public static getHeaderBar(Landroid/content/Context;)Lcom/amazon/klo/IKLOHeaderBar;
    .locals 1

    .line 18
    sget v0, Lcom/amazon/klo/R$string;->klo_header_bar:I

    invoke-static {p0, v0}, Lcom/amazon/klo/KLOPlatformSpecific;->getPlatformSpecificInstance(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/IKLOHeaderBar;

    return-object p0
.end method

.method private static getPlatformSpecificInstance(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    .line 41
    sget p0, Lcom/amazon/klo/R$string;->klo_header_bar:I

    if-ne p1, p0, :cond_0

    .line 42
    new-instance p0, Lcom/amazon/klo/KLOHeaderBar;

    invoke-direct {p0}, Lcom/amazon/klo/KLOHeaderBar;-><init>()V

    return-object p0

    .line 43
    :cond_0
    sget p0, Lcom/amazon/klo/R$string;->klo_detail_header_bar:I

    if-ne p1, p0, :cond_1

    .line 44
    new-instance p0, Lcom/amazon/klo/KLODetailHeaderBar;

    invoke-direct {p0}, Lcom/amazon/klo/KLODetailHeaderBar;-><init>()V

    return-object p0

    .line 45
    :cond_1
    sget p0, Lcom/amazon/klo/R$string;->klo_platform_specific_utils:I

    if-ne p1, p0, :cond_2

    .line 46
    new-instance p0, Lcom/amazon/klo/DevicePlatformSpecificUtils;

    invoke-direct {p0}, Lcom/amazon/klo/DevicePlatformSpecificUtils;-><init>()V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
