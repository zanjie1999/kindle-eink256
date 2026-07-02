.class public final Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ErrorDialogFragment.kt"


# instance fields
.field private error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private final createErrorMessage()Landroid/text/SpannableString;
    .locals 7

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_ugs_generic_error_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026s_ugs_generic_error_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x3

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 42
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    const-string v1, "resources.getString(R.st\u2026_move_closer_to_kindle_2)"

    if-nez v2, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_move_closer_to_kindle_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_move_closer_to_kindle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026fs_move_closer_to_kindle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_6
    :goto_2
    const-string v4, "resources.getString(R.st\u2026m_setting_up_your_kindle)"

    if-nez v2, :cond_7

    goto :goto_3

    .line 45
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_problem_setting_up_your_kindle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_8
    :goto_3
    if-nez v2, :cond_9

    goto :goto_4

    .line 46
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_problem_setting_up_your_kindle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_a
    :goto_4
    if-nez v2, :cond_b

    goto/16 :goto_f

    .line 47
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_move_closer_to_kindle_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_c
    :goto_5
    if-nez v1, :cond_d

    goto/16 :goto_e

    .line 50
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_20

    .line 51
    iget-object v1, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_e
    const-string v1, "resources.getString(R.st\u2026blem_setting_up_kindle_2)"

    if-nez v2, :cond_f

    goto :goto_6

    .line 52
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_problem_setting_up_kindle_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_10
    :goto_6
    const-string v3, "resources.getString(R.st\u2026g.ffs_unable_to_register)"

    if-nez v2, :cond_11

    goto :goto_7

    .line 53
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_12
    :goto_7
    if-nez v2, :cond_13

    goto :goto_8

    .line 54
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_14
    :goto_8
    if-nez v2, :cond_15

    goto :goto_9

    .line 55
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_16

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_16
    :goto_9
    if-nez v2, :cond_17

    goto :goto_a

    .line 56
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_18

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_18
    :goto_a
    if-nez v2, :cond_19

    goto :goto_b

    .line 57
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_1a
    :goto_b
    if-nez v2, :cond_1b

    goto :goto_c

    .line 58
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_1c
    :goto_c
    if-nez v2, :cond_1d

    goto :goto_d

    .line 59
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_problem_setting_up_kindle_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    :goto_d
    if-nez v2, :cond_1f

    goto :goto_f

    .line 60
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_problem_setting_up_kindle_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    :goto_e
    if-nez v1, :cond_21

    goto :goto_f

    .line 63
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_22

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_ugs_timeout_error_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026fs_ugs_timeout_error_msg)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :cond_22
    :goto_f
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private final createErrorTitle()Ljava/lang/String;
    .locals 5

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_bluetooth_connection_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026uetooth_connection_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_bluetooth_connection_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_registration_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026g.ffs_registration_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_ugs_timeout_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_ugs_timeout_error_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 84
    sget-object p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartSetup()V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PopupError"

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    :goto_1
    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    .line 27
    sget p3, Lcom/amazon/kindle/ffs/R$layout;->error_popup:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    sget p2, Lcom/amazon/kindle/ffs/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById<TextView>(R.id.message)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->createErrorMessage()Landroid/text/SpannableString;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget p2, Lcom/amazon/kindle/ffs/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById<TextView>(R.id.title)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->createErrorTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget p2, Lcom/amazon/kindle/ffs/R$id;->ok:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/ErrorDialogFragment;->error:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    const-string v1, "PopupError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
