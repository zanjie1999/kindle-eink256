.class public final Lcom/amazon/kcp/store/StoreTab;
.super Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;
.source "StoreTab.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/LandingScreenTab;
.implements Lcom/amazon/kcp/store/StoreTabProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreTab$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/store/StoreTab$Companion;

.field public static final ID:Ljava/lang/String;


# instance fields
.field private final rootIntent$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/store/StoreTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/StoreTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/store/StoreTab;->Companion:Lcom/amazon/kcp/store/StoreTab$Companion;

    .line 23
    const-class v0, Lcom/amazon/kcp/store/StoreTab;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KotlinUtilsKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreTab;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;-><init>()V

    .line 41
    sget-object v0, Lcom/amazon/kcp/store/StoreTab$rootIntent$2;->INSTANCE:Lcom/amazon/kcp/store/StoreTab$rootIntent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreTab;->rootIntent$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getRootIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/store/StoreTab;->rootIntent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    return-object v0
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/store/StoreTab$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 53
    sget-object p1, Lcom/amazon/kcp/store/StoreTab;->Companion:Lcom/amazon/kcp/store/StoreTab$Companion;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreTab$Companion;->access$shouldUsePaymentFlows(Lcom/amazon/kcp/store/StoreTab$Companion;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/kcp/store/R$drawable;->tab_icon_store_dark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kcp/store/R$drawable;->tab_icon_discover_dark:I

    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lcom/amazon/kcp/store/StoreTab;->Companion:Lcom/amazon/kcp/store/StoreTab$Companion;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreTab$Companion;->access$shouldUsePaymentFlows(Lcom/amazon/kcp/store/StoreTab$Companion;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/amazon/kcp/store/R$drawable;->tab_icon_store_light:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/amazon/kcp/store/R$drawable;->tab_icon_discover_light:I

    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kcp/store/StoreTab;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Store"

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xbb8

    return p1
.end method

.method public getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreTab;->getRootIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/store/StoreTab;->Companion:Lcom/amazon/kcp/store/StoreTab$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreTab$Companion;->getTitleResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.androidContext.getString(getTitleResId())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabDeprecated()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isPreactivationRequired(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
