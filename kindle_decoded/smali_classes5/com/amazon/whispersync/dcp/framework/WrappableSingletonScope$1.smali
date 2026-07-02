.class Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;
.super Ljava/lang/Object;
.source "WrappableSingletonScope.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

.field final synthetic val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

.field final synthetic val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->access$000(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->access$100(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->access$100(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v3}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->this$0:Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->access$100(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
