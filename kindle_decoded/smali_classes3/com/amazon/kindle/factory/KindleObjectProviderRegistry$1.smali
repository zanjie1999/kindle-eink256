.class final Lcom/amazon/kindle/factory/KindleObjectProviderRegistry$1;
.super Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
.source "KindleObjectProviderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/factory/KindleObjectProviderRegistry<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/kindle/model/content/ILocalBookItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAll(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry$1;->getAll(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized registerProvider(Lcom/amazon/kindle/factory/IKindleObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 25
    monitor-exit p0

    return-void
.end method
