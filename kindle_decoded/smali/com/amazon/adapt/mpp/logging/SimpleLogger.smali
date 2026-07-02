.class Lcom/amazon/adapt/mpp/logging/SimpleLogger;
.super Ljava/lang/Object;
.source "SimpleLogger.java"

# interfaces
.implements Lcom/amazon/adapt/mpp/logging/Logger;


# instance fields
.field private final mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

.field private final mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;


# direct methods
.method constructor <init>(Lcom/amazon/adapt/mpp/logging/LogWriter;Lcom/amazon/adapt/mpp/logging/LogFilter;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    .line 12
    iput-object p2, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method getLogFilter()Lcom/amazon/adapt/mpp/logging/LogFilter;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    return-object v0
.end method

.method getLogWriter()Lcom/amazon/adapt/mpp/logging/LogWriter;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final info(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    iget-object v1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/adapt/mpp/logging/LogFilter;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    iget-object v1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/adapt/mpp/logging/LogFilter;->isErrorEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    iget-object v1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/adapt/mpp/logging/LogFilter;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVerboseEnabled()Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    iget-object v1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/adapt/mpp/logging/LogFilter;->isVerboseEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mFilter:Lcom/amazon/adapt/mpp/logging/LogFilter;

    iget-object v1, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/adapt/mpp/logging/LogFilter;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isVerboseEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isVerboseEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isVerboseEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->isWarnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/amazon/adapt/mpp/logging/SimpleLogger;->mWriter:Lcom/amazon/adapt/mpp/logging/LogWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Lcom/amazon/adapt/mpp/logging/LogWriter;->writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
