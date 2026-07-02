.class public final Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;
.super Ljava/lang/Object;
.source "ThemeUtilImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAttrRes(ILandroid/content/res/Resources$Theme;)Landroid/util/TypedValue;
    .locals 2

    .line 81
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-object v0
.end method

.method private final updateNavigationBar(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "window.decorView"

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :goto_0
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$attr;->core_primary:I

    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;->getAttrRes(ILandroid/content/res/Resources$Theme;)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private final updateStatusBar(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "window.decorView"

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 53
    :goto_0
    sget p1, Lcom/amazon/kindle/inapp/notifications/R$attr;->core_primary:I

    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;->getAttrRes(ILandroid/content/res/Resources$Theme;)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method public getCurrentTheme()I
    .locals 2

    .line 19
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    const-string v1, "InAppNotificationsPlugin\u2026etSDK().getThemeManager()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    const-string v1, "themeManager.getTheme(ThemeArea.OUT_OF_BOOK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 23
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$style;->RubyDark:I

    goto :goto_0

    .line 22
    :cond_0
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$style;->RubyLight:I

    :goto_0
    return v0
.end method

.method public updateWindow(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .locals 4

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceTheme"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "theme"

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;->updateStatusBar(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/Window;Landroid/content/res/Resources$Theme;)V

    .line 34
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 35
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;->updateNavigationBar(Lcom/amazon/kindle/krx/theme/Theme;Landroid/view/Window;Landroid/content/res/Resources$Theme;)V

    :cond_1
    return-void
.end method
