.class public Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;
.super Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorationSettingsProvider;
.source "WordWiseContentDecorationSettingsProvider.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private final resources:Landroid/content/res/Resources;

.field final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private wordWiseFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IKRXFooter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/BaseContentDecorationSettingsProvider;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->resources:Landroid/content/res/Resources;

    .line 35
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->wordWiseFooters:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseFooter;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseFooter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->wordWiseFooters:Ljava/util/List;

    new-instance v0, Lcom/amazon/kcp/reader/ui/PinyinFooter;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/PinyinFooter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAdditionalLineSpacing(IILcom/amazon/kindle/krx/content/IBook;)I
    .locals 4

    .line 43
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->showAdditionalLineSpacing(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 49
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/kindle/ww/R$dimen;->wordwise_line_spacing_minimum:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_line_spacing_maximum:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ww/R$dimen;->wordwise_font_size_multiplier:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 53
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getFooters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/IKRXFooter;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->wordWiseFooters:Ljava/util/List;

    return-object v0

    .line 65
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    sget-object v1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_ENABLED:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->showAdditionalLineSpacing(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDecorationProvider()Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    sget-object v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COLOR:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getDecorationColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->getDecorationLocale()Ljava/util/Locale;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    sget-object v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_LANGUAGE:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    sget-object v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;->WORDWISE_DECORATION_COUNTRY:Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider$SettingsKey;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method showAdditionalLineSpacing(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 96
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarForBookLoaded(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 100
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 102
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->pinyinExists()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
