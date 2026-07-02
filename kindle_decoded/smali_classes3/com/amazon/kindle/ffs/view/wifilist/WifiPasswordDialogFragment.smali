.class public final Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "WifiPasswordDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiPasswordDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiPasswordDialogFragment.kt\ncom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment\n+ 2 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt\n*L\n1#1,345:1\n31#2,4:346\n10#2:350\n26#2:351\n37#2,2:352\n*E\n*S KotlinDebug\n*F\n+ 1 WifiPasswordDialogFragment.kt\ncom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment\n*L\n197#1,4:346\n197#1:350\n197#1:351\n197#1,2:352\n*E\n"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private disableSaveWifiToLocker:Z

.field private hidePasswordCheck:Z

.field private isError:Z

.field private listener:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;

.field private networkKeyManagement:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private saveWifiToLocker:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->password:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    return-void
.end method

.method public static final synthetic access$changeVisibilityStatusExceptForLearnMore(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->changeVisibilityStatusExceptForLearnMore(Z)V

    return-void
.end method

.method public static final synthetic access$getCheckButtonContentDescription(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->getCheckButtonContentDescription(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHidePasswordCheck$p(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    return p0
.end method

.method public static final synthetic access$getSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    return p0
.end method

.method public static final synthetic access$joinNetworkClicked(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->joinNetworkClicked()V

    return-void
.end method

.method public static final synthetic access$setFocusOnLearnMore(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->setFocusOnLearnMore()V

    return-void
.end method

.method public static final synthetic access$setHidePasswordCheck$p(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    return-void
.end method

.method public static final synthetic access$setSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    return-void
.end method

.method public static final synthetic access$updateCheckButtonImage(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->updateCheckButtonImage(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public static final synthetic access$updateInputTextFromState(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->updateInputTextFromState(Landroid/widget/EditText;)V

    return-void
.end method

.method private final changeVisibilityStatusExceptForLearnMore(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 184
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/amazon/kindle/ffs/R$id;->network_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/amazon/kindle/ffs/R$id;->enter_password_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/amazon/kindle/ffs/R$id;->hide_password_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v1, Lcom/amazon/kindle/ffs/R$id;->textView2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v1, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v1, Lcom/amazon/kindle/ffs/R$id;->join_network:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v1, Lcom/amazon/kindle/ffs/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private final createTitleSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6

    const-string v1, "{0}"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 207
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x3

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 212
    new-instance p1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {p1, p2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    const/16 v2, 0x21

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    .line 209
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getCheckButtonContentDescription(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    if-eqz p1, :cond_1

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_checked:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 289
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_unchecked:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getCheckStatus(Landroid/view/View;I)Z
    .locals 0

    .line 243
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById<ImageButton>(resourceId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final joinNetworkClicked()V
    .locals 7

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget v2, Lcom/amazon/kindle/ffs/R$id;->enter_password_input:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, "passwordInput"

    .line 220
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    sget-object v2, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;

    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkKeyManagement:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->isValidWifiKey(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_invalid_password:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 224
    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_invalid_password:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 225
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_0
    sget-object v2, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->INSTANCE:Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;

    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkKeyManagement:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3, v0, v4}, Lcom/amazon/kindle/ffs/utils/WifiConfigurationFactory;->generateWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->listener:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "view!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_check:I

    invoke-direct {p0, v4, v6}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->getCheckStatus(Landroid/view/View;I)Z

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/amazon/kindle/ffs/R$id;->hide_password_check:I

    invoke-direct {p0, v6, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->getCheckStatus(Landroid/view/View;I)Z

    move-result v1

    invoke-interface {v3, v2, v0, v4, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;->updatePassword(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Ljava/lang/String;ZZ)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_3
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 222
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 219
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method private final makeBasicCheckButton(Landroid/view/View;IZLjava/lang/String;)Landroid/widget/ImageButton;
    .locals 0

    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const-string p2, "imageButton"

    .line 274
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->updateCheckButtonImage(Landroid/widget/ImageButton;)V

    .line 276
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->getCheckButtonContentDescription(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private final makeDisabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLjava/lang/String;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeBasicCheckButton(Landroid/view/View;IZLjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object p2

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lcom/amazon/kindle/ffs/R$color;->ugs_disabled_filter:I

    invoke-static {p4, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    if-eqz p3, :cond_0

    .line 250
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ffs/R$color;->ugs_disabled:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private final makeEnabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeBasicCheckButton(Landroid/view/View;IZLjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object p2

    .line 256
    invoke-virtual {p2}, Landroid/widget/ImageButton;->clearColorFilter()V

    if-eqz p3, :cond_0

    .line 258
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/ffs/R$color;->ugs_foreground:I

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    :cond_0
    new-instance p1, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;

    invoke-direct {p1, p0, p2, p6, p5}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$makeEnabledCheckButton$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/ImageButton;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "\""

    .line 235
    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private final setFocusOnLearnMore()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/amazon/kindle/ffs/R$id;->learn_more_link:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 346
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_2

    .line 198
    sget-object v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragmentKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    const-string v4, "doOnLayout"

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v2, 0x40

    .line 200
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/16 v1, 0x8

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    .line 350
    :cond_2
    new-instance v1, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$setFocusOnLearnMore$$inlined$doOnLayout$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final updateCheckButtonImage(Landroid/widget/ImageButton;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget v0, Lcom/amazon/kindle/ffs/R$drawable;->check_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 301
    :cond_0
    sget v0, Lcom/amazon/kindle/ffs/R$drawable;->check_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    .line 296
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updateInputTextFromState(Landroid/widget/EditText;)V
    .locals 3

    .line 306
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 307
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 308
    iget-boolean v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x81

    .line 309
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x90

    .line 311
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 314
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xb59

    if-ne p1, p2, :cond_0

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onActivityResult$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 332
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 334
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->listener:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kindle.ffs.view.wifilist.WifiPasswordDialogFragment.UpdatePasswordListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement UpdatePasswordListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->listener:Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$UpdatePasswordListener;->cancelPassword()V

    .line 342
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void

    :cond_0
    const-string p1, "listener"

    .line 341
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Lcom/amazon/kindle/ffs/R$layout;->fragment_wifi_password_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "networkName"

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkName:Ljava/lang/String;

    const-string p2, "description"

    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->description:Ljava/lang/String;

    const-string p2, "networkKeyManagement"

    if-eqz p3, :cond_4

    .line 57
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_5

    .line 59
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkKeyManagement:Ljava/lang/String;

    const-string p2, "hidePasswordCheck"

    if-eqz p3, :cond_6

    .line 61
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_7

    .line 62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_7

    .line 63
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_7
    iput-boolean p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    const-string p2, "saveWifiToLocker"

    if-eqz p3, :cond_8

    .line 65
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v0

    :goto_8
    const/4 v9, 0x1

    if-eqz v2, :cond_9

    .line 66
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_9

    .line 67
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_9
    iput-boolean p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    const-string p2, "disableSaveWifiToLocker"

    if-eqz p3, :cond_a

    .line 69
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_a

    :cond_a
    move-object v2, v0

    :goto_a
    if-eqz v2, :cond_b

    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_b

    .line 71
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_b
    iput-boolean p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->disableSaveWifiToLocker:Z

    const-string p2, "password"

    if-eqz p3, :cond_c

    .line 73
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_c
    move-object v2, v0

    :goto_c
    if-eqz v2, :cond_d

    goto :goto_d

    .line 74
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "arguments.getString(\"password\", \"\")"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->password:Ljava/lang/String;

    const-string p2, "isError"

    if-eqz p3, :cond_e

    .line 76
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_e

    :cond_e
    move-object p3, v0

    :goto_e
    if-eqz p3, :cond_f

    .line 77
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_f
    iput-boolean p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->isError:Z

    if-eqz p2, :cond_10

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ffs/R$string;->ffs_incorrect_password:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resources.getString(R.st\u2026g.ffs_incorrect_password)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    .line 80
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ffs/R$string;->ffs_enter_password_for:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "resources.getString(R.st\u2026g.ffs_enter_password_for)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkName:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->createTitleSpan(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    .line 82
    :goto_10
    sget p3, Lcom/amazon/kindle/ffs/R$id;->network_header:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_19

    check-cast p3, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget p2, Lcom/amazon/kindle/ffs/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_18

    check-cast p2, Landroid/widget/TextView;

    .line 86
    iget-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->description:Ljava/lang/String;

    if-eqz p3, :cond_12

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    goto :goto_11

    :cond_11
    const/4 p3, 0x0

    goto :goto_12

    :cond_12
    :goto_11
    const/4 p3, 0x1

    :goto_12
    if-eqz p3, :cond_13

    const/16 p3, 0x8

    .line 87
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 89
    :cond_13
    iget-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->description:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_13
    sget p2, Lcom/amazon/kindle/ffs/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget p2, Lcom/amazon/kindle/ffs/R$id;->enter_password_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 97
    iget-object p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->password:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget p3, Lcom/amazon/kindle/ffs/R$id;->join_network:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 100
    iget-boolean v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->isError:Z

    if-eqz v2, :cond_14

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ffs/R$string;->ffs_try_again:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_14
    new-instance v2, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_save_password:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string p3, "resources.getString(R.string.ffs_save_password)"

    invoke-static {v8, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-boolean p3, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->disableSaveWifiToLocker:Z

    const-string v2, "view"

    if-eqz p3, :cond_15

    .line 111
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_check:I

    sget p3, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_text:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    move-object v2, p0

    move-object v3, p1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeDisabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLjava/lang/String;)V

    goto :goto_14

    .line 113
    :cond_15
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_check:I

    sget p3, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_text:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    new-instance v7, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;

    invoke-direct {v7, p0}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$3;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;)V

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeEnabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 117
    :goto_14
    sget v4, Lcom/amazon/kindle/ffs/R$id;->hide_password_check:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    new-instance v7, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$4;

    invoke-direct {v7, p0, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$4;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Landroid/widget/EditText;)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_hide_password:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    .line 117
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->makeEnabledCheckButton(Landroid/view/View;ILjava/lang/Integer;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    const-string p3, "passwordInput"

    .line 122
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->updateInputTextFromState(Landroid/widget/EditText;)V

    .line 124
    sget p3, Lcom/amazon/kindle/ffs/R$id;->save_to_amazon_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v2, "saveToAmazonText"

    .line 125
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ffs/R$string;->ffs_save_password:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array p3, v9, [Ljava/lang/Object;

    .line 127
    sget-object v2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCustomerDomain()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    const-string v0, "https://{0}/gp/help/customer/display.html?nodeId=201730860&pop-up=1"

    invoke-static {v0, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ffs/R$string;->ffs_learn_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</a>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    sget v2, Lcom/amazon/kindle/ffs/R$id;->learn_more_link:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v5, "learnMore"

    if-lt v3, v4, :cond_16

    .line 133
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/ffs/R$string;->ffs_enter_password:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 136
    :cond_16
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_enter_password:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    :goto_15
    new-instance p2, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$5;

    invoke-direct {p2, p0, p3}, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment$onCreateView$5;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;Ljava/lang/String;)V

    invoke-static {v2, p2}, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt;->handleUrlClicks(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V

    return-object p1

    .line 127
    :cond_17
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 85
    :cond_18
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 82
    :cond_19
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkName:Ljava/lang/String;

    const-string v1, "networkName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->description:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 320
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->networkKeyManagement:Ljava/lang/String;

    const-string v1, "networkKeyManagement"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 321
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->hidePasswordCheck:Z

    const-string v1, "hidePasswordCheck"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 322
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->saveWifiToLocker:Z

    const-string v1, "saveWifiToLocker"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    if-eqz p1, :cond_5

    .line 323
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->disableSaveWifiToLocker:Z

    const-string v1, "disableSaveWifiToLocker"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    if-eqz p1, :cond_6

    .line 324
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WifiPasswordDialogFragment;->isError:Z

    const-string v1, "isError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    sget v2, Lcom/amazon/kindle/ffs/R$id;->enter_password_input:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v2, Lcom/amazon/kindle/ffs/R$id;->enter_password_input:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_9
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
