.class final Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;
.super Ljava/lang/Object;
.source "JumpForwardBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->createJumpForwardSheetView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;->this$0:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;->this$0:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->access$setMJumpedForward$p(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;Z)V

    .line 71
    sget-object p1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string v0, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;->this$0:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-static {v1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->access$getMSuggestedPosition$p(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 73
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;->this$0:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 75
    :cond_2
    sget-object p1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    .line 76
    new-instance v0, Lcom/amazon/kindle/recaps/events/JumpForwardButtonClickedEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/events/JumpForwardButtonClickedEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
