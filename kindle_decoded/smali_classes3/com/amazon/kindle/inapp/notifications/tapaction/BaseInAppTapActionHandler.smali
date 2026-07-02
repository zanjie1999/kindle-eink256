.class public abstract Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.super Ljava/lang/Object;
.source "BaseInAppTapActionHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseInAppTapActionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseInAppTapActionHandler.kt\ncom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler\n*L\n1#1,19:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final sdk$delegate:Lkotlin/Lazy;

.field private final tapActionUtil$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "tapActionUtil"

    const-string v5, "getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "sdk"

    const-string v4, "getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$tapActionUtil$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->tapActionUtil$delegate:Lkotlin/Lazy;

    .line 15
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$sdk$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler$sdk$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->sdk$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->sdk$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public final getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->tapActionUtil$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    return-object v0
.end method

.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
