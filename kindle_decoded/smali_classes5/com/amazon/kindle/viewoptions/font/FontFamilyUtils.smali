.class public final Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;
.super Ljava/lang/Object;
.source "FontFamilyUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

.field private static final TAG:Ljava/lang/String;

.field private static fontFamilyInfoMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final guidanceLetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedLanguageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    .line 17
    const-class v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(FontFamilyUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "\u5b57"

    const-string/jumbo v2, "zh-hant"

    .line 20
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "zh"

    .line 21
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ja"

    const-string/jumbo v2, "\u3042"

    .line 22
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u0905"

    const-string v2, "hi"

    .line 23
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "mr"

    .line 24
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "gu"

    const-string/jumbo v2, "\u0a85"

    .line 25
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ta"

    const-string/jumbo v2, "\u0b85"

    .line 26
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ml"

    const-string/jumbo v2, "\u0d05"

    .line 27
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ar"

    const-string/jumbo v2, "\u0644\u0627"

    .line 28
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 19
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->guidanceLetterMap:Ljava/util/Map;

    const-string v1, "en"

    const-string/jumbo v2, "zh-hant"

    const-string v3, "ja"

    const-string/jumbo v4, "zh"

    const-string v5, "mr"

    const-string v6, "hi"

    const-string/jumbo v7, "ta"

    const-string v8, "ml"

    const-string v9, "ar"

    const-string v10, "gu"

    .line 31
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->supportedLanguageSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearFontFamilyInfoMap()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->fontFamilyInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final getFontFamily(J)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 5

    .line 78
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamilyInfos()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    .line 80
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamilyId()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-nez v4, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    return-object p0

    .line 84
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    const-string p1, "Utils.getFactory()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p0

    const-string p1, "Utils.getFactory().fontFactory"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mobipocket/android/drawing/FontFamily;->getValue(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    const-string p1, "FontFamily.getValue(Util\u2026actory.defaultFamilyName)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getFontFamilyInfoMap()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFontFamilyInfoMap fontFamilyInfoMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->fontFamilyInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->fontFamilyInfoMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->fontOptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->mapKSDKFontInfoToReaderFontFamilyInfo(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->fontFamilyInfoMap:Ljava/util/LinkedHashMap;

    .line 162
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->fontFamilyInfoMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static final getFontId(Lcom/mobipocket/android/drawing/FontFamily;)Ljava/lang/Long;
    .locals 2

    const-string v0, "fontFamily"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamilyInfoMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;->getFontFamilyId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getReaderFontFamily(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;
    .locals 1

    const-string v0, "embedded_font"

    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object p1, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p1, p2}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceNameAndLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    const-string p2, "FontFamily.fromTypeFaceN\u2026ksdkFontFamily, language)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final mapKSDKFontInfoToReaderFontFamilyInfo(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapKSDKFontInfoToReaderFontFamilyInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/BookContext;->getBookLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ksdk/presets/FontInfo;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fontInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    sget-object v3, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/FontInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fontInfo.fontFamily"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getReaderFontFamily(Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontFamily: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->PUBLISHER_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    if-ne v3, v4, :cond_2

    .line 113
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v4

    if-nez v4, :cond_3

    .line 114
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    const-string v5, "Utils.getFactory()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/kcp/font/FontConfigInitializer;->validateFont(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->isAvailableForPlatform(Lcom/mobipocket/android/drawing/FontFamily;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    :cond_3
    new-instance v4, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3}, Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;-><init>(JLcom/mobipocket/android/drawing/FontFamily;)V

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add fontInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 123
    :cond_4
    sget-object p1, Lcom/mobipocket/android/drawing/LanguageSet;->TCN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p1, v1}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    invoke-static {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMTC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq p1, v2, :cond_5

    .line 125
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_5
    sget-object p1, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-virtual {p1, v1}, Lcom/mobipocket/android/drawing/LanguageSet;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 131
    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 132
    sget-object p1, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq p1, v1, :cond_7

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    :cond_6
    sget-object p1, Lcom/mobipocket/android/drawing/FontFamily;->STBSHUSONG:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 139
    sget-object p1, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final getFontFamilyInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/viewoptions/font/FontFamilyInfo;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->getFontFamilyInfoMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "fontFamilyInfoMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGuidanceLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->guidanceLetterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "Aa"

    :cond_0
    return-object p1
.end method

.method public final getSupportedLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->supportedLanguageSet:Ljava/util/Set;

    return-object v0
.end method
