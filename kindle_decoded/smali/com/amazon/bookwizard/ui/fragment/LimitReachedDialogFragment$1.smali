.class Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$1;
.super Ljava/lang/Object;
.source "LimitReachedDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$1;->this$0:Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
