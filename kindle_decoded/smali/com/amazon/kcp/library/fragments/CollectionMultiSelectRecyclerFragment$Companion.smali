.class public final Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;
.super Ljava/lang/Object;
.source "CollectionMultiSelectRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;
    .locals 4

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    sget-object v2, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    const-string v3, "ARG_RECYCLER_LAYOUT_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "CollectionId"

    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
