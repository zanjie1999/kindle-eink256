.class public final Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;
.super Ljava/lang/Object;
.source "InAppNotificationsClassFactoryImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppNotificationsClassFactoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppNotificationsClassFactoryImpl.kt\ncom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl\n*L\n1#1,37:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final weblabKeeper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "weblabKeeper"

    const-string v4, "getWeblabKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl$weblabKeeper$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl$weblabKeeper$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;->weblabKeeper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getWeblabKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;->weblabKeeper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;

    return-object v0
.end method


# virtual methods
.method public getNavBellIconDrawable()I
    .locals 2

    .line 28
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    const-string v1, "InAppNotificationsPlugin\u2026etSDK().getThemeManager()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    const-string v1, "themeManager.getTheme(ThemeArea.OUT_OF_BOOK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 32
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$drawable;->ic_inapp_bell_dark:I

    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$drawable;->ic_inapp_bell_light:I

    :goto_0
    return v0
.end method

.method public getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;-><init>()V

    return-object v0
.end method

.method public getThemeUtil()Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtil;
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeUtilImpl;-><init>()V

    return-object v0
.end method

.method public getTrayAdapter(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/util/Notification;",
            ">;",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;",
            ")",
            "Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;"
        }
    .end annotation

    const-string v0, "notifications"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;-><init>(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    return-object v0
.end method

.method public getWeblabGateKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/platform/InAppNotificationsClassFactoryImpl;->getWeblabKeeper()Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;

    move-result-object v0

    return-object v0
.end method
