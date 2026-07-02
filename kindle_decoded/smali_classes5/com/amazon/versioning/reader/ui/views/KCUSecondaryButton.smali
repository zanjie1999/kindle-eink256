.class public Lcom/amazon/versioning/reader/ui/views/KCUSecondaryButton;
.super Lcom/amazon/versioning/reader/ui/views/KCUButton;
.source "KCUSecondaryButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/views/KCUButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/versioning/reader/ui/views/KCUButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected setupFontForTextView(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Amazon-Ember-Regular.ttf"

    .line 65
    invoke-static {p1, v0}, Lcom/amazon/versioning/reader/ui/helper/KCUFontCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->isAndroidTablet(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/high16 p1, 0x41700000    # 15.0f

    .line 71
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x41500000    # 13.0f

    .line 73
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method protected setupTheme(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/amazon/versioning/reader/ui/views/KCUSecondaryButton$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_secondary_button_rubydark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_secondary_button_text_rubydark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 43
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_secondary_button_rubylight:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_secondary_button_text_rubylight:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    return-void
.end method
