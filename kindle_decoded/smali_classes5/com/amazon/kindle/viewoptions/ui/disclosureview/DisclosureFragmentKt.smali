.class public final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentKt;
.super Ljava/lang/Object;
.source "DisclosureFragment.kt"


# direct methods
.method public static final fragmentForDisclosure(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;
    .locals 2

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backViewText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->setContentView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 39
    new-instance p2, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;->getChildSettings()Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 40
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->setContentView(Landroid/view/ViewGroup;)V

    if-eqz p4, :cond_1

    .line 42
    invoke-virtual {v0, p4}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;->setDelegate(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)V

    :cond_1
    :goto_0
    return-object v0
.end method
