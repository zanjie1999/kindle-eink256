.class Lcom/amazon/kindle/rendering/KRIFDocViewer$1;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V
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

.field final synthetic val$krfBook:Lcom/amazon/krf/platform/KRFBook;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->val$krfBook:Lcom/amazon/krf/platform/KRFBook;

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

    .line 300
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->call()Ljava/lang/Void;

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

    const/4 v0, 0x1

    const-string v1, "KRIFDocViewer- read annotations"

    .line 303
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 304
    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$000(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->readAnnotations()V

    const/4 v2, 0x0

    .line 305
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const-string v1, "KRIFDocViewer- set content decoration provider"

    .line 307
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 309
    invoke-static {}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->val$krfBook:Lcom/amazon/krf/platform/KRFBook;

    new-instance v3, Lcom/amazon/kindle/contentdecoration/KRIFContentDecorationProvider;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v4}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$200(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$1;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/contentdecoration/KRIFContentDecorationProvider;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    invoke-interface {v0, v3}, Lcom/amazon/krf/platform/KRFBook;->setContentDecorationDataProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V

    .line 312
    :cond_0
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
