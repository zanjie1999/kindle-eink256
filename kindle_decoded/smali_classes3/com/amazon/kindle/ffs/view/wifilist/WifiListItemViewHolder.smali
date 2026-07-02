.class public final Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WifiListItemViewHolder.kt"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final getAccessibilityText(Lcom/amazon/kindle/ffs/model/WifiNetwork;)Ljava/lang/String;
    .locals 9

    .line 110
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getSignal()Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 116
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_network_description_three:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 115
    :cond_1
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_network_description_two:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_2
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_network_description_one:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v4, "when (network.signal) {\n\u2026cription_three)\n        }"

    .line 113
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    sget v4, Lcom/amazon/kindle/ffs/R$string;->ffs_open_network_description:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 122
    :cond_3
    sget v4, Lcom/amazon/kindle/ffs/R$string;->ffs_protected_network_description:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, "if (network.open) {\n    \u2026rk_description)\n        }"

    .line 119
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getConnecting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v6, "itemView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/ffs/R$string;->ffs_connecting:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const-string v5, ""

    :goto_3
    const-string v6, "if (network.connecting) \u2026\n            \"\"\n        }"

    .line 125
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/amazon/kindle/ffs/R$string;->ffs_x_out_of_y:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getPositionNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getElementsNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 131
    invoke-static {v0, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v8

    aput-object v4, v0, v3

    aput-object v5, v0, v2

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "{0}, {1}, {2}, {3}"

    .line 135
    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageFormat.format(acc\u2026nnectingStatus, position)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 110
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method


# virtual methods
.method public final bind(Lcom/amazon/kindle/ffs/model/WifiNetwork;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ffs/R$id;->network_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v4, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    .line 44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v1, "networkNameTextView"

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;)V

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->setRequestAccessibilityFocus(Lkotlin/jvm/functions/Function0;)V

    .line 53
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ffs/R$id;->strength_and_password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getOpen()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getSignal()Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    move-result-object v2

    sget-object v6, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_0

    .line 64
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->three_lines_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 61
    :cond_0
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->two_lines_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :cond_1
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->one_line_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getSignal()Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    move-result-object v2

    sget-object v6, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    .line 76
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->three_lines_secure:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 73
    :cond_3
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->two_lines_secure:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    :cond_4
    sget v2, Lcom/amazon/kindle/ffs/R$drawable;->one_line_secure:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getDisabled()Z

    move-result v2

    const/4 v4, 0x0

    const-string v6, "strengthAndPassword"

    const/4 v7, 0x4

    const-string v8, "itemView.findViewById<Pr\u2026(R.id.connecting_spinner)"

    const-string v9, "itemView"

    if-eqz v2, :cond_5

    .line 82
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ffs/R$id;->connecting_spinner:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ProgressBar;

    invoke-virtual {p2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/ffs/R$color;->wifi_item_disabled:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x3f0a3d71    # 0.54f

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 85
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 87
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 88
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/model/WifiNetwork;->getConnecting()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ffs/R$id;->connecting_spinner:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ProgressBar;

    invoke-virtual {p2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 93
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 94
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/amazon/kindle/ffs/R$id;->connecting_spinner:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/ffs/R$color;->ugs_foreground:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;

    invoke-direct {v2, p2, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder$bind$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 103
    :goto_1
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemViewHolder;->getAccessibilityText(Lcom/amazon/kindle/ffs/model/WifiNetwork;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
