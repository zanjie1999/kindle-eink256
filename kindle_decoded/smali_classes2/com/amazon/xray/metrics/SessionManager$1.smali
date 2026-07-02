.class final Lcom/amazon/xray/metrics/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/metrics/SessionManager;->saveSessionToDisk(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$session:Lcom/amazon/xray/metrics/SessionManager$Session;


# direct methods
.method constructor <init>(Lcom/amazon/xray/metrics/SessionManager$Session;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/xray/metrics/SessionManager$1;->val$session:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving session to disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/metrics/SessionManager$1;->val$session:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-virtual {v2}, Lcom/amazon/xray/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$1;->val$session:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/SessionManager$Session;->getMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->stopAllStartedTimers(Z)V

    .line 152
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$1;->val$session:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/metrics/SessionManager;->access$100(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/metrics/SessionManager$1;->val$session:Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-virtual {v1}, Lcom/amazon/xray/metrics/SessionManager$Session;->getMetric()Lcom/amazon/xray/metrics/Metric;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/util/DiskUtil;->writeObject(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method
