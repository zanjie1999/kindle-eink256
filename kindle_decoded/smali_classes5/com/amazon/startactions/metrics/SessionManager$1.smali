.class final Lcom/amazon/startactions/metrics/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/metrics/SessionManager;->saveSessionToDisk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$session:Lcom/amazon/startactions/metrics/SessionManager$Session;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/metrics/SessionManager$Session;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/startactions/metrics/SessionManager$1;->val$session:Lcom/amazon/startactions/metrics/SessionManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 175
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/amazon/startactions/metrics/SessionManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving session to disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/startactions/metrics/SessionManager$1;->val$session:Lcom/amazon/startactions/metrics/SessionManager$Session;

    invoke-virtual {v2}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/metrics/SessionManager$1;->val$session:Lcom/amazon/startactions/metrics/SessionManager$Session;

    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->access$200(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/metrics/SessionManager$1;->val$session:Lcom/amazon/startactions/metrics/SessionManager$Session;

    invoke-virtual {v1}, Lcom/amazon/startactions/metrics/SessionManager$Session;->getMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/util/FileUtil;->writeSerialiazableToFile(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method
