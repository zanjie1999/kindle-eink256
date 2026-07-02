.class public final Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;
.super Ljava/lang/Object;
.source "HushpuppyLogger.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/logging/ILogger;


# static fields
.field private static final PACKAGE_PREFIX:Ljava/lang/String; = "com.audible"


# instance fields
.field private final registeredLogWriters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/hushpuppy/common/logging/ILogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Collection<",
            "Lcom/audible/hushpuppy/common/logging/ILogWriter;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "clazz can\'t be null."

    .line 54
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultLogWriter can\'t be null."

    .line 55
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    return-void
.end method

.method private getNetworkLogMsg(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NETWORK|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->getOriginCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOriginCall()Ljava/lang/String;
    .locals 4

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 231
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 232
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.audible"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "<UNKNOWN>"

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 113
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 121
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 131
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 141
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 191
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs e([Ljava/lang/String;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 183
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    const-string v3, " - "

    invoke-static {p1, v3}, Lcom/audible/mobile/util/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 151
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 159
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 66
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->isDebugEnabled()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->getNetworkLogMsg(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 75
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 83
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 93
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 103
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The following format is not valid, fix for proper logging: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 167
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->registeredLogWriters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/logging/ILogWriter;

    .line 175
    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/HushpuppyLogger;->tag:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogWriter;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
