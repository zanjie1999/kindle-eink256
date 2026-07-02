.class Lcom/amazon/kindle/annotation/AnnotationsManager$5;
.super Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;
.source "AnnotationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsEarly(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$bookId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p5, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->val$bookId:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;-><init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 7

    .line 337
    invoke-super {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->onRequestComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v0, v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->val$bookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->filenameAndPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$400(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$5;->val$bookId:Ljava/lang/String;

    new-instance v4, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6, v5}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;Ljava/lang/String;Lcom/amazon/kindle/model/content/LastPageRead;I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 345
    :goto_0
    invoke-super {p0}, Lcom/amazon/kindle/download/AnnotationSidecarWebRequest;->onRequestComplete()Z

    move-result v0

    return v0
.end method
