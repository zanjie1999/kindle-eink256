.class Lcom/amazon/kindle/rendering/KRIFDocViewer$8;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->loadAnnotations()V
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
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 2701
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

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

    .line 2701
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 2703
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$900(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readAnnotations()V

    .line 2704
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$1000(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$8;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 v0, 0x0

    return-object v0
.end method
