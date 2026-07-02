.class Lcom/google/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/Cache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4881
    new-instance v0, Lcom/google/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/cache/LocalCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4885
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/LocalCache;Lcom/google/common/cache/LocalCache$1;)V
    .locals 0

    .line 4877
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public invalidate(Ljava/lang/Object;)V
    .locals 1

    .line 4926
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4927
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4970
    new-instance v0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method
