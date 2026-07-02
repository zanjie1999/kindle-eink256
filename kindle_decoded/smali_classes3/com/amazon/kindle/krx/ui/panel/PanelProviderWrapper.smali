.class public final Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;
.super Ljava/lang/Object;
.source "PanelProviderWrapper.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPanelProviderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PanelProviderWrapper.kt\ncom/amazon/kindle/krx/ui/panel/PanelProviderWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1819#2,2:48\n*E\n*S KotlinDebug\n*F\n+ 1 PanelProviderWrapper.kt\ncom/amazon/kindle/krx/ui/panel/PanelProviderWrapper\n*L\n28#1,2:48\n*E\n"
.end annotation


# instance fields
.field private final provider:Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;->provider:Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 4
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

    const-string v0, "panelKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;->provider:Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/panels/IPanelRow;

    .line 29
    new-instance v2, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper$PanelRowWrapper;-><init>(Lcom/amazon/kindle/krx/ui/panels/IPanelRow;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 1

    const-string v0, "panelKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;->provider:Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/ISortableProvider;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/panel/PanelProviderWrapper;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
