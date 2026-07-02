.class Lcom/amazon/kcp/store/StoreFragment$3;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->onWebStoreCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$event:Lcom/amazon/kcp/store/WebStoreCredentialEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$3;->val$event:Lcom/amazon/kcp/store/WebStoreCredentialEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->val$event:Lcom/amazon/kcp/store/WebStoreCredentialEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->getType()Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->onCredentialsUpdated()V

    .line 1101
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1900(Lcom/amazon/kcp/store/StoreFragment;)V

    .line 1102
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->resetErrorState(Ljava/util/EnumSet;)V

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->val$event:Lcom/amazon/kcp/store/WebStoreCredentialEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->getType()Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->onCredentialsUpdateFailed(Z)V

    .line 1106
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$2000(Lcom/amazon/kcp/store/StoreFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$2100(Lcom/amazon/kcp/store/StoreFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->showStoreUnavailableMessage()V

    .line 1108
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$3;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->CREDENTIAL_UPDATE_FAILURE:Lcom/amazon/kcp/store/StoreError;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->onReceivedError(Lcom/amazon/kcp/store/StoreError;)V

    :cond_1
    :goto_0
    return-void
.end method
