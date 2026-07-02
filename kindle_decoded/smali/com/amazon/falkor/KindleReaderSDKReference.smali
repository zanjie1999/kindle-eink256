.class public final Lcom/amazon/falkor/KindleReaderSDKReference;
.super Ljava/lang/Object;
.source "FalkorAndroidPlugin.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

.field public static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-direct {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;-><init>()V

    sput-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 124
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "sdk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isSDKInitialized()Z
    .locals 1

    .line 130
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sput-object p1, Lcom/amazon/falkor/KindleReaderSDKReference;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
