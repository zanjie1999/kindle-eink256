.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$2;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$2;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$2;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

    iget-object v0, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;->val$adapter:Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method
