.class Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;Ljava/lang/String;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iget-object p1, p1, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsSync(Z)V

    .line 843
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->insertReaderLibraryActionItems()V

    return-void
.end method
