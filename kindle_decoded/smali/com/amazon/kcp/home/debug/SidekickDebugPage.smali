.class final Lcom/amazon/kcp/home/debug/SidekickDebugPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "SidekickDebugPageProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickDebugPageProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickDebugPageProvider.kt\ncom/amazon/kcp/home/debug/SidekickDebugPage\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,157:1\n11298#2:158\n11633#2,3:159\n*E\n*S KotlinDebug\n*F\n+ 1 SidekickDebugPageProvider.kt\ncom/amazon/kcp/home/debug/SidekickDebugPage\n*L\n47#1:158\n47#1,3:159\n*E\n"
.end annotation


# instance fields
.field private final gammaEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final settings:Lcom/amazon/kcp/home/debug/SidekickSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 44
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "LayoutInflater.from(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->inflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->values()[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    move-result-object p1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 47
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->gammaEndpoints:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getGammaEndpoints$p(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->gammaEndpoints:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)Lcom/amazon/kcp/home/debug/SidekickSettings;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    return-object p0
.end method

.method private final initializeButtonSelections(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 123
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_web_cards_enabled_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    const-string/jumbo v2, "web_cards_feature_enabled"

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_force_feed_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceFeedRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_page_size_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPageSizeOverridden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 126
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_author_follow_error_enabled_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getForceAuthorFollowAPIFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 127
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_debug_cards_enabled:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDebugCardsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    if-eqz p1, :cond_5

    .line 128
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_custom_endpoint_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getSidekickCustomEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 129
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_page_id_override:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getPageIdOverride()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 130
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_disable_card_shuffling:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isCardRotationDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    :cond_7
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->Companion:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;

    iget-object v1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getGammaEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->US:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    :goto_0
    if-eqz p1, :cond_9

    .line 132
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_endpoint_dropdown:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->gammaEndpoints:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    goto :goto_1

    :cond_a
    if-eqz p1, :cond_e

    .line 138
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_custom_endpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    :cond_b
    if-eqz p1, :cond_e

    .line 137
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_file_endpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    :cond_c
    if-eqz p1, :cond_e

    .line 136
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_preprod_endpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    :cond_d
    if-eqz p1, :cond_e

    .line 135
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_prod_endpoint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    :cond_e
    :goto_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sidekick Home Feed"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->sidekick_debug_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_page_size_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$1;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 56
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_force_feed_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$2;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 57
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_disable_card_shuffling:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$3;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 58
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_web_cards_enabled_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$4;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 59
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_author_follow_error_enabled_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$5;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 60
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_debug_cards_enabled:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$6;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 61
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_dismissed_cards_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$7;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 62
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_prod_endpoint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$8;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$8;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 63
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_preprod_endpoint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_8

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$9;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$9;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 64
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_file_endpoint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_9

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$10;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$10;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 65
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_custom_endpoint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_a

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$11;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$11;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz v0, :cond_b

    .line 66
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_page_id_override:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_b

    new-instance v2, Lcom/amazon/kcp/home/debug/TextChangedWatcher;

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$12;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    invoke-direct {v2, v3}, Lcom/amazon/kcp/home/debug/TextChangedWatcher;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 69
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_custom_endpoint_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_c

    new-instance v2, Lcom/amazon/kcp/home/debug/TextChangedWatcher;

    new-instance v3, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$13;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$13;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    invoke-direct {v2, v3}, Lcom/amazon/kcp/home/debug/TextChangedWatcher;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    :cond_c
    new-instance v1, Landroid/widget/ArrayAdapter;

    const-string/jumbo v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090009

    iget-object v4, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->gammaEndpoints:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->sk_endpoint_dropdown:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    :cond_d
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_endpoint_dropdown:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    if-eqz v1, :cond_e

    new-instance v2, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage$getView$14;-><init>(Lcom/amazon/kcp/home/debug/SidekickDebugPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    :cond_e
    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->initializeButtonSelections(Landroid/view/View;)V

    return-object v0
.end method

.method public final onCheckboxClicked(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    .line 96
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_web_cards_enabled_checkbox:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string/jumbo v1, "web_cards_feature_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->writeEnabledFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 97
    :cond_1
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_force_feed_refresh:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setForceFeedRefresh(Z)V

    goto :goto_0

    .line 98
    :cond_2
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_page_size_checkbox:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setPageSizeOverridden(Z)V

    goto :goto_0

    .line 99
    :cond_3
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_author_follow_error_enabled_checkbox:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v1, "force_author_follow_failure"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->writeEnabledFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 100
    :cond_4
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_debug_cards_enabled:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setDebugCardsEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_5
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sk_disable_card_shuffling:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setCardRotationDisabled(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onClearCards(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;->clearDismissedCards()V

    return-void
.end method

.method public final onEndpointSelected(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    .line 111
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_prod_endpoint:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setEndpoint(Lcom/amazon/kcp/home/debug/SidekickEndpoint;)V

    goto :goto_0

    .line 112
    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_preprod_endpoint:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PREPROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setEndpoint(Lcom/amazon/kcp/home/debug/SidekickEndpoint;)V

    goto :goto_0

    .line 113
    :cond_2
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_file_endpoint:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->FILE:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setEndpoint(Lcom/amazon/kcp/home/debug/SidekickEndpoint;)V

    goto :goto_0

    .line 114
    :cond_3
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sk_custom_endpoint:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickDebugPage;->settings:Lcom/amazon/kcp/home/debug/SidekickSettings;

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->CUSTOM:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->setEndpoint(Lcom/amazon/kcp/home/debug/SidekickEndpoint;)V

    :cond_4
    :goto_0
    return-void
.end method
