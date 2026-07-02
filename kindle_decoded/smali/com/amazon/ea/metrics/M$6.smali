.class final Lcom/amazon/ea/metrics/M$6;
.super Ljava/lang/Object;
.source "M.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/metrics/M;->closeSavedSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 487
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lcom/amazon/ea/metrics/M;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending sessions that were saved to disk"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->access$400()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/RegexFileFilter;

    const-string v2, "^.*_metric\\.tmp$"

    invoke-direct {v1, v2}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/ea/util/FileUtil;->readObjectsFromDirectory(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 496
    instance-of v3, v1, Lcom/amazon/ea/metrics/Profiler;

    if-eqz v3, :cond_1

    .line 497
    check-cast v1, Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "FromDisk"

    .line 498
    invoke-virtual {v1, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 499
    invoke-virtual {v1}, Lcom/amazon/ea/metrics/Profiler;->closeFromDisk()V

    .line 500
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    invoke-static {}, Lcom/amazon/ea/metrics/M;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closed metric on disk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    invoke-static {}, Lcom/amazon/ea/metrics/M;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No EA saved metrics found in disk"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
