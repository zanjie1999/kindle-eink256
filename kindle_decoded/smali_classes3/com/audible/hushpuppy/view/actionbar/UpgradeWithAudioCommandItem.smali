.class public Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "UpgradeWithAudioCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_IDENTIFIER:Ljava/lang/String; = "UpgradeWithAudio"


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 34
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 35
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "UpgradeWithAudio"

    return-object v0
.end method

.method public getDisplayPreference(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;
    .locals 0

    .line 75
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;->OVERFLOW_ONLY:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPreference;

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 52
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->command_bar_upgrade_with_audio:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 65
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->action_audiobook_white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->action_audiobook_black:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$integer;->upgrade_with_audio_command_item_priority:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 41
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_upgrade_audio:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    sget-object p2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->OVERFLOW_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->UPGRADE_WITH_AUDIO:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    invoke-virtual {p1, p2, v0}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;->reportMetric(Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;)V

    .line 59
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object p2, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPGRADER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
