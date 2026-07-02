.class public final Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;
.super Ljava/lang/Object;
.source "RecapsPanelProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsPanelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsPanelProvider.kt\ncom/amazon/kindle/recaps/panel/RecapsPanelProvider\n*L\n1#1,87:1\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsEnabledForCurrentBook()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;

    iget-object v0, p0, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider$RecapsPanelRow;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    const/16 p1, 0x226

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/panel/RecapsPanelProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
