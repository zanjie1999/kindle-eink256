.class public final Lcom/amazon/android/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/theme/IThemeManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeManager.kt\ncom/amazon/android/theme/ThemeManager\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,186:1\n33#2,3:187\n33#2,3:190\n*E\n*S KotlinDebug\n*F\n+ 1 ThemeManager.kt\ncom/amazon/android/theme/ThemeManager\n*L\n24#1,3:187\n36#1,3:190\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final currentAppTheme$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final currentTheme$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/android/theme/ThemeManager;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const/4 v3, 0x0

    const-string v4, "currentTheme"

    const-string v5, "getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "currentAppTheme"

    const-string v5, "getCurrentAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/android/theme/ThemeManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/theme/ThemeConfig;)V
    .locals 1

    const-string v0, "initialConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/theme/ThemeManager;->initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    .line 24
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getInitialTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    .line 187
    new-instance v0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;

    invoke-direct {v0, p1, p1, p0}, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/theme/ThemeManager;)V

    .line 189
    iput-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 36
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/amazon/android/theme/ThemeManager;->getInitialAppTheme$default(Lcom/amazon/android/theme/ThemeManager;Lcom/amazon/kcp/application/IKindleObjectFactory;ILjava/lang/Object;)Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p1

    .line 190
    new-instance v0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$2;

    invoke-direct {v0, p1, p1, p0}, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/theme/ThemeManager;)V

    .line 192
    iput-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentAppTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 46
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/android/theme/ThemeManager;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/theme/ThemeManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/android/theme/ThemeManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/android/theme/ThemeManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private final getCurrentAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentAppTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/android/theme/ThemeManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/theme/AppTheme;

    return-object v0
.end method

.method private final getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/android/theme/ThemeManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0
.end method

.method private final getInitialAppTheme(Lcom/amazon/kcp/application/IKindleObjectFactory;)Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 1

    .line 147
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->alwaysFollowSystemTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object p1, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    invoke-virtual {v0}, Lcom/amazon/kcp/theme/ThemeConfig;->getDefaultAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    sget-object v0, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/theme/ThemeManager;->initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    invoke-virtual {p1}, Lcom/amazon/kcp/theme/ThemeConfig;->getDefaultAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p1

    :cond_2
    const-string v0, "if (storedAppTheme == nu\u2026redAppTheme\n            }"

    .line 154
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method static synthetic getInitialAppTheme$default(Lcom/amazon/android/theme/ThemeManager;Lcom/amazon/kcp/application/IKindleObjectFactory;ILjava/lang/Object;)Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 146
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->getInitialAppTheme(Lcom/amazon/kcp/application/IKindleObjectFactory;)Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p0

    return-object p0
.end method

.method private final getInitialTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v1, v0, v1}, Lcom/amazon/android/theme/ThemeManager;->getInitialAppTheme$default(Lcom/amazon/android/theme/ThemeManager;Lcom/amazon/kcp/application/IKindleObjectFactory;ILjava/lang/Object;)Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/theme/ThemeManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "Utils.getFactory()"

    if-eq v1, v0, :cond_0

    .line 137
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/theme/ThemeManager;->initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    invoke-virtual {v1}, Lcom/amazon/kcp/theme/ThemeConfig;->getDefaultTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getTheme(Lcom/amazon/kindle/krx/theme/Theme;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    const-string v1, "Utils.getFactory().userS\u2026itialConfig.defaultTheme)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Utils.getFactory().context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 132
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    .line 134
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setTheme(Lcom/amazon/kindle/krx/theme/Theme;)V

    :goto_1
    return-object v0
.end method

.method private final isDarkColorModeId(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Z
    .locals 2

    .line 178
    sget-object v0, Lcom/amazon/android/theme/ThemeManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private final setCurrentAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentAppTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/android/theme/ThemeManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setCurrentTheme(Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->currentTheme$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/android/theme/ThemeManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final declared-synchronized switchTo(Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/theme/ThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->setCurrentTheme(Lcom/amazon/kindle/krx/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public areMultipleThemesSupported()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/android/theme/ThemeManager;->initialConfig:Lcom/amazon/kcp/theme/ThemeConfig;

    invoke-virtual {v0}, Lcom/amazon/kcp/theme/ThemeConfig;->areMultipleThemesSupported()Z

    move-result v0

    return v0
.end method

.method public getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getCurrentAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 3

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "factory.userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    const-string v1, "factory.userSettingsController.colorMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/android/theme/ThemeManager;->isDarkColorModeId(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    return-object v0

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    return-object v0
.end method

.method public getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;
    .locals 3

    const-string/jumbo v0, "themeArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    if-eq p1, v0, :cond_6

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_1
    instance-of p1, p1, Lcom/amazon/kcp/library/models/internal/PDFBookItem;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 83
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    .line 84
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    return-object p1

    .line 87
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v0, "Utils.getFactory().userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    const-string v0, "Utils.getFactory().userS\u2026tingsController.colorMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->isDarkColorModeId(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 88
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    return-object p1

    .line 91
    :cond_5
    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    return-object p1

    .line 76
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/amazon/android/theme/ThemeManager;->getCurrentTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    return-object p1
.end method

.method public setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "appTheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->setCurrentAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)V

    .line 98
    sget-object v0, Lcom/amazon/android/theme/ThemeManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/android/theme/ThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 100
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->switchTo(Lcom/amazon/kindle/krx/theme/Theme;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->switchTo(Lcom/amazon/kindle/krx/theme/Theme;)V

    :goto_0
    return-void
.end method

.method public switchIfNecessary(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/amazon/android/theme/ThemeManager;->getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/AppTheme;->FOLLOW_SYSTEM:Lcom/amazon/kindle/krx/theme/AppTheme;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->updateSystemThemeFlags(Landroid/content/res/Configuration;)V

    .line 116
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    .line 118
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    goto :goto_0

    .line 117
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    .line 116
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/android/theme/ThemeManager;->switchTo(Lcom/amazon/kindle/krx/theme/Theme;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateSystemThemeFlags(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/android/theme/ThemeUtils;->isInSystemLightMode(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-static {p1}, Lcom/amazon/android/theme/ThemeUtils;->isInSystemDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->updateSystemThemeFlags(ZZ)V

    return-void
.end method
