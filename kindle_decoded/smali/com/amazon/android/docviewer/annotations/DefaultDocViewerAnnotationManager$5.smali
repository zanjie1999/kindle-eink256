.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 984
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNotes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$5;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
