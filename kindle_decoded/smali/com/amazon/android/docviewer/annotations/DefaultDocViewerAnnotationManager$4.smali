.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 977
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4$1;-><init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notify(Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    return-void
.end method
