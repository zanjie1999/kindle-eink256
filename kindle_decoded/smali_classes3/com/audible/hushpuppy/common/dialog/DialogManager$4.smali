.class Lcom/audible/hushpuppy/common/dialog/DialogManager$4;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->onUnsynchronizedContent(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$positiveCallback:Lcom/audible/hushpuppy/common/misc/IVoidCallback;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
    .locals 0

    .line 153
    iput-object p2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$4;->val$positiveCallback:Lcom/audible/hushpuppy/common/misc/IVoidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$4;->val$positiveCallback:Lcom/audible/hushpuppy/common/misc/IVoidCallback;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/misc/IVoidCallback;->execute()V

    return-void
.end method
