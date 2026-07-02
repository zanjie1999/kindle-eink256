.class public Lcom/amazon/whispersync/dcp/framework/DataMigratorService;
.super Lcom/amazon/whispersync/dcp/framework/FrameworkService;
.source "DataMigratorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;
    }
.end annotation


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "DataMigrator"

.field private static final DOMAIN:Ljava/lang/String; = "DCP"

.field private static final FILE_DELETED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

.field private static final FILE_MIGRATED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mMigratedDatabases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMigratedSharedPrefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransport:Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    const-class v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    const-string v1, "DataMigrator"

    const-string v2, "DCP"

    const-string v3, "FileMigrated"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->FILE_MIGRATED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    const-string v3, "FileDeleted"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->FILE_DELETED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkService;-><init>()V

    .line 94
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;-><init>(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Lcom/amazon/whispersync/dcp/framework/DataMigratorService$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mTransport:Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedDatabases:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedSharedPrefs:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->deleteMigratedSharedPrefs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->migrateDatabase(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->deleteMigratedDatabase(Ljava/lang/String;)V

    return-void
.end method

.method private createMetricName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 206
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s.%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Could not delete file: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->reportDeletedFile(Ljava/io/File;Z)V

    return-void
.end method

.method private declared-synchronized deleteMigratedDatabase(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedDatabases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Service;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized deleteMigratedSharedPrefs(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedSharedPrefs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized migrateDatabase(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedDatabases:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->migrateFile(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private migrateFile(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 150
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Migrating file: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000000

    .line 154
    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 156
    invoke-direct {p0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->reportMigratedFile(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    :catch_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "File not found: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0, p1, v4}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->reportMigratedFile(Ljava/io/File;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMigratedSharedPrefs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->migrateFile(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reportDeletedFile(Ljava/io/File;Z)V
    .locals 3

    .line 194
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    const-string v1, "FileDeleted"

    invoke-direct {p0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->createMetricName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DCP"

    const-string v2, "DataMigrator"

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "deleted"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-interface {p2, v0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    .line 201
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->FILE_DELETED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-interface {p2, v0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method

.method private reportMigratedFile(Ljava/io/File;Z)V
    .locals 3

    .line 171
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    const-string v1, "FileMigrated"

    invoke-direct {p0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->createMetricName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DCP"

    const-string v2, "DataMigrator"

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "found"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-interface {p2, v0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    .line 178
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mMetricsCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->FILE_MIGRATED:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-interface {p2, v0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->mTransport:Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/amazon/whispersync/roboguice/service/RoboService;->onCreate()V

    return-void
.end method
