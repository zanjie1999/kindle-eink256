.class public Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;
.super Ljava/lang/Object;
.source "WrappableSingletonScope.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Scope;


# instance fields
.field private final mLock:[Ljava/lang/Object;

.field private final mObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->mObjects:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->mLock:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)[Ljava/lang/Object;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->mLock:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;)Ljava/util/Map;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;->mObjects:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope$1;-><init>(Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object v0
.end method
