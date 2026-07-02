.class Lcom/amazon/kindle/rendering/KRIFDocViewer$3;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->createTocTask()Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/android/docviewer/IKindleTOC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/android/docviewer/IKindleTOC;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$400(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    .line 1192
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1193
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$3$1;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1185
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$3;->call()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    return-object v0
.end method
