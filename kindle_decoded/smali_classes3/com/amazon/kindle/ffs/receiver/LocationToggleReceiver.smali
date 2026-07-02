.class public final Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationToggleReceiver.kt"


# instance fields
.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 2

    const-string v0, "ffsPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final getLocationStatusForAndroid9()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/location/LocationManager;

    .line 43
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0

    .line 41
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getLocationStatusForAndroidLessThan9()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final isLocationOn()Z
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->getLocationStatusForAndroid9()Z

    move-result v0

    return v0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->getLocationStatusForAndroidLessThan9()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->isLocationOn()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    const-string v1, "FFS_LOCATION_ON"

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    const-string v1, "FFS_LOCATION_OFF"

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportSettingsMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiver;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kindle/ffs/receiver/LocationToggleReceiverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new location manager state state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
