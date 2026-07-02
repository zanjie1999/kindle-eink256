.class public final Lcom/amazon/kindle/attribution/AttributionDebugMenuProvider$getDebugMenuPages$1;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AttributionDebugMenuProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/attribution/AttributionDebugMenuProvider;->getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionDebugMenuProvider$getDebugMenuPages$1;->$context:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Attribution Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/attribution/AttributionDebugMenuProvider$getDebugMenuPages$1;->$context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$layout;->attribution_debug_options:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026tion_debug_options, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
