.class public final Lcom/amazon/whispersync/dp/utils/SystemTime;
.super Ljava/lang/Object;
.source "SystemTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;
    }
.end annotation


# static fields
.field public static final REAL_TIME:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;

.field private static sTimeSource:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/whispersync/dp/utils/SystemTime$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/utils/SystemTime$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dp/utils/SystemTime;->REAL_TIME:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;

    .line 36
    sput-object v0, Lcom/amazon/whispersync/dp/utils/SystemTime;->sTimeSource:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static now()J
    .locals 2

    .line 42
    sget-object v0, Lcom/amazon/whispersync/dp/utils/SystemTime;->sTimeSource:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;

    invoke-interface {v0}, Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized setTimeSource(Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/dp/utils/SystemTime;

    monitor-enter v0

    .line 50
    :try_start_0
    sput-object p0, Lcom/amazon/whispersync/dp/utils/SystemTime;->sTimeSource:Lcom/amazon/whispersync/dp/utils/SystemTime$TimeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
