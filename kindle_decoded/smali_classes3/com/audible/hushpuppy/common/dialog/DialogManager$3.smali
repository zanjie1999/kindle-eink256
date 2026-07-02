.class Lcom/audible/hushpuppy/common/dialog/DialogManager$3;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->onEndOfSynchronizedContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->access$100(Lcom/audible/hushpuppy/common/dialog/DialogManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->access$200(Lcom/audible/hushpuppy/common/dialog/DialogManager;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$3;->this$0:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->access$102(Lcom/audible/hushpuppy/common/dialog/DialogManager;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
