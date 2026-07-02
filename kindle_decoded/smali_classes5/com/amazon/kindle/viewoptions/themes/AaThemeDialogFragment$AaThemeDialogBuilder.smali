.class final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
.super Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
.source "AaThemeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AaThemeDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaThemeDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaThemeDialogFragment.kt\ncom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,312:1\n1#2:313\n*E\n"
.end annotation


# instance fields
.field private final DISABLE_ALPHA:F

.field private final ENABLE_ALPHA:F

.field private final INPUT_LIMIT:I

.field private checkbox:Landroid/widget/CheckBox;

.field private checkboxEnabled:Z

.field private checkboxText:Ljava/lang/CharSequence;

.field private errorText:Ljava/lang/CharSequence;

.field private errorView:Landroid/widget/TextView;

.field private inputText:Ljava/lang/CharSequence;

.field private inputView:Landroid/widget/EditText;

.field private final themeDialogType:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themeDialogType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/ui/dialog/BuildType;)V

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->themeDialogType:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    const/16 p1, 0x14

    .line 94
    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->INPUT_LIMIT:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 95
    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->DISABLE_ALPHA:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 96
    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->ENABLE_ALPHA:F

    const-string p1, ""

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText:Ljava/lang/CharSequence;

    .line 98
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorText:Ljava/lang/CharSequence;

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxText:Ljava/lang/CharSequence;

    return-void
.end method

.method public static final synthetic access$getErrorView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "errorView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getINPUT_LIMIT$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->INPUT_LIMIT:I

    return p0
.end method

.method public static final synthetic access$getInputView$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Landroid/widget/EditText;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "inputView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getNegativeButtonAction$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButtonAction()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPositiveButtonAction$p(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButtonAction()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void
.end method

.method public static final synthetic access$setSaveButton(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setSaveButton(Z)V

    return-void
.end method

.method private final setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V
    .locals 6

    .line 247
    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "errorView"

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_name_exceeds_char_limit_error:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_name_already_taken_error:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_name_unknown_error:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p2, :cond_8

    .line 254
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_a

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 256
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_a
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setSaveButton(Z)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->ENABLE_ALPHA:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->DISABLE_ALPHA:F

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private final setupInputBox(Landroid/view/View;)V
    .locals 4

    .line 202
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_input_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "dialogContentView.findVi\u20262_dialog_input_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_input_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "inputBox.findViewById(R.\u2026nu_v2_dialog_input_count)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 204
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "inputBox.findViewById(R.\u2026.aa_menu_v2_dialog_input)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    .line 205
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$watcher$1;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$watcher$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Landroid/widget/TextView;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "inputView"

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 231
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$setupInputBox$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;
    .locals 9

    const-string v0, "dialogFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->buildDialogView(Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)Landroid/view/View;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_theme_dialog_fragment_content_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "dialogContentView.findVi\u2026a_menu_v2_dialog_message)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_save_dialog_message:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_0
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_error_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "dialogContentView.findVi\u2026aa_menu_v2_error_message)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "errorView"

    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v6, "context.resources"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->errorView:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v2, "dialogContentView"

    .line 145
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setupInputBox(Landroid/view/View;)V

    .line 148
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "dialogContentView.findVi\u2026_menu_v2_dialog_checkbox)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    .line 149
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->themeDialogType:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    sget-object v6, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->SAVE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    const-string v7, "checkbox"

    if-ne v4, v6, :cond_6

    if-eqz v2, :cond_5

    .line 150
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v6, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2CheckboxDrawable:I

    const/4 v8, 0x0

    aput v6, v4, v8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v4, "context.theme.obtainStyl\u2026aMenuV2CheckboxDrawable))"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_13

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2, v3, v3, v3}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_12

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-boolean v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxEnabled:Z

    if-nez v2, :cond_9

    .line 158
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 159
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_7

    iget v3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->DISABLE_ALPHA:F

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_2

    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_a

    .line 164
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_positive:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->setPositiveButton(Landroid/widget/Button;)V

    .line 166
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;

    invoke-direct {v3, p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 176
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getPositiveButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_e

    .line 181
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_dialog_negative:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->setNegativeButton(Landroid/widget/Button;)V

    .line 183
    :cond_e
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_f
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButton()Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v3, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$2;

    invoke-direct {v3, p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder$buildDialogView$$inlined$let$lambda$2;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 191
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getNegativeButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    :cond_11
    :goto_4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContentContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 197
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContentContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 156
    :cond_12
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_14
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final checkboxEnabled(Z)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxEnabled:Z

    return-object p0
.end method

.method public final checkboxText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string v0, "checkboxText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public inflateDialogView()Landroid/view/View;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_theme_dialog_fragment_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026og_fragment_layout, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final inputText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string v0, "inputText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method

.method public negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;"
        }
    .end annotation

    const-string v0, "negativeButtonAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method

.method public negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string v0, "negativeButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method

.method public positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;"
        }
    .end annotation

    const-string/jumbo v0, "positiveButtonAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method

.method public positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string/jumbo v0, "positiveButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method

.method public final saveButtonClicked(Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 5

    const-string/jumbo v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_SAVE_CUSTOM_THEME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstan\u2026A_THEME_SAVE_CUSTOM_THEME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindlePerformanceConstan\u2026CUSTOM_THEME.metricString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfStartMarker(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object v1

    .line 266
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_SAVED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->getValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->NA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v4, 0x0

    .line 264
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->isThemeNameTaken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->AVAILABILITY:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->saveCustomTheme(ILjava/lang/String;)V

    .line 274
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->NONE:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, p1, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void

    .line 278
    :cond_2
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->GENERAL:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void

    :cond_3
    const-string p1, "inputView"

    .line 267
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final saveButtonClickedOnEdit(Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 6

    const-string/jumbo v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_EDIT_THEME_WITH_CUSTOM_SETTINGS:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v3, "KindlePerformanceConstan\u2026HEME_WITH_CUSTOM_SETTINGS"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 284
    :cond_0
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_THEME_EDIT_USER_THEME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v3, "KindlePerformanceConstan\u2026.AA_THEME_EDIT_USER_THEME"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v3, "perfString"

    .line 285
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfStartMarker(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputView:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->editTheme(ILjava/lang/String;Z)V

    .line 291
    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->NONE:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, v1, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->isThemeNameTaken(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 294
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->AVAILABILITY:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void

    .line 297
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->editTheme(ILjava/lang/String;Z)V

    .line 298
    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->NONE:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, v1, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    :goto_1
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    .line 302
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PRESETS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->getMetricName(Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;

    move-result-object p1

    .line 304
    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_EDIT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-virtual {p2}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->getValue()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->NA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    .line 302
    invoke-static {v0, p1, p2, v1, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    :cond_5
    return-void

    .line 308
    :cond_6
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/ErrorType;->GENERAL:Lcom/amazon/kindle/viewoptions/themes/ErrorType;

    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->setErrorMessage(Lcom/amazon/kindle/viewoptions/themes/ErrorType;Z)V

    return-void

    :cond_7
    const-string p1, "inputView"

    .line 286
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "checkbox"

    .line 282
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    return-object p0
.end method
