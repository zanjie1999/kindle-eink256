.class public Lcom/amazon/identity/auth/device/bm;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bm$a;
    }
.end annotation


# instance fields
.field private final he:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/bm;->he:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized aK(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bm;->he:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bm;->aL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized aL(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bm;->he:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized aJ(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bm;->aK(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bm;->aL(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bm;->aK(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return-object p1

    .line 63
    :cond_0
    :try_start_1
    new-instance p2, Lcom/amazon/identity/auth/device/bm$a;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/device/bm$a;-><init>(Lcom/amazon/identity/auth/device/bm;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
