.class public final Lcom/amazon/kcp/library/LibraryFilterContext;
.super Ljava/lang/Object;
.source "ILibraryFilterProvider.kt"


# instance fields
.field private final libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

.field private final parentGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "libraryView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/LibraryFilterContext;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterContext;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    iget-object v1, p1, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public final getParentGroupId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryFilterContext(libraryView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->libraryView:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterContext;->parentGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
