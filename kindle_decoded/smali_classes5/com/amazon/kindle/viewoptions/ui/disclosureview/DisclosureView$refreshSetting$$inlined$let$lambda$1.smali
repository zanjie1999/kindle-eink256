.class final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DisclosureView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;",
        "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $disclosure:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->$disclosure:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->$disclosure:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->access$getTabTitle$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentKt;->fragmentForDisclosure(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$refreshSetting$$inlined$let$lambda$1;->invoke(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    move-result-object p1

    return-object p1
.end method
