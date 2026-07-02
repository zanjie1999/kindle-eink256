.class public Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "SwitchToReadingCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_IDENTIFIER:Ljava/lang/String; = "SwitchToReadingBackArrow"


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 36
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 37
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "SwitchToReadingBackArrow"

    return-object v0
.end method

.method public getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 77
    sget-object p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;->START:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    return-object p1
.end method

.method public bridge synthetic getDisplayPosition(Landroid/content/Context;Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->getDisplayPosition(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem$DisplayPosition;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 48
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->command_bar_switch_to_reading_back_arrow:I

    return v0
.end method

.method public getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p2, v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->switch_to_reading_back_arrow_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->switch_to_reading_back_arrow_white:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->getImage(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 43
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_switch_to_reading:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    sget-object p2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->CHROME:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_READING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    invoke-virtual {p1, p2, v0}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;->reportMetric(Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;)V

    .line 71
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToEBook()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 22
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
