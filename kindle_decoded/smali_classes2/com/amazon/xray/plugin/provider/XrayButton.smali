.class public Lcom/amazon/xray/plugin/provider/XrayButton;
.super Ljava/lang/Object;
.source "XrayButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_BUTTON_PRIORITY:I = 0x64

.field private static final ICON_KEY:Ljava/lang/String; = "xray_icon"

.field private static final LANGUAGE_CHINESE:Ljava/lang/String; = "zh"

.field private static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field private static final LANGUAGE_GERMAN:Ljava/lang/String; = "de"

.field private static final LANGUAGE_JAPANESE:Ljava/lang/String; = "ja"

.field private static final SMD_TEXTBOOK_KEY:Ljava/lang/String; = "textbook_type"

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.provider.XrayButton"


# instance fields
.field private final context:Landroid/content/Context;

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/xray/plugin/provider/XrayButton;-><init>(Landroid/content/Context;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method

.method private isCoverageExpected(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 158
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 159
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    .line 164
    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v1, "zh"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "en"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "de"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ja"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 77
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_button_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/xray/R$drawable;->ic_xray_button_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xray_icon"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/xray/R$string;->xray_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 7

    .line 104
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/amazon/xray/plugin/provider/XrayButton;->TAG:Ljava/lang/String;

    const-string v0, "Book doesn\'t exist. Hiding X-Ray button."

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Xray"

    .line 107
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    .line 108
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayButton;->isTextBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object p1, Lcom/amazon/xray/plugin/provider/XrayButton;->TAG:Ljava/lang/String;

    const-string v0, "This is a reflowable text book. Hide the X-Ray button."

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object p1, Lcom/amazon/xray/plugin/provider/XrayButton;->TAG:Ljava/lang/String;

    const-string v0, "Sidecar file exists, enabling X-Ray button."

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Xray"

    .line 120
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    .line 121
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 124
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayButton;->isCoverageExpected(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Xray"

    move v3, v0

    .line 125
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    const-string v1, "XrayReadingSession"

    .line 128
    invoke-static {p1, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const/4 v1, 0x1

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "XrayNotActionable"

    invoke-virtual {p1, v2, v1}, Lcom/amazon/xray/metrics/Metric;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 131
    sget-object p1, Lcom/amazon/xray/plugin/provider/XrayButton;->TAG:Ljava/lang/String;

    const-string v0, "No sidecar file, but coverage expected; showing disabled X-Ray button"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->DISABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 134
    :cond_3
    sget-object p1, Lcom/amazon/xray/plugin/provider/XrayButton;->TAG:Ljava/lang/String;

    const-string v0, "No sidecar file, and coverage not expected; hiding X-Ray button"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public isTextBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "textbook_type"

    .line 94
    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/content/IBook;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getInstance()Lcom/amazon/xray/plugin/XrayPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/plugin/XrayPlugin;->getXrayIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    const-class v1, Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v0, "com.amazon.xray.ui.activity.LaunchedFromSource"

    const-string v1, "TimesLaunchedFromChrome"

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Xray"

    const-string v1, "Book:Chrome"

    .line 191
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v1, "PressedXray"

    .line 193
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayButton;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->openXrayFromChrome()V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
