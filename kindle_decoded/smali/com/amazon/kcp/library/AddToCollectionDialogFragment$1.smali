.class Lcom/amazon/kcp/library/AddToCollectionDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToCollectionDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/AddToCollectionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$1;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->access$000(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

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
