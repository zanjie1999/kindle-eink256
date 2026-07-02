.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$2;
.super Ljava/lang/Object;
.source "ReviewBookBackDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 28
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
