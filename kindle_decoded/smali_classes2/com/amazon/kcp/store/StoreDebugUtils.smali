.class public final Lcom/amazon/kcp/store/StoreDebugUtils;
.super Ljava/lang/Object;
.source "StoreDebugUtils.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/store/StoreDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreDebugUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isStoreDiscoverableJSInterfaceEnabled()Z
    .locals 3

    .line 15
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    .line 16
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KINDLE_ANDROID_STORE_DISCOVERABLE_JS_INTERFACE_379686"

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    return v0
.end method
