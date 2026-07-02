.class public final Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;
.super Ljava/lang/Object;
.source "FFSItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFSItemsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFSItemsProvider.kt\ncom/amazon/kindle/ffs/settings/FFSItemsProvider\n*L\n1#1,192:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

.field private static lastTimeIsOn:Z


# instance fields
.field private final logger$delegate:Lkotlin/Lazy;

.field private subscribed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->Companion:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$logger$2;->INSTANCE:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$logger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getLastTimeIsOn$cp()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->lastTimeIsOn:Z

    return v0
.end method

.method public static final synthetic access$isDeviceSetupOverBluetoothToggleItemOn(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;Landroid/content/Context;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->isDeviceSetupOverBluetoothToggleItemOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setLastTimeIsOn$cp(Z)V
    .locals 0

    .line 33
    sput-boolean p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->lastTimeIsOn:Z

    return-void
.end method

.method public static final synthetic access$updateItem(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->updateItem()V

    return-void
.end method

.method private final createDeviceSetupOverBluetoothItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 12

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lcom/amazon/kindle/setting/item/template/TextItem;

    .line 159
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_not_available_in_old_android:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    sget-object v1, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    const-string v2, "device_setup_over_bluetooth"

    const-string v3, ""

    .line 156
    invoke-direct {v0, v2, v3, p1, v1}, Lcom/amazon/kindle/setting/item/template/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;)V

    return-object v0

    .line 164
    :cond_1
    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_text_ugs:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    sget-object v3, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCustomerDomain()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    aput-object v3, v1, v2

    .line 163
    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "MessageFormat.format(\n  \u2026ustomerDomain()\n        )"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$createDeviceSetupOverBluetoothItem$1;-><init>(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 183
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_device_setup_over_bluetooth_simple_setup_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "context.getString(R.stri\u2026tooth_simple_setup_title)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v8, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 186
    sget-boolean v9, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->lastTimeIsOn:Z

    .line 187
    invoke-static {}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->getInstance()Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;

    move-result-object v10

    const-string v5, "device_setup_over_bluetooth"

    move-object v4, v0

    .line 181
    invoke-direct/range {v4 .. v11}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;Z)V

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 126
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method private final getUiHandler()Landroid/os/Handler;
    .locals 2

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final isDeviceSetupOverBluetoothToggleItemOn(Landroid/content/Context;)Z
    .locals 5

    .line 133
    const-class v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->isDeviceSetupOverBluetoothEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    move v1, v0

    goto :goto_2

    :cond_1
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 140
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_2
    return v1
.end method

.method private final isRunningOnUiThread()Z
    .locals 2

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->isRunningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private final updateItem()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/settings/FFSItemsProviderKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot update FFS settings. Missing Context"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v1

    .line 89
    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->createDeviceSetupOverBluetoothItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    sget-object v1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v1

    if-nez v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/settings/FFSItemsProviderKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot initialize FFS settings. Missing Context"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 52
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    invoke-direct {p0, v2}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->createDeviceSetupOverBluetoothItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-boolean v2, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->subscribed:Z

    if-nez v2, :cond_2

    .line 58
    invoke-virtual {v1, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->subscribe(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->subscribed:Z

    :cond_2
    return-object v0
.end method

.method public final onFFSSettingsChangedEvent(Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 75
    const-class v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/utils/FfsHelper;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/kindle/ffs/utils/FfsHelper;->getFFSSharedPreferencesString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    return-void

    .line 79
    :cond_1
    new-instance p1, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$onFFSSettingsChangedEvent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$onFFSSettingsChangedEvent$1;-><init>(Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
