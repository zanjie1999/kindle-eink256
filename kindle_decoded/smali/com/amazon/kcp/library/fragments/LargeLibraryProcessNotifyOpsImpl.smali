.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;
.super Ljava/lang/Object;
.source "LargeLibraryProcessNotifyOps.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOpsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processNotifyOps([ILcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;)V
    .locals 3

    const-string/jumbo v0, "notifyOps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recyclerAdapterUpdater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 18
    aget v0, p1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 62
    :pswitch_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->reset()V

    .line 63
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onDataSetChanged()V

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    .line 57
    aget v1, p1, v1

    .line 58
    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemRemoved(I)V

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    .line 51
    aget v1, p1, v1

    add-int/lit8 v2, v0, 0x1

    .line 52
    aget v0, p1, v0

    .line 53
    invoke-interface {p2, v1, v0}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemRangeRemoved(II)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    .line 45
    aget v1, p1, v1

    add-int/lit8 v2, v0, 0x1

    .line 46
    aget v0, p1, v0

    .line 47
    invoke-interface {p2, v1, v0}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemRangeInserted(II)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    .line 39
    aget v1, p1, v1

    add-int/lit8 v2, v0, 0x1

    .line 40
    aget v0, p1, v0

    .line 41
    invoke-interface {p2, v1, v0}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemRangeChanged(II)V

    goto :goto_1

    :pswitch_5
    add-int/lit8 v0, v1, 0x1

    .line 33
    aget v1, p1, v1

    add-int/lit8 v2, v0, 0x1

    .line 34
    aget v0, p1, v0

    .line 35
    invoke-interface {p2, v1, v0}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemMoved(II)V

    :goto_1
    move v0, v2

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    .line 28
    aget v1, p1, v1

    .line 29
    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemInserted(I)V

    goto :goto_0

    :pswitch_7
    add-int/lit8 v0, v1, 0x1

    .line 23
    aget v1, p1, v1

    .line 24
    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onItemChanged(I)V

    goto :goto_0

    .line 20
    :pswitch_8
    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/RecyclerAdapterUpdater;->onDataSetChanged()V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
