.class public final Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;
.super Lcom/amazon/falkor/FalkorJSInterface;
.source "FalkorTOSJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorTOSJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorTOSJavascriptInterface.kt\ncom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface\n*L\n1#1,96:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;

.field private static instance:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

.field private final storeBottomSheetController$delegate:Lkotlin/Lazy;

.field private final storeTokenController$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string/jumbo v4, "storeTokenController"

    const-string v5, "getStoreTokenController()Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string/jumbo v3, "storeBottomSheetController"

    const-string v4, "getStoreBottomSheetController()Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->Companion:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/falkor/FalkorJSInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    .line 46
    const-class p2, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->TAG:Ljava/lang/String;

    .line 47
    new-instance p2, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeTokenController$2;-><init>(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->storeTokenController$delegate:Lkotlin/Lazy;

    .line 48
    new-instance p2, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;

    invoke-direct {p2, p1}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface$storeBottomSheetController$2;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->storeBottomSheetController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->instance:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    return-object v0
.end method

.method public static final synthetic access$getPlayBillingUtils$p(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;)Lcom/amazon/kindle/krx/payment/PlayBillingUtils;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    return-object p0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->instance:Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;

    return-void
.end method

.method private final getStoreBottomSheetController()Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;
    .locals 3

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->storeBottomSheetController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;

    return-object v0
.end method

.method private final getStoreTokenController()Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;
    .locals 3

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->storeTokenController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;

    return-object v0
.end method


# virtual methods
.method protected getTAG()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final openNativeBottomSheet(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/FalkorJSInterface;->parsePayloadJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "url"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "type"

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 73
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->getStoreBottomSheetController()Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/amazon/falkor/bottomsheet/StoreBottomSheetController;->showBottomSheet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while calling openNativeBottomSheet."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public final triggerNativeTokenPurchaseBottomsheet(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/FalkorJSInterface;->parsePayloadJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "tokenBalance"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tokenBalance is null on calling triggerNativeTokenPurchaseBottomsheet."

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/FalkorTOSJavascriptInterface;->getStoreTokenController()Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amazon/falkor/bottomsheet/StoreTokenBottomSheetController;->showBottomSheet(Ljava/lang/Integer;)V

    return-void
.end method
