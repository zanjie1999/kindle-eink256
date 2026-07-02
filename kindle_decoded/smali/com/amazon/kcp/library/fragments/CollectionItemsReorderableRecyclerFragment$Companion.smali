.class public final Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;
.super Ljava/lang/Object;
.source "CollectionItemsReorderableRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;
    .locals 3

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recyclerFragmentLayoutType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CollectionId"

    .line 44
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 45
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
