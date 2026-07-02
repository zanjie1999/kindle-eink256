.class final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;
.super Ljava/lang/Object;
.source "DisclosureFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->access$getDelegate$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$onViewOptionsEvent$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;->onBackViewClicked(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
