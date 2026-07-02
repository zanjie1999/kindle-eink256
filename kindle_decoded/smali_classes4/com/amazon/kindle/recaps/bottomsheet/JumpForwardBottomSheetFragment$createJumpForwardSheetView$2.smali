.class final Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;
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


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;->INSTANCE:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    sget-object p1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/amazon/kindle/recaps/events/PillClickEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/events/PillClickEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
