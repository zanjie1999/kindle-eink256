.class final Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$setUpLearnMore$1;
.super Ljava/lang/Object;
.source "DisabledPaymentStoreTokenBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;->setUpLearnMore(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$setUpLearnMore$1;->this$0:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    sget-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {p1}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$setUpLearnMore$1;->this$0:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LearnMoreClicked"

    .line 86
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object p1, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;->INSTANCE:Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;

    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$setUpLearnMore$1;->this$0:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/amazon/falkor/utils/HelpAndFeedbackLaunchUtils;->launchHelpAndFeedback(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;)V

    .line 91
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$setUpLearnMore$1;->this$0:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-static {p1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;->access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/DismissStoreTokenBottomSheetEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/DismissStoreTokenBottomSheetEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
