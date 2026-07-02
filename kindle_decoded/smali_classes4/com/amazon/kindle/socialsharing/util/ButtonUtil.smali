.class public Lcom/amazon/kindle/socialsharing/util/ButtonUtil;
.super Ljava/lang/Object;
.source "ButtonUtil.java"


# direct methods
.method public static getDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_dark_legacy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_dark:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLibraryDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 48
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_dark_legacy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_dark_library:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLibraryLightShareIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_light_legacy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_light_library:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLibraryShareIcon(ZLcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kindle/krx/application/AppType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p0, :cond_1

    .line 97
    sget-object p0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    const/4 p2, 0x0

    if-ne p1, p0, :cond_0

    .line 98
    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryLightShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    const/4 p1, 0x1

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/amazon/kindle/krx/application/AppType;->KFS:Lcom/amazon/kindle/krx/application/AppType;

    if-ne p2, p0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryDarkShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 104
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/ButtonUtil;->getLibraryLightShareIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLightShareIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 64
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_light_legacy:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$drawable;->share_icon_light:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
