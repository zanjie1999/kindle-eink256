.class public final Lcom/amazon/kcp/library/LibraryTab;
.super Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;
.source "LibraryTab.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/LandingScreenTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryTab$Companion;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/LibraryTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/LibraryTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    const-class v0, Lcom/amazon/kcp/library/LibraryTab;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KotlinUtilsKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryTab;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLandingScreenTab;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.androidContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/library/LibraryTab$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 36
    sget p1, Lcom/amazon/kindle/librarymodule/R$drawable;->tab_icon_library_dark:I

    goto :goto_0

    .line 35
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$drawable;->tab_icon_library_light:I

    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/library/LibraryTab;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Library"

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x7d0

    return p1
.end method

.method public getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/amazon/kcp/library/LibraryScreenlet;->newIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    const-string v0, "LibraryScreenlet.newIntent()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTitle(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->tab_label_library:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.androidContext.g\u2026string.tab_label_library)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
