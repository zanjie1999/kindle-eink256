.class Lcom/amazon/kindle/DbDownloadResumer$1;
.super Ljava/lang/Object;
.source "DbDownloadResumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/DbDownloadResumer;->resumeDownloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/DbDownloadResumer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/DbDownloadResumer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/DbDownloadResumer$1;->this$0:Lcom/amazon/kindle/DbDownloadResumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/DbDownloadResumer$1;->this$0:Lcom/amazon/kindle/DbDownloadResumer;

    iget-object v0, v0, Lcom/amazon/kindle/DbDownloadResumer;->helper:Lcom/amazon/kindle/LibraryServiceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/LibraryServiceHelper;->getDownloadingOrQueuedLunaItems(Z)Ljava/util/List;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/DbDownloadResumer$1;->this$0:Lcom/amazon/kindle/DbDownloadResumer;

    iget-object v1, v1, Lcom/amazon/kindle/DbDownloadResumer;->helper:Lcom/amazon/kindle/LibraryServiceHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/LibraryServiceHelper;->getDownloadingOrQueuedLunaItems(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-static {}, Lcom/amazon/kindle/DbDownloadResumer;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Luna downloads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/amazon/kindle/DbDownloadResumer;->access$000()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming download for luna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/amazon/kindle/DbDownloadResumer$1;->this$0:Lcom/amazon/kindle/DbDownloadResumer;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/DbDownloadResumer;->attemptDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
