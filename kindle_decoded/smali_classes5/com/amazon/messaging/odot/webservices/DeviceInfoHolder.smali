.class public final Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfoHolder.java"


# static fields
.field private static final DEVICE_INFO_KEY:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/amazon/messaging/odot/webservices/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/messaging/odot/webservices/DeviceInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/messaging/odot/webservices/DeviceInfo;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;

    invoke-direct {v1, p0}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;-><init>(Landroid/content/Context;)V

    const-string p0, "DeviceInfo"

    .line 17
    const-class v2, Lcom/amazon/messaging/odot/webservices/DeviceInfo;

    const-class v3, Lcom/amazon/messaging/odot/webservices/AmazonDeviceInfo;

    .line 18
    invoke-virtual {v1, p0, v2, v3}, Lcom/amazon/messaging/odot/webservices/ClassConfigurationParser;->getClassFromConfigurationFile(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo;

    sput-object p0, Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/messaging/odot/webservices/DeviceInfo;

    .line 22
    :cond_0
    sget-object p0, Lcom/amazon/messaging/odot/webservices/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/messaging/odot/webservices/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
