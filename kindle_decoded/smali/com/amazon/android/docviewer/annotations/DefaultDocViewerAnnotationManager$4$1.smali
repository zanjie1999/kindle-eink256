.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4$1;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4$1;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4$1;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;

    iget-object v0, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$4;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$100(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;)V

    return-void
.end method
