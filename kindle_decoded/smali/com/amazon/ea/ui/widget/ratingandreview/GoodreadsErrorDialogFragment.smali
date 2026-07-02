.class public Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "GoodreadsErrorDialogFragment.java"


# static fields
.field public static BUTTON_TEXT_RESOURCE_ID_KEY:Ljava/lang/String; = "com.amazon.ea.ui.widget.ratingandreview.GoodreadsErrorDialogFragment.BUTTON_TEXT_RESOURCE_ID_KEY"

.field public static MESSAGE_RESOURCE_ID_KEY:Ljava/lang/String; = "com.amazon.ea.ui.widget.ratingandreview.GoodreadsErrorDialogFragment.MESSAGE_RESOURCE_ID_KEY"


# instance fields
.field private buttonTextResourceId:I

.field dialog:Landroid/app/AlertDialog;

.field private messageResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->MESSAGE_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->messageResourceId:I

    .line 30
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->BUTTON_TEXT_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->buttonTextResourceId:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 35
    new-instance p1, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$style;->aa_NotesStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iget v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->messageResourceId:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 38
    iget v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->buttonTextResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method
