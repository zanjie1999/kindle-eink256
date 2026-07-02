.class public final Lcom/amazon/falkor/utils/FalkorDarkModeUtils;
.super Ljava/lang/Object;
.source "FalkorDarkModeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDarkModeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDarkModeUtils.kt\ncom/amazon/falkor/utils/FalkorDarkModeUtils\n*L\n1#1,78:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

.field private static final forceDarkWeblab$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "forceDarkWeblab"

    const-string v4, "getForceDarkWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 16
    new-instance v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    .line 18
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils$forceDarkWeblab$2;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils$forceDarkWeblab$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->forceDarkWeblab$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getForceDarkWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    sget-object v0, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->forceDarkWeblab$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-object v0
.end method


# virtual methods
.method public final getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/view/ContextThemeWrapper;

    if-eqz p2, :cond_0

    sget p2, Lcom/amazon/falkor/R$style;->FalkorEpisodeDark:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/amazon/falkor/R$style;->FalkorEpisodeLight:I

    :goto_0
    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final getThemeUrlArgument(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "dark"

    goto :goto_0

    :cond_0
    const-string p1, "light"

    :goto_0
    return-object p1
.end method

.method public final isFalkorActionBarInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.themeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isForceDarkModeSupported()Z
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getForceDarkWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORCE_DARK"

    .line 76
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORCE_DARK_STRATEGY"

    .line 77
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.readerUIManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isTocInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.themeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
