.class public final Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;
.super Ljava/lang/Object;
.source "RecyclerMultiSelectHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final KEY_CHECKED_STATES:Ljava/lang/String; = "CHECKED_STATES"

.field private static final TAG:Ljava/lang/String; = "RecyclerMultiSelectHelper"


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private final actionModeCallbackWrapper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;

.field private final activity:Landroid/app/Activity;

.field private adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private checkedStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private isMultiSelectEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->activity:Landroid/app/Activity;

    .line 30
    new-instance p1, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;-><init>(Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;Landroid/view/ActionMode$Callback;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionModeCallbackWrapper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->isMultiSelectEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;)Lcom/amazon/kcp/library/AbstractRecyclerAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    return-object p0
.end method

.method private final checkView(Landroid/view/View;Z)V
    .locals 1

    .line 228
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private final toggleSelection(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)Z"
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->isMultiSelectEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->canSelectItem(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 250
    iget-object v3, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 251
    iget-object v4, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    .line 252
    invoke-direct {p0, p1, v4}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkView(Landroid/view/View;Z)V

    if-eqz v4, :cond_1

    .line 254
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    if-eqz v3, :cond_2

    .line 261
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_1

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionModeCallbackWrapper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 266
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "RecyclerMultiSelectHelper"

    const-string v1, "Clearing checked states"

    .line 156
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public final getCheckedItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "checkedStates.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final init(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "TT;*>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    return-void
.end method

.method public final isItemIdChecked(J)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onBindViewHolder(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 79
    iget-object p2, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->canSelectItem(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->toggleSelection(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onItemLongClick(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->toggleSelection(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RecyclerMultiSelectHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "CHECKED_STATES"

    .line 198
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Ljava/util/HashMap;

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_2

    .line 208
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while persisting checked states: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_2

    .line 211
    iput-object v1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restoring checked states "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionModeCallbackWrapper:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->actionMode:Landroid/view/ActionMode;

    .line 216
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving checked states: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerMultiSelectHelper"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "checkedStates.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    const-string v1, "CHECKED_STATES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method public final selectAll()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 166
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v3

    .line 168
    iget-object v5, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selecting all items in adapter of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerMultiSelectHelper"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setItemChecked(Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v0

    const-string v2, "RecyclerMultiSelectHelper"

    if-eqz p2, :cond_0

    .line 142
    iget-object v3, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding checked states. item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->checkedStates:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
