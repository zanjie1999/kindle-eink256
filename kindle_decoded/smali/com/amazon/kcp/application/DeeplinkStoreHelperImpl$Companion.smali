.class public final Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;
.super Ljava/lang/Object;
.source "DeeplinkStoreHelperImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p0

    return-object p0
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->access$getMessageQueue$cp()Lkotlin/Lazy;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->Companion:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method
