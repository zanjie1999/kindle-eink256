.class Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;
.super Ljava/lang/Object;
.source "DescriptionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
