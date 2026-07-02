.class Lcom/audible/hushpuppy/view/common/ToaInfoModal$1;
.super Ljava/lang/Object;
.source "ToaInfoModal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/common/ToaInfoModal;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/common/ToaInfoModal;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/common/ToaInfoModal;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal$1;->this$0:Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    invoke-static {}, Lcom/audible/hushpuppy/view/common/ToaInfoModal;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "close button clicked"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/ToaInfoModal$1;->this$0:Lcom/audible/hushpuppy/view/common/ToaInfoModal;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
