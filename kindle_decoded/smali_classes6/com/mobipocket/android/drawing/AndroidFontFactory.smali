.class public Lcom/mobipocket/android/drawing/AndroidFontFactory;
.super Ljava/lang/Object;
.source "AndroidFontFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static availableSizes:[I

.field public static defaultFontIndex:I


# instance fields
.field private fontFileExtensions:[Ljava/lang/String;

.field private hasEmbeddedFonts:Z

.field protected language:Ljava/lang/String;

.field protected supportedFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field protected typefaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    const/4 v0, 0x2

    .line 41
    sput v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x12
        0x15
        0x18
        0x1b
        0x1e
        0x21
        0x24
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".ttf"

    const-string v1, ".otf"

    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->fontFileExtensions:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->typefaces:Ljava/util/Map;

    return-void
.end method

.method public static getFontSizes()[I
    .locals 1

    .line 44
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    return-object v0
.end method

.method public static setFontSizes([I)V
    .locals 0

    .line 48
    sput-object p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    return-void
.end method


# virtual methods
.method public getDefaultFamilyName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getDefaultFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;
    .locals 10

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/system/fonts"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/data/securedStorageLocation/com.amazon.providers.contentsupport/data/fonts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 257
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInternalFontDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 262
    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->fontFileExtensions:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_1

    .line 263
    aget-object v8, v1, v7

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 265
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 266
    monitor-exit p0

    return-object v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 271
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    .line 293
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSupportedFonts()[Lcom/mobipocket/android/drawing/FontFamily;
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->populateSupportedFonts()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobipocket/android/drawing/FontFamily;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_1

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    invoke-static {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->typefaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 232
    :try_start_1
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0, p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontPath(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catch_0
    :try_start_2
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found on device. Fallback to SERIF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->typefaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasSupportedFonts()Z
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getSupportedFonts()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAvailableForPlatform(Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 3

    .line 169
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 176
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized populateSupportedFonts()V
    .locals 6

    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    .line 70
    :goto_0
    iget-boolean v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->hasEmbeddedFonts:Z

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-static {}, Lcom/mobipocket/android/drawing/FontFamily;->values()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 76
    sget-object v5, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v4}, Lcom/mobipocket/android/drawing/FontFamily;->isCustomFont()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportsNonCustomFonts()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    :cond_3
    invoke-virtual {v4, v0}, Lcom/mobipocket/android/drawing/FontFamily;->isAvailableForLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 84
    invoke-virtual {v4}, Lcom/mobipocket/android/drawing/FontFamily;->isRenderingFont()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 86
    invoke-virtual {p0, v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportNonValidateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    :cond_4
    invoke-virtual {p0, v4}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->isAvailableForPlatform(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    iget-object v5, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_6
    invoke-static {v0}, Lcom/amazon/kcp/font/RequiredFontLanguage;->doesRequireFont(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    :cond_7
    invoke-static {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->ARABIC:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne v1, v2, :cond_9

    .line 103
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_8
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 108
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->NOTO_NASKH:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_9
    invoke-static {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne v1, v2, :cond_b

    .line 113
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 114
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->DROID_SERIF:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_a
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 120
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v1, v2, :cond_b

    .line 121
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_b
    invoke-static {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne v1, v2, :cond_d

    .line 126
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 127
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v0, v1, :cond_d

    .line 129
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 132
    :cond_c
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_d
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHasEmbeddedFonts(Z)V
    .locals 1

    monitor-enter p0

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->hasEmbeddedFonts:Z

    if-eq v0, p1, :cond_0

    .line 193
    iput-boolean p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->hasEmbeddedFonts:Z

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLanguage(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 146
    invoke-static {p1}, Lcom/amazon/kindle/utils/LanguageUtils;->formatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/font/DownloadedFont;->areAnyFontsRequiredByLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 155
    monitor-exit p0

    return-void

    .line 158
    :cond_4
    :try_start_1
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->language:Ljava/lang/String;

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->supportedFonts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected supportNonValidateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected supportsNonCustomFonts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
