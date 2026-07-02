.class Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;
.super Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub;
.source "SSODataMigratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigrator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;-><init>(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)V

    return-void
.end method


# virtual methods
.method public confirmDataMigrated()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Confirming that the data migration is complete and the data can be cleaned up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$100(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object v0

    const-string v1, "dcp.only.protected.store"

    .line 59
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->deleteMigratedSharedPrefs(Ljava/lang/String;)V

    const-string v1, "com.amazon.whispersync.dcp.sso.AnonymousAccountCredentials.SHARED_PREFS"

    .line 60
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->deleteMigratedSharedPrefs(Ljava/lang/String;)V

    return-void
.end method

.method public getAnonymousCredentialsStore()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retrieving anonymous credential store for data migration with SSO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$100(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.sso.AnonymousAccountCredentials.SHARED_PREFS"

    .line 49
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDcpProtectionStore()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retrieving DCP only key store for data migration with SSO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;->this$0:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->access$100(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object v0

    const-string v1, "dcp.only.protected.store"

    .line 39
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator;->migrateSharedPrefs(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
