.class final Lcom/amazon/foundation/internal/SimpleCallbackManager;
.super Ljava/lang/Object;
.source "SimpleCallbackManager.java"

# interfaces
.implements Lcom/amazon/foundation/CallbackManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callbacks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private callbacksArray:[Ljava/lang/Object;

.field private notifying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    return-void
.end method

.method private final getRegisteredCallbackIndex(Ljava/lang/Object;)I
    .locals 4

    if-eqz p1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 170
    iget-object v3, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 171
    monitor-exit v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final executeCallbacks(Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;)V
    .locals 6

    .line 47
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    xor-int/2addr v0, v1

    const-string v1, "Notifying the same objects multiple times: we have an INFINITY Loop in the callback stack, please fix it ASAP!!!"

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    const-string v0, "Notifying the same objects multiple times: we have an INFINITY Loop in the callback stack, please fix it ASAP!!!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 58
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    .line 61
    iget-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 69
    :try_start_1
    iget-object v5, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 74
    invoke-interface {p1, v5}, Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;->executeCallback(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 78
    :try_start_2
    iput-boolean v3, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_4

    .line 82
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 87
    :cond_4
    throw p1

    .line 78
    :cond_5
    iput-boolean v3, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    sub-int/2addr v2, v1

    :goto_3
    if-ltz v2, :cond_7

    .line 82
    iget-object p1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 83
    iget-object p1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 84
    iget-object p1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 88
    :cond_7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final register(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 101
    :cond_0
    sget-object p1, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t register a Null callback !"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final unregister(Ljava/lang/Object;)Z
    .locals 3

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/SimpleCallbackManager;->getRegisteredCallbackIndex(Ljava/lang/Object;)I

    move-result v0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacksArray:[Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-boolean v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->notifying:Z

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/amazon/foundation/internal/SimpleCallbackManager;->callbacks:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 130
    :goto_0
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 134
    :cond_1
    sget-object p1, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    const-string v0, "can\'t unregister a callback because it was never registered"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_2
    sget-object p1, Lcom/amazon/foundation/internal/SimpleCallbackManager;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t check a Null callback is registered!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
