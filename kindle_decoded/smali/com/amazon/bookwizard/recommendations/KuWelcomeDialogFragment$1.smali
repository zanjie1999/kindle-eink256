.class Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;
.super Ljava/lang/Object;
.source "KuWelcomeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;->this$0:Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment;

    iput-object p2, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/KuWelcomeDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
