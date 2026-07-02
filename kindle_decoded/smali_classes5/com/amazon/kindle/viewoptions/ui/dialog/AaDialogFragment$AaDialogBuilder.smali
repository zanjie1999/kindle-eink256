.class public Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
.super Ljava/lang/Object;
.source "AaDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AaDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaDialogFragment.kt\ncom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n1#2:143\n*E\n"
.end annotation


# instance fields
.field private final buildType:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

.field protected contentContainer:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field private customContentView:Landroid/view/View;

.field protected defaultContentView:Landroid/widget/TextView;

.field protected dialogView:Landroid/view/View;

.field private message:Ljava/lang/CharSequence;

.field private negativeButton:Landroid/widget/Button;

.field private negativeButtonAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private positiveButton:Landroid/widget/Button;

.field private positiveButtonAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->buildType:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title:Ljava/lang/CharSequence;

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message:Ljava/lang/CharSequence;

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText:Ljava/lang/CharSequence;

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
    .locals 2

    .line 72
    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;-><init>()V

    .line 73
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->setDialogView(Landroid/view/View;)V

    return-object v0
.end method

.method public buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;
    .locals 7

    const-string v0, "dialogFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->inflateDialogView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "dialogView"

    if-eqz v0, :cond_14

    .line 88
    sget v3, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->titleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_13

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_content_container:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->contentContainer:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_11

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_default_content:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "dialogView.findViewById(\u20262_dialog_default_content)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->defaultContentView:Landroid/widget/TextView;

    .line 100
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->buildType:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    sget-object v5, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->BASIC:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    const-string v6, "defaultContentView"

    if-ne v4, v5, :cond_3

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->defaultContentView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v0, :cond_10

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->customContentView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 107
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->contentContainer:Landroid/widget/LinearLayout;

    const-string v5, "contentContainer"

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->contentContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_f

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_positive:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    new-instance v4, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$1;

    invoke-direct {v4, p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_e

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_negative:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    new-instance v3, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;

    invoke-direct {v3, p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder$buildDialogView$$inlined$let$lambda$2;-><init>(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 136
    :cond_b
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->dialogView:Landroid/view/View;

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_10
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected final getContentContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->contentContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "contentContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final getNegativeButton()Landroid/widget/Button;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected final getNegativeButtonAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected final getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final getPositiveButton()Landroid/widget/Button;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected final getPositiveButtonAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected final getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public inflateDialogView()Landroid/view/View;
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_dialog_fragment_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026og_fragment_layout, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;"
        }
    .end annotation

    const-string v0, "negativeButtonAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1

    const-string v0, "negativeButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "positiveButtonAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1

    const-string/jumbo v0, "positiveButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected final setNegativeButton(Landroid/widget/Button;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButton:Landroid/widget/Button;

    return-void
.end method

.method protected final setPositiveButton(Landroid/widget/Button;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButton:Landroid/widget/Button;

    return-void
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method
