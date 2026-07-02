.class public Lcom/amazon/kcp/library/LibraryDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LibraryDialogFragment.java"


# instance fields
.field private okClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onOkClicked(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryDialogFragment;->okClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryDialogFragment;->okClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
