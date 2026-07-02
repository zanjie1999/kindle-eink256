.class public final Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;
.super Ljava/lang/Object;
.source "StoreSearchResponseMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;


# instance fields
.field private final aliasOrIndex:Ljava/lang/String;

.field private final legalEntityId:I

.field private final queryId:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private final remoteAddress:Ljava/lang/String;

.field private final searchPageTypeId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final statusCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->Companion:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "queryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userAgent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aliasOrIndex"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchPageTypeId"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rank"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    iput-object p3, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    iput p7, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    iput-object p8, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p9

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 16
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;
    .locals 9

    sget-object v0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->Companion:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata$Companion;->initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    iget v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    iget v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

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

.method public final getAliasOrIndex()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    return-object v0
.end method

.method public final getLegalEntityId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    return v0
.end method

.method public final getQueryId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRank()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchPageTypeId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final setRank(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreSearchResponseMetadata(queryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->queryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aliasOrIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->aliasOrIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legalEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->legalEntityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchPageTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->searchPageTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->rank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
