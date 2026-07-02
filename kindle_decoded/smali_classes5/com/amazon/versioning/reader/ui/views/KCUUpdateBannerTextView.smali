.class public Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "KCUUpdateBannerTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupTheme(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupTheme(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupTheme(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method private setupFontForTextView(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Amazon-Ember-Regular.ttf"

    .line 66
    invoke-static {p1, v0}, Lcom/amazon/versioning/reader/ui/helper/KCUFontCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/4 p1, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    .line 71
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method

.method private setupTheme(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/amazon/versioning/reader/ui/views/KCUUpdateBannerTextView$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/amazon/versioning/R$color;->text_secondary_dark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lcom/amazon/versioning/R$color;->text_secondary_light:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method
