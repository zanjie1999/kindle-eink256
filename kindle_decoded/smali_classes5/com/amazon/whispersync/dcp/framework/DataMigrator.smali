.class public Lcom/amazon/whispersync/dcp/framework/DataMigrator;
.super Ljava/lang/Object;
.source "DataMigrator.java"


# static fields
.field private static final BIND_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string/jumbo v1, "service_bind_timeout_sec"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->BIND_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    return-void
.end method

.method private connectToMigratorService(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.amazon.whispersync.dcp.framework.action.BIND_DATA_MIGRATOR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    .line 88
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 97
    :catch_0
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const-string p2, "Interrupted"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :catch_1
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const-string p2, "Bind timed out."

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createParentDirectories(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const-string v0, "Could not create databases directory."

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private deleteMigratedFiles(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->deleteMigratedDatabase(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Couldn\'t delete migrated files: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getMigratorService(J)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->connectToMigratorService(J)V

    .line 67
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 69
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const-string p2, "Failed to bind to service"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRemoteDatabase(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 138
    :try_start_0
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->migrateDatabase(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Couldn\'t open remote database: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private migrateDatabase(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->getRemoteDatabase(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No old database to migrate."

    invoke-virtual {p1, p3, p2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 112
    :cond_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v0, 0x0

    .line 116
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-static {v2, v3}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->deleteMigratedFiles(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string p2, "Migration complete."

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v3}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 129
    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 124
    :goto_0
    :try_start_2
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;

    const-string p3, "Couldn\'t copy database: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigrationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    :goto_1
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 129
    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method


# virtual methods
.method public migrateDatabase(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->BIND_TIMEOUT_SEC:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->migrateDatabase(Ljava/lang/String;J)V

    return-void
.end method

.method public migrateDatabase(Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dcp/framework/DataMigrationException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Starting migration."

    invoke-virtual {v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->createParentDirectories(Ljava/io/File;)V

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->getMigratorService(J)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object p2

    .line 46
    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->migrateDatabase(Lcom/amazon/whispersync/dcp/framework/IDataMigrator;Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public migrationComplete()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DataMigrator;->mMigratorServiceBinder:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    :cond_0
    return-void
.end method
