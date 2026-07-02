.class public abstract Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;
.super Ljava/lang/Object;
.source "LargeCountUpdateListener.kt"

# interfaces
.implements Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;


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
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->groupId:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p3, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 33
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->holderRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    return-void
.end method


# virtual methods
.method public getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->groupId:Lcom/amazon/kindle/observablemodel/ItemID;

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

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->holderRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V
    .locals 1

    const-string v0, "countUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->applyCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;)V

    return-void
.end method
