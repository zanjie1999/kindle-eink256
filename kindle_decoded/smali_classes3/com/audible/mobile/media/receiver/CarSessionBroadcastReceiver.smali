.class public abstract Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarSessionBroadcastReceiver.java"


# static fields
.field public static final ACTION_MEDIA_STATUS:Ljava/lang/String; = "com.google.android.gms.car.media.STATUS"

.field public static final MEDIA_CONNECTED_VALUE:Ljava/lang/String; = "media_connected"

.field public static final MEDIA_CONNECTION_STATUS_EXTRA_KEY:Ljava/lang/String; = "media_connection_status"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected volatile isConnectedToCar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.car.media.STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isConnectedToCar()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    return v0
.end method

.method protected onCarConnectionChanged(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "media_connection_status"

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    iget-boolean v0, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    const-string v1, "media_connected"

    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    .line 59
    sget-object p2, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->logger:Lorg/slf4j/Logger;

    iget-boolean v1, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Connection changed to Android Auto isConnectedToCar = {}"

    invoke-interface {p2, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-boolean p2, p0, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->isConnectedToCar:Z

    if-eq v0, p2, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/audible/mobile/media/receiver/CarSessionBroadcastReceiver;->onCarConnectionChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
