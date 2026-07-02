.class Lcom/amazon/kcp/reader/BookReaderActivity$4;
.super Ljava/lang/Object;
.source "BookReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookReaderActivity;->createNotePopupDialog(I)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

.field final synthetic val$annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field final synthetic val$annotationIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;I)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    iput p3, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotationIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 449
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "note_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotationIndex:I

    const-string v1, "annotation_index"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const-string v1, "selectedAnnotationStart"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->val$annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const-string v1, "selectedAnnotationType"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNoteUIProvider()Lcom/amazon/kcp/reader/notebook/INoteUIProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$4;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-interface {v0, p2, v1}, Lcom/amazon/kcp/reader/notebook/INoteUIProvider;->showNoteEditDialog(Landroid/os/Bundle;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 456
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
