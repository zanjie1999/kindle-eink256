.class public Lcom/amazon/kcp/home/models/voltron/VoltronResponse;
.super Ljava/util/ArrayList;
.source "VoltronModels.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/models/voltron/VoltronResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Lcom/amazon/kcp/home/models/voltron/VoltronBlock;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoltronModels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoltronModels.kt\ncom/amazon/kcp/home/models/voltron/VoltronResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation


# instance fields
.field private final data$delegate:Lkotlin/Lazy;

.field private final layout$delegate:Lkotlin/Lazy;

.field private final metadata$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$layout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$layout$2;-><init>(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->layout$delegate:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$metadata$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$metadata$2;-><init>(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->metadata$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse$data$2;-><init>(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->data$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$blockForName(Lcom/amazon/kcp/home/models/voltron/VoltronResponse;Ljava/lang/String;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->blockForName(Ljava/lang/String;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    move-result-object p0

    return-object p0
.end method

.method private final blockForName(Ljava/lang/String;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;
    .locals 3

    .line 33
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;->getBlock()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    return-object v1
.end method


# virtual methods
.method public bridge contains(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)Z
    .locals 0

    .line 16
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->contains(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getLayout()Lcom/amazon/kcp/home/models/voltron/LayoutBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/home/models/voltron/LayoutBlock<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->layout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/LayoutBlock;

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 16
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)I
    .locals 0

    .line 16
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->indexOf(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)I
    .locals 0

    .line 16
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->lastIndexOf(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge remove(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)Z
    .locals 0

    .line 16
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->remove(Lcom/amazon/kcp/home/models/voltron/VoltronBlock;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge size()I
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/voltron/VoltronResponse;->getSize()I

    move-result v0

    return v0
.end method
