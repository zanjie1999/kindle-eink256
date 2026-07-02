.class public Lcom/amazon/kindle/krx/reader/ReaderSettings;
.super Lcom/amazon/kindle/krx/reader/BaseReaderSettings;
.source "ReaderSettings.java"


# instance fields
.field private readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/IReaderController;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseReaderSettings;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 2

    .line 32
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getLineSpacingIndex()I

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUITypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getUIFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnnotationsSyncEnabled()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    return v0
.end method
