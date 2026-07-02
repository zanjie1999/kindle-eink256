.class public interface abstract Lcom/audible/license/repository/file/VoucherFileRepository;
.super Ljava/lang/Object;
.source "VoucherFileRepository.kt"


# virtual methods
.method public abstract deleteVoucher(Lcom/audible/mobile/domain/Asin;)Z
.end method

.method public abstract findVoucherById(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/model/Voucher;
.end method

.method public abstract saveVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/license/model/EncryptedVoucher;)V
.end method
