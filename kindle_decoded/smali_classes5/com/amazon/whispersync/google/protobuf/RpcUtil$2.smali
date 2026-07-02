.class final Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/google/protobuf/RpcUtil;->newOneTimeCallback(Lcom/amazon/whispersync/google/protobuf/RpcCallback;)Lcom/amazon/whispersync/google/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
        "TParameterType;>;"
    }
.end annotation


# instance fields
.field private alreadyCalled:Z

.field final synthetic val$originalCallback:Lcom/amazon/whispersync/google/protobuf/RpcCallback;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/google/protobuf/RpcCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/amazon/whispersync/google/protobuf/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParameterType;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;->alreadyCalled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/RpcUtil$2;->val$originalCallback:Lcom/amazon/whispersync/google/protobuf/RpcCallback;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/google/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/amazon/whispersync/google/protobuf/RpcUtil$AlreadyCalledException;

    invoke-direct {p1}, Lcom/amazon/whispersync/google/protobuf/RpcUtil$AlreadyCalledException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
