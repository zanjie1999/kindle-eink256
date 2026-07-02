.class final Lcom/amazon/xray/metrics/SessionManager$3;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/metrics/SessionManager;->closeSavedSessions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 186
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending sessions that were saved to disk"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->access$200()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/filefilter/RegexFileFilter;

    const-string v2, "^.*_metric\\.tmp$"

    invoke-direct {v1, v2}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/xray/util/DiskUtil;->readObjectsFromDirectory(Ljava/io/File;Ljava/io/FileFilter;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    instance-of v3, v1, Lcom/amazon/xray/metrics/Metric;

    if-eqz v3, :cond_1

    .line 196
    check-cast v1, Lcom/amazon/xray/metrics/Metric;

    const-string v3, "FromDisk"

    .line 197
    invoke-virtual {v1, v3, v2}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 198
    invoke-virtual {v1}, Lcom/amazon/xray/metrics/Metric;->close()V

    .line 199
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closed metric on disk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/xray/metrics/Metric;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
