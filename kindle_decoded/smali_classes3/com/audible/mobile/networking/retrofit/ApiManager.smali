.class public Lcom/audible/mobile/networking/retrofit/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# instance fields
.field private final cachedServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/framework/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/framework/Factory<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Retrofit;

    invoke-direct {p0, p1}, Lcom/audible/mobile/networking/retrofit/ApiManager;-><init>(Lretrofit2/Retrofit;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->cachedServiceMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method


# virtual methods
.method public declared-synchronized getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->cachedServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->cachedServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/audible/mobile/networking/retrofit/ApiManager;->cachedServiceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
