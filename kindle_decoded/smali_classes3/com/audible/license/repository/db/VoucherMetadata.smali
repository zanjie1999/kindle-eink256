.class public final Lcom/audible/license/repository/db/VoucherMetadata;
.super Ljava/lang/Object;
.source "VoucherMetadata.kt"


# instance fields
.field private final acr:Lcom/audible/mobile/domain/ACR;

.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

.field private final isVoucherValid:Z

.field private final licenseId:Ljava/lang/String;

.field private final owner:Lcom/audible/mobile/domain/CustomerId;

.field private final refreshDate:Ljava/util/Date;

.field private final removalDate:Ljava/util/Date;

.field private final shouldDeleteOnSignOut:Z


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drmType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    iput-object p2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    iput-object p3, p0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    iput-object p4, p0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    iput-object p5, p0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    iput-boolean p7, p0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    iput-boolean p8, p0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    iput-object p9, p0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/audible/license/repository/db/VoucherMetadata;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/audible/license/repository/db/VoucherMetadata;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/audible/license/repository/db/VoucherMetadata;->copy(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)Lcom/audible/license/repository/db/VoucherMetadata;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)Lcom/audible/license/repository/db/VoucherMetadata;
    .locals 11

    const-string v0, "asin"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acr"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drmType"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/audible/license/repository/db/VoucherMetadata;

    move-object v1, v0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/audible/license/repository/db/VoucherMetadata;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/contentlicense/networking/request/DrmType;Ljava/util/Date;Ljava/util/Date;ZZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/license/repository/db/VoucherMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/license/repository/db/VoucherMetadata;

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    iget-boolean v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    iget-boolean v1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

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

.method public final getAcr()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public final getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public final getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-object v0
.end method

.method public final getLicenseId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    return-object v0
.end method

.method public final getRefreshDate()Ljava/util/Date;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getRemovalDate()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getShouldDeleteOnSignOut()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final isVoucherValid()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoucherMetadata(asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->owner:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", drmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->refreshDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removalDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->removalDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVoucherValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->isVoucherValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDeleteOnSignOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->shouldDeleteOnSignOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", licenseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/repository/db/VoucherMetadata;->licenseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
