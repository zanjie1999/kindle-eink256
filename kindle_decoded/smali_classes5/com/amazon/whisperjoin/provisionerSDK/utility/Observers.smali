.class public Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
.super Ljava/lang/Object;
.source "Observers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EventType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.utility.Observers"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "TEventType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>(Ljava/util/Collection;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "TEventType;>;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mHandler:Landroid/os/Handler;

    :goto_0
    if-nez p1, :cond_1

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mObservers:Ljava/util/List;

    goto :goto_1

    .line 48
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mObservers:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "TEventType;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observer can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TEventType;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 77
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "TEventType;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "observer can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
