.class Lcom/amazon/kcp/store/StoreFragment$6;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$6;->val$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1597
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->val$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 1598
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received logout event"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->onLogout()V

    .line 1600
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->clearHistory()V

    .line 1601
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    goto :goto_0

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->val$event:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 1603
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received login event"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->ACCESS_NOT_ALLOWED:Lcom/amazon/kcp/store/StoreError;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->resetErrorState(Ljava/util/EnumSet;)V

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$6;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$3002(Lcom/amazon/kcp/store/StoreFragment;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
