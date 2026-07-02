.class Lcom/amazon/kcp/reader/BookReaderActivity$6;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookReaderActivity;->createVerifyAndDeleteAnnotationDialog(I)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$6;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 491
    iget-object p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$6;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-static {p2}, Lcom/amazon/kcp/reader/BookReaderActivity;->access$000(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ReaderController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 493
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p2

    .line 494
    iget v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$6;->val$index:I

    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationAtIndex(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 501
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    return-void
.end method
