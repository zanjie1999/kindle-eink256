.class public Lcom/amazon/kcp/reader/StandAlonePdfReaderActivity;
.super Lcom/amazon/kcp/reader/PdfReaderActivity;
.source "StandAlonePdfReaderActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/reader/StandAlonePdfReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StandAlonePdfReaderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/kcp/reader/PdfReaderActivity;->onResume()V

    .line 16
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache()V

    return-void
.end method

.method public recordSettings()V
    .locals 2

    .line 40
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->recordChangeInSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget p1, Lcom/amazon/kindle/thirdparty/R$style;->Base_Kindle_Dark_NonLinear:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_0
    return-void
.end method
