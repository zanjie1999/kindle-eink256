.class public abstract Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;
.super Lcom/amazon/kcp/cover/badge/service/BadgeService;
.source "AsyncBadgeService.java"


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/cover/badge/IBadgeable;",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V
    .locals 7

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/badge/service/BadgeService;-><init>(Lcom/amazon/kcp/cover/badge/BadgeProviderFactory;)V

    .line 36
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->tasks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->tasks:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bindBadges(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/badge/IBadgeable;",
            "Landroid/content/res/Resources;",
            "Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 44
    new-instance v6, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;-><init>(Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V

    .line 66
    iget-object p2, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->tasks:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v6, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public cancelBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public isBinding(Lcom/amazon/kcp/cover/badge/IBadgeable;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->tasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
