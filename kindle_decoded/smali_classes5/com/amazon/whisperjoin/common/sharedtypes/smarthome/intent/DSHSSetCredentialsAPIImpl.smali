.class public Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;
.super Ljava/lang/Object;
.source "DSHSSetCredentialsAPIImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "DSHSSetCredentialsAPIImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context cannot be null"

    .line 27
    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CredentialSyncMetricsRecorder cannot be null"

    .line 28
    invoke-static {p2, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    return-void
.end method

.method private logIntent(Landroid/content/Intent;)V
    .locals 7

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "%s %s (%s)"

    .line 102
    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;)V
    .locals 5

    .line 34
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "Broadcast Zigbee Credential"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZigbeeFFSEntry cannot be null"

    .line 35
    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.SET_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    const-string v2, "1.0"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZigbeeFFSEntry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "zigbeeFFSEntry"

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->logIntent(Landroid/content/Intent;)V

    .line 49
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->onSetCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.CREDENTIALS_SYNC_PERMISSION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v0, "Intent Sent"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 43
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "An exception occurred serializing ffs entry"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->onJSONSerializationError()V

    return-void
.end method

.method public setCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;)V
    .locals 6

    .line 55
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "Trying to broadcast Set credentials with zigbee and ble"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Zigbee Device cannot be null"

    .line 57
    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Bluetooth Device cannot be null"

    .line 58
    invoke-static {p2, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mContext:Landroid/content/Context;

    const-string v1, "Context cannot be null"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.SET_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    const-string v2, "1.0"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZigbeeFFSEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothFFSEntry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "zigbeeFFSEntry"

    .line 72
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bluetoothFFSEntry"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->logIntent(Landroid/content/Intent;)V

    .line 82
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->onSetCredentials(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;)V

    .line 83
    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mContext:Landroid/content/Context;

    const-string p2, "com.amazon.whisperjoin.provisioner.zigbee.CREDENTIALS_SYNC_PERMISSION"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string p2, "Intent sent"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 75
    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v0, "An exception occurred while serializing the entries for DSHS"

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;->onJSONSerializationError()V

    return-void
.end method

.method public setCredentialsV2(Ljava/lang/String;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "Set Device Credentials V2"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jsonPayload cannot be null"

    .line 89
    invoke-static {p1, v0}, Lorg/apache/commons/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.SET_CREDENTIALS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "payload"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->logIntent(Landroid/content/Intent;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.amazon.whisperjoin.provisioner.zigbee.CREDENTIALS_SYNC_PERMISSION"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPIImpl;->TAG:Ljava/lang/String;

    const-string v0, "Intent Sent"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
