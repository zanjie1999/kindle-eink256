.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final context:Landroid/content/Context;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-class v0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(CoreSettingItemsProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->TAG:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 73
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 74
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "KindleReaderSDK.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 75
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 154
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$createSideloadPDocItem(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createSideloadPDocItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAndroidApplicationController$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object p0
.end method

.method public static final synthetic access$getApplicationManager$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/application/IApplicationManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-object p0
.end method

.method public static final synthetic access$getMetricNameForSubscription(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->getMetricNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getTitleString(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->getTitleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUserSettings$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method public static final synthetic access$hasNetWorkConnection(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->hasNetWorkConnection()Z

    move-result p0

    return p0
.end method

.method private final createAppSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 178
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 180
    sget v0, Lcom/amazon/kcp/more/R$string;->settings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(R.string.settings)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 182
    sget v4, Lcom/amazon/kcp/more/R$attr;->me_app_settings_icon:I

    const-string v1, "setting_item_app_settings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    move-object v0, v12

    .line 178
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final createBetaFeedbackItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 512
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 514
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_beta_feedback:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(R.stri\u2026.more_item_beta_feedback)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 516
    sget v4, Lcom/amazon/kcp/more/R$attr;->me_feedback_icon:I

    .line 517
    new-instance v7, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createBetaFeedbackItem$1;

    invoke-direct {v7}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createBetaFeedbackItem$1;-><init>()V

    const-string v1, "setting_item_beta_feedback"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b0

    const/4 v11, 0x0

    move-object v0, v12

    .line 512
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final createCantileverItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 486
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 488
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_help_and_feedback:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(R.stri\u2026e_item_help_and_feedback)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 490
    sget v4, Lcom/amazon/kcp/more/R$attr;->me_feedback_icon:I

    .line 491
    new-instance v7, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCantileverItem$1;

    invoke-direct {v7}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCantileverItem$1;-><init>()V

    const-string v1, "setting_item_help_and_feedback"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b0

    const/4 v11, 0x0

    move-object v0, v12

    .line 486
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final createColorThemeItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    const-string v1, "sdk.themeManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 229
    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 232
    sget v0, Lcom/amazon/kcp/more/R$string;->theme_follow_system:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 231
    :cond_1
    sget v0, Lcom/amazon/kcp/more/R$string;->theme_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_2
    sget v0, Lcom/amazon/kcp/more/R$string;->theme_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_3
    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    .line 237
    sget v0, Lcom/amazon/kcp/more/R$string;->theme_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 236
    :cond_5
    sget v0, Lcom/amazon/kcp/more/R$string;->theme_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    const-string v0, "if (DarkModeUtils.isPhas\u2026)\n            }\n        }"

    .line 228
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 243
    sget v1, Lcom/amazon/kcp/more/R$string;->color_theme_settings:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.string.color_theme_settings)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 246
    new-instance v6, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createColorThemeItem$1;

    invoke-direct {v6}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createColorThemeItem$1;-><init>()V

    const-string v2, "setting_item_color_theme"

    move-object v1, v0

    .line 241
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v0
.end method

.method private final createCouponItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 429
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 431
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_coupon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.more_item_coupon)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    sget v0, Lcom/amazon/kcp/more/R$string;->kre_more_coupon_context:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 434
    new-instance v5, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCouponItem$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createCouponItem$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V

    const-string v1, "setting_item_coupon"

    move-object v0, v6

    .line 429
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final createDeviceNameItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 281
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "authManager"

    .line 282
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v5, v0

    .line 288
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 290
    sget v1, Lcom/amazon/kcp/more/R$string;->device_name:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.string.device_name)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 293
    new-instance v6, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createDeviceNameItem$1;

    invoke-direct {v6}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createDeviceNameItem$1;-><init>()V

    const-string v2, "setting_item_device_name"

    move-object v1, v0

    .line 288
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v0
.end method

.method private final createInfoItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 206
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 208
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_info:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(R.string.more_item_info)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 210
    sget v4, Lcom/amazon/kcp/more/R$attr;->nav_info_icon:I

    .line 211
    new-instance v7, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createInfoItem$1;

    invoke-direct {v7}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createInfoItem$1;-><init>()V

    const-string v1, "setting_item_info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b0

    const/4 v11, 0x0

    move-object v0, v12

    .line 206
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final createLargeFontsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 466
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 468
    sget v0, Lcom/amazon/kcp/more/R$string;->setting_manage_additional_fonts_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026e_additional_fonts_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    sget v0, Lcom/amazon/kcp/more/R$string;->setting_large_fonts_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 470
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 471
    new-instance v5, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createLargeFontsItem$1;

    invoke-direct {v5}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createLargeFontsItem$1;-><init>()V

    const-string v1, "setting_item_large_fonts_new"

    move-object v0, v6

    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final createManageYourTitlesItem(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 648
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 649
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getTitleResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "context.getString(item.titleResId)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 652
    invoke-virtual {p2}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getIconResId()I

    move-result v4

    .line 653
    new-instance v7, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;

    invoke-direct {v7, p0, p2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1b0

    const/4 v11, 0x0

    move-object v0, v12

    .line 648
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final createMigrationMessage(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 4

    .line 531
    new-instance v0, Lcom/amazon/kindle/setting/item/template/TextItem;

    .line 534
    sget v1, Lcom/amazon/kcp/more/R$string;->kre_more_rs_migration_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 535
    sget-object v1, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    const-string v2, "setting_item_migration_message"

    const-string v3, ""

    .line 531
    invoke-direct {v0, v2, v3, p1, v1}, Lcom/amazon/kindle/setting/item/template/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;)V

    return-object v0
.end method

.method private final createOneClickPaymentMethodItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 591
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 593
    sget v0, Lcom/amazon/kcp/more/R$string;->one_click_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.one_click_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    sget v0, Lcom/amazon/kcp/more/R$string;->one_click_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 596
    new-instance v5, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V

    const-string v1, "setting_item_one_click_payment_method"

    move-object v0, v6

    .line 591
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final createOneClickPaymentMethodItemForKindle(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 566
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 568
    sget v0, Lcom/amazon/kcp/more/R$string;->one_click_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.one_click_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sget v0, Lcom/amazon/kcp/more/R$string;->one_click_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 571
    new-instance v5, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItemForKindle$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItemForKindle$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V

    const-string v1, "setting_item_one_click_payment_method"

    move-object v0, v6

    .line 566
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final createSendToKindleItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 389
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "authManager"

    .line 390
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_0
    sget v0, Lcom/amazon/kcp/more/R$string;->not_logged_in:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 396
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 398
    sget v1, Lcom/amazon/kcp/more/R$string;->whispersend_email_address:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.stri\u2026hispersend_email_address)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 401
    new-instance v6, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSendToKindleItem$1;

    invoke-direct {v6}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSendToKindleItem$1;-><init>()V

    const-string v2, "setting_item_send_to_kindle"

    move-object v1, v0

    .line 396
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v0
.end method

.method private final createSideloadItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 369
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 371
    sget v0, Lcom/amazon/kcp/more/R$string;->setting_local_file_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026setting_local_file_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget v0, Lcom/amazon/kcp/more/R$string;->setting_local_file_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 374
    new-instance v5, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadItem$1;

    invoke-direct {v5}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadItem$1;-><init>()V

    const-string v1, "setting_item_sideload"

    move-object v0, v6

    .line 369
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
.end method

.method private final createSideloadPDocItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 11

    .line 323
    new-instance v10, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 325
    sget v0, Lcom/amazon/kcp/more/R$string;->kre_more_pdoc_switch_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026e_more_pdoc_switch_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    sget v0, Lcom/amazon/kcp/more/R$string;->kre_more_pdoc_switch_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 328
    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->isSideloadPDocToggleItemOn()Z

    move-result v5

    .line 329
    new-instance v6, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V

    const-string v1, "setting_item_sideload_pdoc"

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, v10

    .line 323
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method private final createWhisperSyncForBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 11

    .line 260
    new-instance v10, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 262
    sget v0, Lcom/amazon/kcp/more/R$string;->kre_more_as_sync_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.kre_more_as_sync_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget v0, Lcom/amazon/kcp/more/R$string;->kre_more_as_sync_context:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 265
    iget-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string v0, "userSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v5

    .line 266
    new-instance v6, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createWhisperSyncForBookItem$1;

    invoke-direct {v6}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createWhisperSyncForBookItem$1;-><init>()V

    const-string v1, "setting_item_whisper_sync_for_book"

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, v10

    .line 260
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method private final createYourListsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 619
    new-instance v12, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    .line 621
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_your_lists:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.string.more_item_your_lists)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 623
    sget v4, Lcom/amazon/kcp/more/R$attr;->me_your_lists_icon:I

    .line 624
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kcp/more/R$attr;->me_external_launch_icon:I

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 625
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/kcp/more/R$string;->content_description_your_lists_on_fos:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v9, p1

    .line 626
    new-instance v7, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createYourListsItem$1;

    invoke-direct {v7}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createYourListsItem$1;-><init>()V

    const/16 v10, 0x30

    const/4 v11, 0x0

    const-string v1, "setting_item_your_lists"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    .line 619
    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final getMetricNameForSubscription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "your_titles_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getTitleString()Ljava/lang/String;
    .locals 2

    .line 554
    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->isJapanAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kcp/more/R$string;->kindle_payment_setting_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026le_payment_setting_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kcp/more/R$string;->one_click_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.one_click_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hasNetWorkConnection()Z
    .locals 3

    .line 416
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    const/4 v1, 0x0

    const-string v2, "ConnectionError"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isIndiaAccount()Z
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "amazon.in"

    .line 544
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private final isJapanAccount()Z
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "amazon.co.jp"

    .line 550
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isSideloadPDocToggleItemOn()Z
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    const-string v1, "androidApplicationController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    instance-of v2, v0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string v3, "userSettings"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getPersonalDocsSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/system/PermissionsManager;->hasExternalStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private final shouldHideMyCouponItem()Z
    .locals 3

    .line 456
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KFC_HIDE_MY_COUPON_ITEM_384403"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createAppSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createInfoItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->alwaysFollowSystemTheme()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createColorThemeItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createWhisperSyncForBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createDeviceNameItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createSendToKindleItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->isSideloadPermissionChangesEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createSideloadItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createSideloadPDocItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isCNAccountUser()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->shouldHideMyCouponItem()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createCouponItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-nez v2, :cond_4

    .line 106
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createLargeFontsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createMigrationMessage(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isCantileverMarketplace()Lcom/amazon/kindle/util/ThreeStateValue;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/util/ThreeStateValue;->TRUE:Lcom/amazon/kindle/util/ThreeStateValue;

    if-ne v2, v4, :cond_5

    .line 112
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createCantileverItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createBetaFeedbackItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_5
    const-class v2, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 120
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->isIndiaAccount()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    .line 121
    new-instance v1, Lcom/amazon/kindle/weblab/OnOffWeblab;

    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v2

    const-string v4, "KINDLE_READER_ONECLICK_SETTING_USING_PSP_322666"

    invoke-direct {v1, v2, v4}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createOneClickPaymentMethodItemForKindle(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_7
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createOneClickPaymentMethodItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_8
    :goto_2
    invoke-static {}, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager;->getInstance()Lcom/amazon/kindle/utils/YourListsIngressUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/utils/YourListsIngressUtils;->isFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 132
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createYourListsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_9
    invoke-static {}, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->getInstance()Lcom/amazon/kindle/utils/ManageYourTitlesUtils;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->shouldShowKU()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 137
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->KINDLE_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createManageYourTitlesItem(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_a
    invoke-virtual {v1}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->shouldShowPRR()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 140
    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->PRIME:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createManageYourTitlesItem(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_b
    invoke-virtual {v1}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->shouldShowCU()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 143
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->COMICS_UNLIMITED:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createManageYourTitlesItem(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method public final onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 167
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->ANNOTATIONS_SYNC:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createWhisperSyncForBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    :cond_0
    return-void
.end method
