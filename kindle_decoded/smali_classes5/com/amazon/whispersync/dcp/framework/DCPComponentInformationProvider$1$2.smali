.class Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;
.super Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;
.source "DCPComponentInformationProvider.java"


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

    .line 146
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected startAsyncOperation()V
    .locals 4

    .line 152
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    iget-object v1, v1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$type:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    iget-object v1, v1, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {v2}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$300(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not bind to information service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 161
    :try_start_2
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to informationService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1$2;->this$0:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;->access$200(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$1;)Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    throw v0
.end method
