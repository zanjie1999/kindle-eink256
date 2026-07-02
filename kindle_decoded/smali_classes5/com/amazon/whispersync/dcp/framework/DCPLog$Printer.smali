.class public Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;
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
    name = "Printer"
.end annotation


# instance fields
.field private mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatLogMetadata(ILjava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->getSubtagString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[PII: stripped in release builds]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    and-int/2addr p1, v1

    const-string v3, ""

    if-ne p1, v1, :cond_1

    const/4 p1, 0x5

    .line 441
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->getStackTrace(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p2, :cond_2

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, p2, v4

    aput-object p3, p2, v1

    aput-object p1, p2, v2

    const/4 p1, 0x3

    aput-object v3, p2, p1

    const-string p1, "%s%s%s%s"

    .line 449
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 417
    array-length v0, p2

    if-nez v0, :cond_0

    return-object p1

    .line 422
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStackTrace(I)Ljava/lang/String;
    .locals 3

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 457
    :goto_0
    array-length v2, v1

    if-gt p1, v2, :cond_0

    const/16 v2, 0xa

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, v1, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs print(IILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    .line 387
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    monitor-enter v0

    .line 389
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->formatLogMetadata(ILjava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->mConfig:Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;

    invoke-virtual {p3}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Config;->getMainTag()Ljava/lang/String;

    move-result-object v4

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p5

    .line 393
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->println(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 391
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected varargs println(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 0

    .line 399
    invoke-direct {p0, p4, p5}, Lcom/amazon/whispersync/dcp/framework/DCPLog$Printer;->formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x4

    and-int/2addr p2, p5

    if-ne p2, p5, :cond_1

    const/4 p2, 0x0

    .line 404
    invoke-static {p4}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->splitLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 406
    invoke-static {p1, p3, p5}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p5

    add-int/2addr p2, p5

    goto :goto_0

    :cond_0
    return p2

    .line 412
    :cond_1
    invoke-static {p1, p3, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
