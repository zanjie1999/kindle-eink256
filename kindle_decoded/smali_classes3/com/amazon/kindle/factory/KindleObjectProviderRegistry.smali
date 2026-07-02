.class public Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
.super Ljava/lang/Object;
.source "KindleObjectProviderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final locationSeekerProviders:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/factory/KindleObjectProviderRegistry<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private defaultObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry$1;-><init>(Ljava/lang/Integer;)V

    sput-object v0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->locationSeekerProviders:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->providers:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->defaultObject:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->defaultObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->providers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/factory/IKindleObjectProvider;

    .line 79
    invoke-interface {v2, p1}, Lcom/amazon/kindle/factory/IKindleObjectProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerProvider(Lcom/amazon/kindle/factory/IKindleObjectProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
            "TT;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->providers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
