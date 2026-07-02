.class public Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NwstdLocaleChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/utils/ILocaleChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static registerListener(Lcom/amazon/nwstd/utils/ILocaleChangedListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unregisterListener(Lcom/amazon/nwstd/utils/ILocaleChangedListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 63
    sget-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 32
    sget-object p2, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string v1, "Language changed"

    invoke-static {p2, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;-><init>(Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
