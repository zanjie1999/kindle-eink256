.class final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "DisclosureFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->access$getDelegate$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewCreated$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;->onBackViewClicked(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
