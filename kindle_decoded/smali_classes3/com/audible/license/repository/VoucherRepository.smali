.class public interface abstract Lcom/audible/license/repository/VoucherRepository;
.super Ljava/lang/Object;
.source "VoucherRepository.kt"


# virtual methods
.method public abstract findVoucherById(Lcom/audible/mobile/domain/Asin;)Lcom/audible/license/model/Voucher;
.end method

.method public abstract refresh(Lcom/audible/mobile/domain/Asin;Z)Z
.end method

.method public abstract updateVoucherValidation(Lcom/audible/mobile/domain/Asin;Z)V
.end method
