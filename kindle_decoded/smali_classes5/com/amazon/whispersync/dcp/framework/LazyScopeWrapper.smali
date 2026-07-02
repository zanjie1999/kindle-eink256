.class public Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;
.super Ljava/lang/Object;
.source "LazyScopeWrapper.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Scope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/amazon/whispersync/com/google/inject/Scope;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Scope;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;

.field private mInjector:Lcom/amazon/whispersync/com/google/inject/Injector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->mClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;)Ljava/lang/Class;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->mClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;->mInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

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

    .line 42
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper$1;-><init>(Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)V

    return-object v0
.end method
