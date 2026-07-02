.class public final Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;
.super Ljava/lang/Object;
.source "PausableThreadPoolExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/util/PausableThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final newSingleThreadExecutor()Lcom/amazon/kindle/util/PausableThreadPoolExecutor;
    .locals 8

    .line 33
    new-instance v7, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 34
    new-instance v6, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v1, Lcom/amazon/kindle/util/Named;

    const-string v2, "PausableThread"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/util/Prioritized;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/amazon/kindle/util/Prioritized;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {v6, v0}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v7
.end method
