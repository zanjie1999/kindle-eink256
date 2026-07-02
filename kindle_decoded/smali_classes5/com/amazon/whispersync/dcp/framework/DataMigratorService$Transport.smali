.class final Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;
.super Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub;
.source "DataMigratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DataMigratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Lcom/amazon/whispersync/dcp/framework/DataMigratorService$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;-><init>(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;)V

    return-void
.end method


# virtual methods
.method public deleteMigratedDatabase(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-static {v2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->access$300(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public deleteMigratedSharedPrefs(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-static {v2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->access$100(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public migrateDatabase(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-static {v2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->access$200(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/DataMigratorService;

    invoke-static {v2, p1}, Lcom/amazon/whispersync/dcp/framework/DataMigratorService;->access$000(Lcom/amazon/whispersync/dcp/framework/DataMigratorService;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
