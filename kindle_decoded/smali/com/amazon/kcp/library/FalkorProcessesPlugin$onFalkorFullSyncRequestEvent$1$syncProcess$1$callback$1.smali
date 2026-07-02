.class final Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1$callback$1;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1$callback$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1$callback$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1$syncProcess$1;->this$0:Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;

    iget-object p1, p1, Lcom/amazon/kcp/library/FalkorProcessesPlugin$onFalkorFullSyncRequestEvent$1;->$event:Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/FalkorFullSyncRequestEvent;->getOnSuccess()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
