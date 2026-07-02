.class public final Lcom/amazon/xray/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.kt"


# static fields
.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/amazon/xray/util/DebugUtil;

    invoke-direct {v0}, Lcom/amazon/xray/util/DebugUtil;-><init>()V

    .line 7
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "XrayPlugin.getSdk()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/util/DebugUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppType()Ljava/lang/String;
    .locals 2

    .line 11
    sget-object v0, Lcom/amazon/xray/util/DebugUtil;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFirstPartyBuild()Z
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/xray/util/DebugUtil;->getAppType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KRT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
