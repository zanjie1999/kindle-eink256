.class public Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;
.super Ljava/lang/Object;
.source "DCPLog.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private mLogLevel:I

.field private mSubtagString:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTags:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadLocalTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    .line 192
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$1;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mThreadLocalTags:Ljava/lang/ThreadLocal;

    .line 201
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config$2;-><init>(Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mSubtagString:Ljava/lang/ThreadLocal;

    const/4 v0, 0x4

    .line 210
    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mLogLevel:I

    return-void
.end method

.method private addTags(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    .line 343
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeLogLevel()V
    .locals 3

    .line 350
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->getLogLevelKey()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v1

    const-string v2, "INFO"

    invoke-virtual {v1, v0, v2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 360
    :cond_0
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->stringToLogLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mLogLevel:I

    return-void
.end method

.method private computeMembers()V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->computeSubtagString()V

    .line 323
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->computeLogLevel()V

    return-void
.end method

.method private computeSubtagString()V
    .locals 3

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    invoke-direct {p0, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->addTags(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 332
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mThreadLocalTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->addTags(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 334
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mSubtagString:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private getLogLevelKey()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 365
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->getMainTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "log.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private popTag(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 281
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->computeMembers()V

    return-void

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private pushTag(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->computeMembers()V

    return-void
.end method

.method private static stringToLogLevel(Ljava/lang/String;)I
    .locals 1

    .line 370
    const-class v0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;

    .line 372
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$LogLevel;->getLevel()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getMainTag()Ljava/lang/String;
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DCP"

    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubtagString()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mSubtagString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->computeSubtagString()V

    .line 316
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mSubtagString:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public popTag(Ljava/lang/String;)V
    .locals 1

    .line 222
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popTag(Ljava/lang/String;Ljava/util/Stack;)V

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public popThreadLocalTag(Ljava/lang/String;)V
    .locals 1

    .line 251
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mThreadLocalTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popTag(Ljava/lang/String;Ljava/util/Stack;)V

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushTag(Ljava/lang/String;)V
    .locals 1

    .line 214
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mTags:Ljava/util/Stack;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushTag(Ljava/lang/String;Ljava/util/Stack;)V

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushThreadLocalTag(Ljava/lang/String;)V
    .locals 1

    .line 243
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mThreadLocalTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushTag(Ljava/lang/String;Ljava/util/Stack;)V

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public runWithTag(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushTag(Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popTag(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popTag(Ljava/lang/String;)V

    throw p2
.end method

.method public runWithThreadLocalTag(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->pushThreadLocalTag(Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popThreadLocalTag(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->popThreadLocalTag(Ljava/lang/String;)V

    throw p2
.end method

.method public shouldLog(I)Z
    .locals 1

    .line 291
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->mLogLevel:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
