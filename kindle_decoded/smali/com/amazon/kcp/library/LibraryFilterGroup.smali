.class public final Lcom/amazon/kcp/library/LibraryFilterGroup;
.super Ljava/lang/Object;
.source "LibraryFilterGroup.java"


# instance fields
.field private final id:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final priority:I

.field private final titleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Library Filter Group Id shouldn\'t contain \'_\' character."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->id:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->titleResId:I

    .line 45
    iput p3, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->priority:I

    .line 46
    new-instance p1, Lcom/amazon/kcp/library/LibraryFilterGroup$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LibraryFilterGroup$1;-><init>(Lcom/amazon/kcp/library/LibraryFilterGroup;)V

    invoke-static {p4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->priority:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/amazon/kcp/library/LibraryFilterGroup;->titleResId:I

    return v0
.end method
