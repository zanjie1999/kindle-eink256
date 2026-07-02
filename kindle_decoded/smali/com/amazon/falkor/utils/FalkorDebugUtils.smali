.class public final Lcom/amazon/falkor/utils/FalkorDebugUtils;
.super Ljava/lang/Object;
.source "FalkorDebugUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDebugUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDebugUtils.kt\ncom/amazon/falkor/utils/FalkorDebugUtils\n*L\n1#1,30:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils;

.field private static final falkorGPlayPaymentFlowsDisableWeblab$delegate:Lkotlin/Lazy;

.field private static final falkorTOSAPIsWeblab$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "falkorTOSAPIsWeblab"

    const-string v5, "getFalkorTOSAPIsWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "falkorGPlayPaymentFlowsDisableWeblab"

    const-string v4, "getFalkorGPlayPaymentFlowsDisableWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/falkor/utils/FalkorDebugUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 11
    new-instance v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils;

    .line 12
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorTOSAPIsWeblab$2;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorTOSAPIsWeblab$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->falkorTOSAPIsWeblab$delegate:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDebugUtils$falkorGPlayPaymentFlowsDisableWeblab$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->falkorGPlayPaymentFlowsDisableWeblab$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFalkorGPlayPaymentFlowsDisableWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->falkorGPlayPaymentFlowsDisableWeblab$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/utils/FalkorDebugUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-object v0
.end method

.method private final getFalkorTOSAPIsWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 3

    sget-object v0, Lcom/amazon/falkor/utils/FalkorDebugUtils;->falkorTOSAPIsWeblab$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/falkor/utils/FalkorDebugUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-object v0
.end method


# virtual methods
.method public final isFalkorGPlayPaymentFlowsDisabledByWeblab()Z
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/amazon/falkor/utils/FalkorDebugUtils;->getFalkorGPlayPaymentFlowsDisableWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFalkorTOSAPIsEnabled()Z
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/amazon/falkor/utils/FalkorDebugUtils;->getFalkorTOSAPIsWeblab()Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "T1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
