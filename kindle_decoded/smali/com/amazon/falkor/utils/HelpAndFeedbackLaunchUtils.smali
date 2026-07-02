.class public final Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;
.super Ljava/lang/Object;
.source "HelpAndFeedbackLaunchUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;->INSTANCE:Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final openHelpCantilever(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "T1"

    .line 44
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "VELLA_GPLAY_LINK"

    goto :goto_0

    :cond_0
    const-string p3, "VELLA_GPLAY_PLAIN"

    .line 45
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cantileverMode"

    .line 46
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchHelpAndFeedbackView(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private final openHelpWebPage(Landroid/app/Activity;)V
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://www.amazon.com/gp/help/customer/display.html?nodeId=GRD6T3PJCSJTAUYL&nodl_android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final launchHelpAndFeedback(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v1, "KINDLE_ANDROID_FALKOR_GPLAY_HELP_387236"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "C"

    :goto_0
    const-string v1, "T2"

    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-direct {p0, p2}, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;->openHelpWebPage(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "treatment"

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;->openHelpCantilever(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
