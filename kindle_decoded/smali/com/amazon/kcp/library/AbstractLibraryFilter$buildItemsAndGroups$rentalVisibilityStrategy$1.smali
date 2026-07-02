.class final Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$rentalVisibilityStrategy$1;
.super Ljava/lang/Object;
.source "AbstractLibraryFilter.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AbstractLibraryFilter;->buildItemsAndGroups(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $rentalCounterVisibilityStrategy:Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$rentalVisibilityStrategy$1;->$rentalCounterVisibilityStrategy:Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$rentalVisibilityStrategy$1;->$rentalCounterVisibilityStrategy:Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->isRentalFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
