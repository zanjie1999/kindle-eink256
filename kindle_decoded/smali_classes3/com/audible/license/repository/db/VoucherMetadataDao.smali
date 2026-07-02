.class public interface abstract Lcom/audible/license/repository/db/VoucherMetadataDao;
.super Ljava/lang/Object;
.source "VoucherMetadataDao.kt"


# virtual methods
.method public abstract delete(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V
.end method

.method public abstract getAllVoucherMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/license/repository/db/VoucherMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/audible/license/repository/db/VoucherMetadata;)V
.end method
