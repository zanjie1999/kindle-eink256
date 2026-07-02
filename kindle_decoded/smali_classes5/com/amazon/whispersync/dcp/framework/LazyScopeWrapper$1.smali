.class Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;
.super Ljava/lang/Object;
.source "LazyScopeWrapper.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
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
.field private mScopedProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;

.field final synthetic val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

.field final synthetic val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->mScopedProviders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->access$100(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->access$000(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Scope;

    .line 51
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->mScopedProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->mScopedProviders:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->val$tKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->val$tProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/Scope;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;->mScopedProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
