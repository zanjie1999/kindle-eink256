.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;
.super Ljava/lang/Object;
.source "DevicePowerStatusProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDevicePowerStatus()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;
    .locals 13

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "status"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    const-string/jumbo v2, "plugged"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ne v2, v5, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const-string v2, "level"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "scale"

    .line 35
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v1, v2

    int-to-double v3, v0

    div-double v8, v1, v3

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;-><init>(DZZZ)V

    return-object v0
.end method
