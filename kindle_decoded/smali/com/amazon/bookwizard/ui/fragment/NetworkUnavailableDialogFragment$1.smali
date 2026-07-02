.class Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$1;
.super Ljava/lang/Object;
.source "NetworkUnavailableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$1;->this$0:Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
