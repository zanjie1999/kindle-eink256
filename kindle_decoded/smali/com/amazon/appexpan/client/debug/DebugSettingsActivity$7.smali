.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resetData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->deleteAllResourcesAndSets()V

    .line 227
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->clearSyncToken()V

    .line 229
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/download/ManifestHandler;->requestManifest(Z)Lcom/amazon/appexpan/client/model/Manifest;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v1, v1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->insertManifest(Lcom/amazon/appexpan/client/model/Manifest;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object v0, v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    return-void
.end method
