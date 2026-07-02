.class public Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;
.super Ljava/lang/Object;
.source "WeblabGateKeeper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeblabGateKeeper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeblabGateKeeper.kt\ncom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper\n*L\n1#1,17:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final sdk$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sdk"

    const-string v4, "getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper$sdk$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper$sdk$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->sdk$delegate:Lkotlin/Lazy;

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->displayEntrypoint()V

    return-void
.end method


# virtual methods
.method protected displayEntrypoint()V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;

    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/inapp/notifications/bell/BadgedBellIconProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLandingScreenActionProvider(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    return-void
.end method

.method protected final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->sdk$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method
