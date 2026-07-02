.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;->notify(Lcom/amazon/kcp/reader/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

.field final synthetic val$note:Lcom/amazon/kcp/reader/Note;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;->this$1:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;

    iget-object v0, v0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6;->val$adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$6$1;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    return-void
.end method
