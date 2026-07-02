.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;
.super Ljava/lang/Object;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->handleSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Landroid/content/Context;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 508
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$400(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;)V

    .line 511
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->isFirstPartyChinaUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$6;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->initializeDictionaries(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
