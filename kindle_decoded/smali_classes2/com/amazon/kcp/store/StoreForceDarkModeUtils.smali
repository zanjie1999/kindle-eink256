.class public final Lcom/amazon/kcp/store/StoreForceDarkModeUtils;
.super Ljava/lang/Object;
.source "StoreForceDarkModeUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/store/StoreForceDarkModeUtils;

.field private static forceDarkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreForceDarkModeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 3

    .line 21
    sget-object v0, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->forceDarkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

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
    const-string v2, "KINDLE_ANDROID_STORE_FORCE_DARK_344532"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 25
    sput-object v0, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->forceDarkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    :cond_1
    return-object v0
.end method

.method public static final isForceDarkModeSupported()Z
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreForceDarkModeUtils;

    .line 40
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->isForceDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FORCE_DARK"

    .line 41
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FORCE_DARK_STRATEGY"

    .line 42
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setForceDark(Landroid/webkit/WebSettings;)Z
    .locals 1

    const-string v0, "settings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->isForceDarkModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 52
    invoke-static {p0, v0}, Landroidx/webkit/WebSettingsCompat;->setForceDark(Landroid/webkit/WebSettings;I)V

    const/4 v0, 0x1

    .line 54
    invoke-static {p0, v0}, Landroidx/webkit/WebSettingsCompat;->setForceDarkStrategy(Landroid/webkit/WebSettings;I)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final isForceDarkModeEnabled()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isStoreForceDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->getWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
