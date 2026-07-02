.class final Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DisabledPaymentStoreTokenBottomSheetFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/events/IMessageQueue;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;

    invoke-direct {v0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;-><init>()V

    sput-object v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;->INSTANCE:Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 30
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    const-string/jumbo v1, "sdk.pubSubEventManager.c\u2026heetFragment::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentStoreTokenBottomSheetFragment$messageQueue$1;->invoke()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method
