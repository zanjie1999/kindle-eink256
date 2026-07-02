.class Lcom/amazon/kcp/reader/NoteCardActivity$6;
.super Ljava/lang/Object;
.source "NoteCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NoteCardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NoteCardActivity;Landroidx/appcompat/app/AlertDialog;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->this$0:Lcom/amazon/kcp/reader/NoteCardActivity;

    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity$6;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/NoteCardActivity;->access$100(Lcom/amazon/kcp/reader/NoteCardActivity;ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
