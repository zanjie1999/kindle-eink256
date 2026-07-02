.class Lcom/amazon/kcp/reader/BookReaderActivity$5;
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

.field final synthetic val$annotationIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookReaderActivity;I)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    iput p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$5;->val$annotationIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 466
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 467
    iget p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$5;->val$annotationIndex:I

    const-string v0, "ANNOTATION_INDEX"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    iget-object p2, p0, Lcom/amazon/kcp/reader/BookReaderActivity$5;->this$0:Lcom/amazon/kcp/reader/BookReaderActivity;

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
