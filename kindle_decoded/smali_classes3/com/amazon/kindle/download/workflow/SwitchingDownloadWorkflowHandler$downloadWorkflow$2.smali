.class final Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwitchingDownloadWorkflowHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;-><init>(Lcom/amazon/kindle/download/assets/IAssetStateManager;Lkotlin/jvm/functions/Function0;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;->this$0:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;->this$0:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    invoke-static {v0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->access$getShouldUseCoroutines$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;->this$0:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    invoke-static {v0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->access$getCoroutineWorkflowProvider$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;->this$0:Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;

    invoke-static {v0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;->access$getLegacyWorkflowProvider$p(Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/SwitchingDownloadWorkflowHandler$downloadWorkflow$2;->invoke()Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    move-result-object v0

    return-object v0
.end method
