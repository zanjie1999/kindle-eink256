.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.super Ljava/lang/Object;
.source "FFSPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "FFSPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;,
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;,
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartZTSProvisioner;,
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;,
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;,
        Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFSPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFSPlugin.kt\ncom/amazon/kindle/ffs/plugin/FFSPlugin\n*L\n1#1,392:1\n*E\n"
.end annotation


# static fields
.field private static final ATTEMPT_DELAY_MILLIS:J = 0x3e8L

.field public static final Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

.field private static final Instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/kindle/ffs/plugin/FFSPlugin;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ATTEMPTS:I = 0x5

.field private static final defaultExecutorSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultUGSLauncherSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultZTSProvisionerSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

.field private final _ugsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private activityHelper:Lcom/amazon/kindle/ffs/utils/ActivityHelper;

.field private bluetoothToggleReceiver:Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;

.field private eventQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private eventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private final executor$delegate:Lkotlin/Lazy;

.field private final executorSupplier:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private ffsBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;

.field private locationToggleReceiver:Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;

.field private final provisionAttemptDelayMillis:J

.field private final provisionerSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;",
            ">;"
        }
    .end annotation
.end field

.field private final provisioningServiceConfiguration$delegate:Lkotlin/Lazy;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final ugsLauncher$delegate:Lkotlin/Lazy;

.field private final ugsLauncherSupplier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final ztsProvisioner$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultZTSProvisionerSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultZTSProvisionerSupplier$1;

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultZTSProvisionerSupplier:Lkotlin/jvm/functions/Function1;

    .line 78
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultUGSLauncherSupplier:Lkotlin/jvm/functions/Function1;

    .line 82
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultExecutorSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultExecutorSupplier$1;

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultExecutorSupplier:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;-><init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "provisionerSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugsLauncherSupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorSupplier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisionAttemptDelayMillis:J

    iput-object p3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisionerSupplier:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ugsLauncherSupplier:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->executorSupplier:Lkotlin/jvm/functions/Function0;

    .line 104
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ugsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ztsProvisioner$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ztsProvisioner$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ztsProvisioner$delegate:Lkotlin/Lazy;

    .line 116
    new-instance p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ugsLauncher$delegate:Lkotlin/Lazy;

    .line 120
    new-instance p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$provisioningServiceConfiguration$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisioningServiceConfiguration$delegate:Lkotlin/Lazy;

    .line 124
    new-instance p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$executor$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$executor$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->executor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 57
    sget-object p3, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultZTSProvisionerSupplier:Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 59
    sget-object p4, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultUGSLauncherSupplier:Lkotlin/jvm/functions/Function1;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 61
    sget-object p5, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->defaultExecutorSupplier:Lkotlin/jvm/functions/Function0;

    :cond_3
    move-object v5, p5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;-><init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getExecutor$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getExecutorSupplier$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->executorSupplier:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Instance:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$getProvisionAttemptDelayMillis$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisionAttemptDelayMillis:J

    return-wide v0
.end method

.method public static final synthetic access$getProvisionerSupplier$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisionerSupplier:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sdk"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getUgsLauncherSupplier$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ugsLauncherSupplier:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getZtsProvisioner$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getZtsProvisioner()Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_ugsProvisioningStarted$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ugsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$get_ztsProvisioningStarted$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isUserAuthenticated(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->isUserAuthenticated()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setSdk$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private final getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->executor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private final getZtsProvisioner()Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ztsProvisioner$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;

    return-object v0
.end method

.method private final isUserAuthenticated()Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final canStartUGSProvisioner()Z
    .locals 4

    .line 309
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->isUserAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User is not authenticated. UGS could not start"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 314
    :cond_1
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->getFFSSharedPreferencesValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User did not activate FFS from settings page. UGS could not start"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 318
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->hasBluetoothPermissions()Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "App has no bluetooth permissions. UGS could not start"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v2, "sdk.readerUIManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Landroid/app/Activity;

    return-object v1

    :cond_1
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCustomerDomain()Ljava/lang/String;
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount.pfmDomain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic getDependecies()Ljava/util/Collection;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getDependecies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependecies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    const-string v1, "sdk.logger"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_metricsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getProvisioningServiceConfiguration$ffs_debug()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provisioningServiceConfiguration$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object v0
.end method

.method public final getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    const-string v1, "sdk.themeManager.getTheme(ThemeArea.OUT_OF_BOOK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ugsLauncher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    return-object v0
.end method

.method public final getUserEmail()Ljava/lang/String;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount.userEmail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getZtsProvisioningStarted$ffs_debug()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final initRxErrorHandler$ffs_debug()V
    .locals 1

    .line 186
    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initRxErrorHandler$1;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    const-string v0, "kindleSDK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plugin init"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->initRxErrorHandler$ffs_debug()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->setup$ffs_debug(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 143
    new-instance p1, Ljava/util/Timer;

    const-string v0, "FFSPluginInitializer"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initialize$$inlined$schedule$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initialize$$inlined$schedule$1;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final initializeAsync$ffs_debug()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->provision()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    move-result-object v0

    return-object v0
.end method

.method public final isAuthenticated()Z
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string v1, "sdk.applicationManager.activeUserAccount"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isEarlyAccessBuild()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isEarlyAccessBuild()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isScreenReaderEnabled()Z
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 371
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0

    .line 370
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final provision()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
    .locals 7

    .line 213
    new-instance v0, Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;-><init>()V

    .line 214
    new-instance v1, Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    invoke-direct {v1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;-><init>()V

    .line 215
    new-instance v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    .line 216
    sget-object v3, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v3}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->cleanSeenDevices()V

    .line 217
    iget-object v3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ZTS provisioning already started"

    invoke-interface {v3, v5, v6}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v5, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartZTSProvisioner;

    invoke-direct {v5, p0, v0, v4}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartZTSProvisioner;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ugsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UGS provisioning already started"

    invoke-interface {v0, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;->complete(Ljava/lang/Object;)V

    goto :goto_1

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v3, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;

    invoke-direct {v3, p0, v1, v4}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartUGSProvisioner;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_1
    return-object v2
.end method

.method public final publishFFSSettingsEvent(Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;)V
    .locals 1

    const-string v0, "ffsSettingsEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->eventQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final requireOpenActivity$ffs_debug(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->activityHelper:Lcom/amazon/kindle/ffs/utils/ActivityHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/utils/ActivityHelper;->requireOpenActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "activityHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setup$ffs_debug(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 4

    const-string v0, "kindleSDK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "sdk"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 166
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$1;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 167
    new-instance p1, Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    invoke-direct {p1}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    .line 168
    iget-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string v2, "sdk.pubSubEventManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->eventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    if-eqz p1, :cond_2

    .line 169
    const-class v2, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->eventQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 170
    new-instance p1, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->ffsBroadcastReceiver:Lcom/amazon/kindle/ffs/receiver/FFSBroadcastReceiver;

    .line 171
    new-instance p1, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->bluetoothToggleReceiver:Lcom/amazon/kindle/ffs/receiver/BluetoothToggleReceiver;

    .line 172
    new-instance p1, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->locationToggleReceiver:Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;

    .line 173
    new-instance p1, Lcom/amazon/kindle/ffs/utils/ActivityHelper;

    new-instance v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$setup$2;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V

    iget-object v3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    const-string v3, "this.sdk.logger"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/amazon/kindle/ffs/utils/ActivityHelper;-><init>(Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/logging/ILogger;)V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->activityHelper:Lcom/amazon/kindle/ffs/utils/ActivityHelper;

    .line 177
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->activityHelper:Lcom/amazon/kindle/ffs/utils/ActivityHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/ActivityHelper;->start()V

    return-void

    :cond_0
    const-string p1, "activityHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "eventsManager"

    .line 169
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final stop()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;
    .locals 5

    .line 235
    new-instance v0, Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;-><init>()V

    .line 236
    new-instance v1, Lcom/amazon/kindle/ffs/utils/BlockingPromise;

    invoke-direct {v1}, Lcom/amazon/kindle/ffs/utils/BlockingPromise;-><init>()V

    .line 237
    new-instance v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    .line 238
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;

    invoke-direct {v4, p0, v0, v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StopProvisioners;-><init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;Lcom/amazon/kindle/ffs/utils/BlockingPromise;Lcom/amazon/kindle/ffs/utils/BlockingPromise;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ztsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->_ugsProvisioningStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v2
.end method

.method public final subscribe(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->eventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "eventsManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
