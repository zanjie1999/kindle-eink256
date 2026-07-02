.class public final Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ConnectionErrorDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectionErrorDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionErrorDialogFragment.kt\ncom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment\n*L\n1#1,124:1\n*E\n"
.end annotation


# instance fields
.field private connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

.field private saveWifiToLocker:Ljava/lang/Boolean;

.field private wifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getConnectionErrorViewModel$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    return-object p0
.end method

.method public static final synthetic access$getSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->saveWifiToLocker:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$getWifiConfiguration$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->wifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-object p0
.end method

.method public static final synthetic access$setConnectionErrorViewModel$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    return-void
.end method

.method public static final synthetic access$setSaveWifiToLocker$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->saveWifiToLocker:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$setWifiConfiguration$p(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->wifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    return-void
.end method

.method private final createErrorMessage()Landroid/text/SpannableString;
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;->getAttemptedWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_login_to_wifi_try_again:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.resources.getStr\u2026_login_to_wifi_try_again)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 64
    iget-object v4, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 65
    iget-object v4, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v4

    const-string v6, "connectionErrorViewModel!!.wjError"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v7, 0x3

    const-string v8, "context.resources.getStr\u2026sure_internet_is_working)"

    if-eq v4, v7, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    const/4 v7, 0x5

    if-eq v4, v7, :cond_2

    const/4 v7, 0x6

    if-eq v4, v7, :cond_1

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    goto/16 :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_login_to_wifi_try_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    goto/16 :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_please_ensure_internet_is_working:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v5, v6, v5}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString$default(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_please_ensure_internet_is_working:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v5, v6, v5}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString$default(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_captive_portal_network_not_supported:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.resources.getStr\u2026al_network_not_supported)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ffs/R$string;->ffs_please_ensure_internet_is_working:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v5, v6, v5}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString$default(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_unable_to_login_to_wifi_try_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    :cond_7
    :goto_0
    return-object v1

    .line 64
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v5

    .line 59
    :cond_9
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8

    const-string v1, "{0}"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 90
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    if-eqz p2, :cond_3

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v0, 0x3

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz p1, :cond_1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p1

    add-int/lit8 p2, v0, 0x1

    add-int/lit8 v3, v1, -0x1

    const/16 v5, 0x21

    .line 102
    invoke-virtual {v4, p1, p2, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 103
    new-instance p1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {p1, v2}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v0, p2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 104
    new-instance p1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {p1, v2}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v3, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v4

    .line 99
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic createSpannableString$default(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/SpannableString;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 89
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private final removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "\""

    .line 111
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


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifi"

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    :goto_1
    iput-object v2, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->wifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    const-string v0, "saveWifiToLocker"

    if-eqz p3, :cond_2

    .line 33
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->saveWifiToLocker:Ljava/lang/Boolean;

    const-string v0, "WiFiListActivity:viewModel"

    if-eqz p3, :cond_4

    .line 36
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_4

    .line 38
    :cond_5
    sget-object p3, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-virtual {p3}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->getBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    :goto_4
    iput-object v1, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    .line 41
    sget p3, Lcom/amazon/kindle/ffs/R$layout;->wifi_login_error:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    sget p2, Lcom/amazon/kindle/ffs/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById<TextView>(R.id.message)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->createErrorMessage()Landroid/text/SpannableString;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget p2, Lcom/amazon/kindle/ffs/R$id;->try_again:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget p2, Lcom/amazon/kindle/ffs/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment$onCreateView$2;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->connectionErrorViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;

    const-string v1, "WiFiListActivity:viewModel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->wifiConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    const-string v1, "wifi"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/ConnectionErrorDialogFragment;->saveWifiToLocker:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "saveToLocker"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 121
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
