.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/HomeCardBuilder;


# instance fields
.field private final weblabName:Ljava/lang/String;

.field private final widgetProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper$widgetProvider$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper;->widgetProvider$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getWidgetProvider()Lcom/amazon/kindle/home/card/HomeCardBuilder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper;->widgetProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/home/card/HomeCardBuilder;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProviderWrapper;->getWidgetProvider()Lcom/amazon/kindle/home/card/HomeCardBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/home/card/HomeCardBuilder;->build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabled()Z

    move-result p1

    return p1
.end method
