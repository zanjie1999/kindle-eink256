.class public Lcom/amazon/versioning/reader/ui/views/KCUToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "KCUToolbar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUToolbar;->setupTheme(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUToolbar;->setupTheme(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUToolbar;->setupTheme(Landroid/content/Context;)V

    return-void
.end method

.method private setupTheme(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/amazon/versioning/reader/ui/views/KCUToolbar$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->update_panel_banner_background_rubydark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 42
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->update_panel_banner_background_rubylight:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method
