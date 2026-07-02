.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 1001
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 1013
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$2;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$2;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notify(Lcom/amazon/kcp/reader/Note;)V
    .locals 2

    .line 1004
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;Lcom/amazon/kcp/reader/Note;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
