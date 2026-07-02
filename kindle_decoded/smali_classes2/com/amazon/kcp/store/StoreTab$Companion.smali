.class public final Lcom/amazon/kcp/store/StoreTab$Companion;
.super Ljava/lang/Object;
.source "StoreTab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreTab$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$shouldUsePaymentFlows(Lcom/amazon/kcp/store/StoreTab$Companion;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreTab$Companion;->shouldUsePaymentFlows()Z

    move-result p0

    return p0
.end method

.method private final shouldUsePaymentFlows()Z
    .locals 2

    .line 32
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreTab$Companion;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kcp/store/R$string;->tab_label_store:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kcp/store/R$string;->tab_label_discover:I

    :goto_0
    return v0
.end method
