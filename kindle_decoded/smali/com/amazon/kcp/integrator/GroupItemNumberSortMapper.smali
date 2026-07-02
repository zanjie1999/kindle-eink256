.class public final Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;
.super Lcom/amazon/kcp/integrator/GroupItemMapper;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/integrator/GroupItemMapper<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 1

    const-string v0, "groupItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/kcp/integrator/GroupItemMapper;-><init>(Lcom/amazon/kindle/content/GroupItemMetadata;)V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;->groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;

    return-void
.end method


# virtual methods
.method public generateSort(I)Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;->groupItem:Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-static {v0, p1}, Lcom/amazon/kcp/integrator/BookDataHelper;->numberForSortTypeFromGroupItem(Lcom/amazon/kindle/content/GroupItemMetadata;I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateSort(I)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/integrator/GroupItemNumberSortMapper;->generateSort(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
