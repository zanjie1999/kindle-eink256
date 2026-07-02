.class Lcom/audible/hushpuppy/common/dialog/DialogManager$7;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/dialog/DialogManager;->showDialog(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/dialog/DialogManager;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 208
    iput-object p2, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$7;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/audible/hushpuppy/common/dialog/DialogManager$7;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
