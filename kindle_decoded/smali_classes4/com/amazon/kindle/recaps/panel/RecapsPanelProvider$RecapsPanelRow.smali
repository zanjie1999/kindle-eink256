.class final Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;
.super Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;
.source "RecapsPanelProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecapsPanelRow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsPanelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsPanelProvider.kt\ncom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow\n*L\n1#1,87:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final recapsPanelSecondaryText$delegate:Lkotlin/Lazy;

.field private final recapsPanelText$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "recapsPanelText"

    const-string v5, "getRecapsPanelText()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "recapsPanelSecondaryText"

    const-string v4, "getRecapsPanelSecondaryText()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    const-class v0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/panels/AbstractKRXCustomPanelRow;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->context:Landroid/content/Context;

    .line 42
    new-instance p1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelText$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelText$2;-><init>(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->recapsPanelText$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$recapsPanelSecondaryText$2;-><init>(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->recapsPanelSecondaryText$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getRecapsPanelSecondaryText$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getRecapsPanelSecondaryText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRecapsPanelText$p(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getRecapsPanelText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getRecapsPanelSecondaryText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->recapsPanelSecondaryText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getRecapsPanelText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->recapsPanelText$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getChildRows()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getChildRows()Ljava/util/List;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getChildRows()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getCustomView()Landroid/view/View;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getCustomView()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getCustomView()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->getIconComponent()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object v0
.end method

.method public getIconComponent()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 78
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow$getTextComponent$1;-><init>(Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;)V

    return-object v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->INSTANCE:Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;

    const-string v1, "RecapsOpenAction"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/recaps/util/RecapsPerfHelper;->logPerfMarker(Ljava/lang/String;Z)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    sget-object v1, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setReaderContext(Ljava/lang/ref/WeakReference;)V

    .line 55
    sget-object v1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    const-string v2, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v2, Lcom/amazon/kindle/recaps/RecapsCommonModel;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsCommonModel;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/recaps/RecapsCommonModel;->setCurrentBook(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;->TAG:Ljava/lang/String;

    const-string v2, "Could not get current book"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    sget-object p1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_SLIDER_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    return-void
.end method
