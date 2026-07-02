.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;
.super Ljava/lang/Object;
.source "LargeLibraryRecyclerAdapterHelper.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryGroupListener;


# instance fields
.field private final adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

.field private final groupId:Lcom/amazon/kindle/observablemodel/ItemID;

.field private final holderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 421
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->holderRef:Ljava/lang/ref/WeakReference;

    .line 422
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->groupId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method


# virtual methods
.method public final getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->groupId:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public final getHolderRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->holderRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onGroupUpdate(Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->applyGroupUpdate(Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V

    return-void
.end method
