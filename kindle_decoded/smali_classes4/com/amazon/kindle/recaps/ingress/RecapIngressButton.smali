.class public final Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "RecapIngressButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapIngressButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapIngressButton.kt\ncom/amazon/kindle/recaps/ingress/RecapIngressButton\n*L\n1#1,68:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final recapIngressButtonText$delegate:Lkotlin/Lazy;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "recapIngressButtonText"

    const-string v5, "getRecapIngressButtonText()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 25
    new-instance p1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton$recapIngressButtonText$2;-><init>(Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->recapIngressButtonText$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private final getRecapIngressButtonText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->recapIngressButtonText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "RecapIngressButton"

    return-object v0
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->getRecapIngressButtonText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 23
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 65
    sget-object p1, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsEnabledForCurrentBook()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->isVisible(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p2, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const/4 v0, 0x1

    const-string v1, "RecapsOpenAction"

    invoke-virtual {p2, v1, v0}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 33
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 34
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setReaderContext(Ljava/lang/ref/WeakReference;)V

    .line 40
    sget-object p1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string v1, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setCurrentBook(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->TAG:Ljava/lang/String;

    const-string v1, "Could not get current book"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    sget-object p1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object p2, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_PAGE_FLIP:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    return v0
.end method

.method public bridge synthetic onClick(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p2, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/recaps/ingress/RecapIngressButton;->onClick(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method
