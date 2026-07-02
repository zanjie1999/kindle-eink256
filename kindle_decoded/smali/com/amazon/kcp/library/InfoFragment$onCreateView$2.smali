.class final Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "InfoFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/InfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listView:Landroid/widget/ListView;

.field final synthetic this$0:Lcom/amazon/kcp/library/InfoFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/InfoFragment;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->this$0:Lcom/amazon/kcp/library/InfoFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->$listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    sget-object p3, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    sget-object p2, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->INTEREST_BASED_ADS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object p2, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->COOKIES:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_2
    sget-object p2, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->PRIVACY_POLICY:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_3
    sget-object p2, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->LICENSE:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_4
    sget-object p2, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->TERMS_AND_CONDITIONS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {p2, p4, p3, p4}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_5
    new-instance p1, Lcom/amazon/kcp/library/WhatsNewDialogFragment;

    invoke-direct {p1}, Lcom/amazon/kcp/library/WhatsNewDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->this$0:Lcom/amazon/kcp/library/InfoFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "InfoFragment_WHATS_NEW"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_6
    iget-object p1, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->this$0:Lcom/amazon/kcp/library/InfoFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/amazon/kcp/library/InfoFragment$onCreateView$2;->this$0:Lcom/amazon/kcp/library/InfoFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class p4, Lcom/amazon/kcp/info/AboutActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.InfoFragment.InfoItem"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
