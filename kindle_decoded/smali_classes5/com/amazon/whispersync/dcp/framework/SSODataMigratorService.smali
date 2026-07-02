.class public Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;
.super Landroid/app/Service;
.source "SSODataMigratorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_CREDENTIALS_STORE_NAME:Ljava/lang/String; = "com.amazon.whispersync.dcp.sso.AnonymousAccountCredentials.SHARED_PREFS"

.field private static final BIND_TIMEOUT_MILLIS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

.field private static final DCP_ONLY_PROTECTED_STORE_NAME:Ljava/lang/String; = "dcp.only.protected.store"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMigrator:Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

.field private mMigratorService:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

.field private mTransport:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    const-class v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    const-string/jumbo v1, "sso_data_migrator.bind_timeout_millis"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->BIND_TIMEOUT_MILLIS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;-><init>(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mTransport:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->getMigrator()Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object p0

    return-object p0
.end method

.method private getMigrator()Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Failed to bind to data migrator service."

    .line 93
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigrator:Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    if-nez v1, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigratorService:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    sget-object v2, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->BIND_TIMEOUT_MILLIS:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->bind(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 100
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/IDataMigrator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigrator:Lcom/amazon/whispersync/dcp/framework/IDataMigrator;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :catch_1
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigrator:Lcom/amazon/whispersync/dcp/framework/IDataMigrator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mTransport:Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService$Transport;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.whispersync.dcp.framework.action.BIND_DATA_MIGRATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigratorService:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SSODataMigratorService;->mMigratorService:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
