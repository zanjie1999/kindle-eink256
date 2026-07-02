.class public Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;
.super Ljava/lang/Object;
.source "BatteryManagerHelper.java"


# static fields
.field private static final BATTERY_BUFFER:Lcom/amazon/whispersync/dcp/settings/SettingLong;

.field private static final BATTERY_LEVEL_FOR_UPDATE:I

.field protected static final DEFAULT_BATTERY_LEVEL_FOR_UPDATE:I = 0x19

.field private static final SYSTEM_PROPERTIES:Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->SYSTEM_PROPERTIES:Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    const-string v1, "battery_buffer"

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->BATTERY_BUFFER:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    .line 22
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->SYSTEM_PROPERTIES:Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;

    const-string/jumbo v1, "persist.sys.recovery.batt_level"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SystemPropertiesWrapper;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->BATTERY_BUFFER:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    add-int/2addr v0, v2

    sput v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->BATTERY_LEVEL_FOR_UPDATE:I

    .line 25
    const-class v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBatteryPercentage()I
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to retrieve battery percentage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "level"

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "scale"

    .line 59
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v2, v1, 0x64

    .line 60
    div-int/2addr v2, v0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BatteryLevel :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BatteryScale :"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " BatteryPercent :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v2
.end method

.method public getBatteryStatus()Landroid/content/Intent;
    .locals 3

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isBatteryCharging()Z
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "status"

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBatteryLow()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->getBatteryPercentage()I

    move-result v0

    sget v1, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->BATTERY_LEVEL_FOR_UPDATE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPluggedIn()Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/BatteryManagerHelper;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "plugged"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
