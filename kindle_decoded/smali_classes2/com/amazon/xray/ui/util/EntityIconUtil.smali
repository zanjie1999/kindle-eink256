.class public Lcom/amazon/xray/ui/util/EntityIconUtil;
.super Ljava/lang/Object;
.source "EntityIconUtil.java"


# static fields
.field private static final ICON_PERSON:I = 0x1

.field private static final ICON_TERM:I = 0x2


# direct methods
.method private static getIconId(Lcom/amazon/xray/model/object/Entity;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getType()Lcom/amazon/xray/model/object/EntityType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getType()Lcom/amazon/xray/model/object/EntityType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/xray/model/object/EntityType;->getIconId()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public static getLargeIcon(Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 50
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getLargeIcon(Lcom/amazon/xray/ui/util/XrayThemeUtil;Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLargeIcon(Lcom/amazon/xray/ui/util/XrayThemeUtil;Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 64
    invoke-static {p1}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getIconId(Lcom/amazon/xray/model/object/Entity;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getEntityIconTermLarge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getEntityIconCharacterLarge()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getSmallIcon(Lcom/amazon/xray/model/object/Entity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 32
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lcom/amazon/xray/ui/util/EntityIconUtil;->getIconId(Lcom/amazon/xray/model/object/Entity;)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getEntityIconTermSmall()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getEntityIconCharacterSmall()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
