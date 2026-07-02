.class final Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RedirectUrlBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/RedirectUrlBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRedirectUrlBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RedirectUrlBuilder.kt\ncom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,169:1\n1245#2,2:170\n*E\n*S KotlinDebug\n*F\n+ 1 RedirectUrlBuilder.kt\ncom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2\n*L\n71#1,2:170\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;

    invoke-direct {v0}, Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
    .locals 7

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "KINDLE_APPCORE_REROUTING_MARKETPLACE_DETECTION_STRATEGY_388804"

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->EID_ONLY:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    .line 71
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->values()[Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    move-result-object v2

    .line 170
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 71
    invoke-virtual {v5}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->getTreatmentValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->EID_ONLY:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    :goto_4
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;->invoke()Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    move-result-object v0

    return-object v0
.end method
