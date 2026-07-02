.class public Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;
.super Ljava/lang/Object;
.source "WordWisePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "Word Wise plugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# static fields
.field public static final DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

.field private static final TAG:Ljava/lang/String;

.field private static pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

.field protected static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected static sharedPreferences:Landroid/content/SharedPreferences;

.field private static wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;


# instance fields
.field private pinyinButton:Lcom/amazon/kcp/reader/ui/PinyinButton;

.field private sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private tutorialProvider:Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;

.field private wordWiseButton:Lcom/amazon/kcp/reader/ui/WordWiseButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->TAG:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 81
    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 82
    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    .line 83
    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wordWiseButton:Lcom/amazon/kcp/reader/ui/WordWiseButton;

    .line 87
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pinyinButton:Lcom/amazon/kcp/reader/ui/PinyinButton;

    .line 93
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)Lcom/amazon/kcp/reader/ui/WordWiseButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wordWiseButton:Lcom/amazon/kcp/reader/ui/WordWiseButton;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;Lcom/amazon/kcp/reader/ui/WordWiseButton;)Lcom/amazon/kcp/reader/ui/WordWiseButton;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wordWiseButton:Lcom/amazon/kcp/reader/ui/WordWiseButton;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)Lcom/amazon/kcp/reader/ui/PinyinButton;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pinyinButton:Lcom/amazon/kcp/reader/ui/PinyinButton;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;Lcom/amazon/kcp/reader/ui/PinyinButton;)Lcom/amazon/kcp/reader/ui/PinyinButton;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pinyinButton:Lcom/amazon/kcp/reader/ui/PinyinButton;

    return-object p1
.end method

.method private clearUserPreferences()V
    .locals 2

    .line 297
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->clearShownFtueDialog()V

    .line 309
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    return-void
.end method

.method private getActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$2;-><init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V

    return-object v0
.end method

.method private getActionPinyinButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$3;-><init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V

    return-object v0
.end method

.method private getDecorationSettingsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;-><init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V

    return-object v0
.end method

.method public static getPinyinDifficultyLevel()I
    .locals 3

    .line 669
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 671
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 647
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static getSelectedWordWiseLanguage()Ljava/lang/String;
    .locals 3

    .line 696
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 697
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 699
    :cond_0
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getWordWiseDecorationProvider()Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;
    .locals 1

    .line 466
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    return-object v0
.end method

.method public static getWordWiseDifficultyLevel()I
    .locals 3

    .line 660
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 662
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static isCurrentBookSidecarLoaded()Z
    .locals 1

    .line 559
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarForBookLoaded(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Z
    .locals 3

    .line 358
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 359
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isFooterVisible()Z
    .locals 1

    .line 443
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isFooterVisible(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    return v0
.end method

.method public static isFooterVisible(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 456
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object p0

    .line 457
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isLowConfidenceEnabled()Z
    .locals 3

    .line 682
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 684
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    .line 685
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isPinyinCapable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 544
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    .line 549
    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 550
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isChineseLanguage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public static isPinyinEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPinyinSupported()Z
    .locals 1

    .line 511
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method

.method public static isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 503
    invoke-static {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinCapable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0
.end method

.method public static isPinyinVisible()Z
    .locals 3

    .line 602
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 603
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 475
    invoke-static {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWordWiseCapable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 518
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    .line 523
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 524
    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 525
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object p0

    .line 526
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 528
    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v3, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v3, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->YJBINARY:Lcom/amazon/kindle/krx/content/BookFormat;

    .line 529
    invoke-virtual {v3, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    return v4

    .line 531
    :cond_3
    sget-object v3, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    invoke-virtual {v3, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    return v4

    :cond_5
    :goto_0
    return v0
.end method

.method public static isWordWiseEnabled()Z
    .locals 3

    .line 338
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public static isWordWiseSupported()Z
    .locals 1

    .line 493
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    return v0
.end method

.method public static isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 484
    invoke-static {p0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarExists(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0
.end method

.method public static isWordWiseVisible()Z
    .locals 3

    .line 567
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 568
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private persistSettingsFragment()V
    .locals 3

    .line 261
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked(Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked(Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;)Z

    move-result v1

    .line 265
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getLanguageValue(Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;)Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 271
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->TAG:Ljava/lang/String;

    const-string v2, "Word Wise turned on before initialization"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static refreshGlosses()V
    .locals 2

    .line 613
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    .line 616
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 618
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    .line 621
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    :cond_1
    return-void
.end method

.method public static refreshLineSpacingAndGlosses()V
    .locals 2

    .line 629
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    .line 632
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 634
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    .line 637
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 639
    :cond_1
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->applyContentDecorationSettingsInDocView()V

    return-void
.end method

.method private registerProvidersAndListeners()V
    .locals 3

    .line 148
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getDecorationSettingsProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationSettingsProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 151
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    .line 152
    new-instance v0, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    .line 153
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 154
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 155
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/WordwiseBookNavigationListener;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 156
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 157
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 158
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 159
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->wwProvider:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->pyProvider:Lcom/amazon/kcp/reader/ui/PinyinDecorationProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 164
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getActionPinyinButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 167
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 168
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 169
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 172
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/WordWiseInfoCardProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 175
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->hasNewFtueDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 180
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/wordwise/plugin/WordwiseLibraryEventListener;-><init>(Lcom/amazon/kindle/krx/library/ILibraryManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 183
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContentUpdateManager()Lcom/amazon/kindle/krx/update/IContentUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/wordwise/plugin/WordwiseContentUpdateHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/update/IContentUpdateManager;->registerContentUpdateHandler(Lcom/amazon/kindle/krx/update/IContentUpdateHandler;)V

    .line 186
    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$1;-><init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 195
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 197
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->tutorialProvider:Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;

    .line 198
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->tutorialProvider:Lcom/amazon/kcp/reader/ui/WordWiseTutorialProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method

.method private setDefaultUserPreferences()V
    .locals 3

    .line 280
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 281
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isDefaultEnabled()Z

    move-result v0

    .line 283
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    .line 284
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 287
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 288
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setFeatureEnabled(ZLjava/lang/String;)V
    .locals 2

    .line 366
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p0, :cond_2

    .line 376
    sget-object p1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 377
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload()V

    .line 380
    :cond_1
    sget-object p1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->TAG:Ljava/lang/String;

    const-string v1, "Word Wise turned on"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 383
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->cleanUp(Ljava/lang/String;)V

    .line 384
    sget-object p1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->TAG:Ljava/lang/String;

    const-string v1, "Word Wise turned off"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter()V

    if-eqz p0, :cond_3

    .line 389
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 391
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshLineSpacingAndGlosses()V

    :cond_4
    return-void
.end method

.method public static setPinyinVisible(Z)V
    .locals 2

    .line 590
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static setSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 651
    sput-object p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static setWordWiseEnabled(Z)V
    .locals 1

    .line 400
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setFeatureEnabled(ZLjava/lang/String;)V

    return-void
.end method

.method public static setWordWiseVisible(Z)V
    .locals 2

    .line 578
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 580
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_VISIBLE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static updateFooter()V
    .locals 1

    .line 417
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->updateFooter(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method public static updateFooter(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 426
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->sidecarExists(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->pinyinExists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isFooterVisible(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->toggleFooter()V

    return-void

    .line 435
    :cond_1
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshFooter()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 6

    .line 102
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->TAG:Ljava/lang/String;

    const-string v2, "initializing"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WordWiseSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerSharedPreferencesForBackup(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 109
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 110
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->initialize()V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->persistSettingsFragment()V

    .line 117
    invoke-static {}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->values()[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 118
    sget-object v4, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    sget-object v4, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 121
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0.0"

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setDefaultUserPreferences()V

    goto :goto_1

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->clearUserPreferences()V

    .line 132
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->registerProvidersAndListeners()V

    .line 139
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getPluginServicesRepository()Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWiseServices;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/pluginservices/IPluginServicesRepository;->registerWordWiseServices(Lcom/amazon/kindle/krx/pluginservices/wordwise/IWordWiseServices;)V

    return-void
.end method

.method public declared-synchronized onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setDefaultUserPreferences()V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->clearUserPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
