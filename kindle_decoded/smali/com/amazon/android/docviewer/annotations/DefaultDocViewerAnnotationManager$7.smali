.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$7;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$notes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Ljava/util/List;)V
    .locals 0

    .line 1019
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$7;->val$notes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$7;->val$notes:Ljava/util/List;

    return-object v0
.end method
