.class public Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;
.super Lcom/mobipocket/android/drawing/AndroidFontFactory;
.source "StandaloneAndroidFontFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 3

    .line 75
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionarySecondaryLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/amazon/kcp/font/DownloadedFont;->areAnyFontsRequiredByLanguage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 53
    :try_start_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    const-string v1, ".ttf"

    const-string v2, ".ttc"

    const-string v3, ".otf"

    const-string v4, ".otc"

    .line 54
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 55
    aget-object v3, v1, v2

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/fonts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 58
    monitor-exit p0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_1

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->typefaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0, p1}, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 36
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catch_0
    :try_start_2
    sget-object v0, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typeface cannot be created from font file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Fallback to SERIF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lcom/mobipocket/android/drawaing/StandaloneAndroidFontFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typeface font path not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Fallback to SERIF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->typefaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected supportNonValidateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 1

    .line 97
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getLanguages()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p1

    return p1
.end method

.method protected supportsNonCustomFonts()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
