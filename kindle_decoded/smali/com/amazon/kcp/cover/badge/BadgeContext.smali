.class public final Lcom/amazon/kcp/cover/badge/BadgeContext;
.super Ljava/lang/Object;
.source "BadgeContext.kt"


# instance fields
.field private final badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

.field private final isConsolidated:Z

.field private final viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/library/LibraryViewType;ZLcom/amazon/kcp/cover/badge/BadgeSource;)V
    .locals 1

    const-string/jumbo v0, "viewType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    iput-boolean p2, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    iput-object p3, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/cover/badge/BadgeContext;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/cover/badge/BadgeContext;

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    iget-object v1, p1, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    iget-object p1, p1, Lcom/amazon/kcp/cover/badge/BadgeContext;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

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

.method public final getViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isConsolidated()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BadgeContext(viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->viewType:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isConsolidated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->isConsolidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", badgeSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/BadgeContext;->badgeSource:Lcom/amazon/kcp/cover/badge/BadgeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
