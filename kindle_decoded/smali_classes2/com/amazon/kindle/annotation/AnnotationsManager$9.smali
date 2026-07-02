.class Lcom/amazon/kindle/annotation/AnnotationsManager$9;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecarAsync(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$bookId:Lcom/amazon/kindle/model/content/IBookID;

.field final synthetic val$source:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->val$source:Ljava/io/File;

    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->val$source:Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->doProcessSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/sync/AnnotationIO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$400(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_PROCESSED:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;->val$bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 437
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;

    move-result-object v5

    invoke-interface {v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readMrpr()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;Ljava/lang/String;Lcom/amazon/kindle/model/content/LastPageRead;I)V

    .line 435
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 440
    invoke-static {}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to read annotation file"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
