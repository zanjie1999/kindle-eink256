.class public final Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;
.super Ljava/lang/Object;
.source "DeviceInfoHolder.java"


# static fields
.field private static final DEVICE_INFO_KEY:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;-><init>(Landroid/content/Context;)V

    const-string p0, "DeviceInfo"

    .line 23
    const-class v2, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    const-class v3, Lcom/amazon/whispersync/dcp/framework/AmazonDeviceInfo;

    invoke-virtual {v1, p0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ClassConfigurationParser;->getClassFromConfigurationFile(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    sput-object p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    .line 28
    :cond_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->sDeviceInfo:Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
