.class Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;
.super Ljava/lang/Object;
.source "DCPComponentInformationProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkSignatureMatch()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callee Signature does not match."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method private handleConnection(Landroid/os/IBinder;)V
    .locals 3

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    iget-object v2, v2, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$type:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;->getComponentVersion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$002(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;)Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$002(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;)Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;

    .line 123
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retreive component information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 127
    :goto_2
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    throw p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->checkSignatureMatch()V

    .line 109
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$1;->handleConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
