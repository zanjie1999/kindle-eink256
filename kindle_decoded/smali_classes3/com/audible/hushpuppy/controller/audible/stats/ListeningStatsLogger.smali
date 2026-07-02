.class public final Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;
.super Ljava/lang/Object;
.source "ListeningStatsLogger.java"

# interfaces
.implements Lcom/audible/application/stats/util/ILogger;


# static fields
.field private static final DEFAULT_THROWABLE_MSG:Ljava/lang/String; = "ListeningStatsThrowable"


# instance fields
.field private final logger:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;-><init>(Lcom/audible/hushpuppy/common/logging/ILogger;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/common/logging/ILogger;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 4

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string v2, ", "

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x1

    .line 61
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const-string v3, "="

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "ListeningStatsThrowable"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public pii(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method
