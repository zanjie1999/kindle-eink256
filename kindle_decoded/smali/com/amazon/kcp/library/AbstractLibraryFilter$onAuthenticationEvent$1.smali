.class final Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractLibraryFilter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AbstractLibraryFilter;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractLibraryFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractLibraryFilter.kt\ncom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,372:1\n1819#2,2:373\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractLibraryFilter.kt\ncom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1\n*L\n348#1,2:373\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AbstractLibraryFilter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AbstractLibraryFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/AbstractLibraryFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 3

    .line 347
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;->this$0:Lcom/amazon/kcp/library/AbstractLibraryFilter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->getFilterItemMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 349
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getVisibilityStrategy()Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;

    move-result-object v1

    .line 350
    instance-of v2, v1, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    if-eqz v2, :cond_0

    .line 351
    check-cast v1, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->registerCounterHandler(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
