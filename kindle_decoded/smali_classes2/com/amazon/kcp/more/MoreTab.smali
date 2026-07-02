.class public final Lcom/amazon/kcp/more/MoreTab;
.super Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;
.source "MoreTab.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/LandingScreenTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/more/MoreTab$Companion;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String;


# instance fields
.field private final moreRootIntent$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/more/MoreTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/more/MoreTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    const-class v0, Lcom/amazon/kcp/more/MoreTab;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KotlinUtilsKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/more/MoreTab;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;-><init>()V

    .line 28
    sget-object v0, Lcom/amazon/kcp/more/MoreTab$moreRootIntent$2;->INSTANCE:Lcom/amazon/kcp/more/MoreTab$moreRootIntent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/more/MoreTab;->moreRootIntent$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMoreRootIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/more/MoreTab;->moreRootIntent$delegate:Lkotlin/Lazy;

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

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/more/MoreTab$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 42
    sget p1, Lcom/amazon/kcp/more/R$drawable;->tab_icon_more_dark:I

    goto :goto_0

    .line 41
    :cond_0
    sget p1, Lcom/amazon/kcp/more/R$drawable;->tab_icon_more_light:I

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/more/MoreTab;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "More"

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xfa0

    return p1
.end method

.method public getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/more/MoreTab;->getMoreRootIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kcp/more/R$string;->tab_label_more:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.androidContext.g\u2026(R.string.tab_label_more)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isActivated(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    const-string v0, "Utils.getFactory().applicationCapabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/StoreTabDeprecationUtils;->isStoreTabDeprecated()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
