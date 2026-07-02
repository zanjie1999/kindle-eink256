.class Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;
.super Ljava/lang/Object;
.source "BaseDefinitionContainerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->scanDBForUserDictionariesAsync(Lcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

.field final synthetic val$callback:Lcom/amazon/kindle/callback/ICallback;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->val$callback:Lcom/amazon/kindle/callback/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->this$0:Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->scanDBForUserDictionaries()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->val$callback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v1, :cond_0

    .line 444
    :goto_0
    invoke-interface {v1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 440
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while scanning DB for dictionaries"

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->val$callback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseDefinitionContainerModule$5;->val$callback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v2, :cond_1

    .line 444
    invoke-interface {v2, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 446
    :cond_1
    throw v1
.end method
