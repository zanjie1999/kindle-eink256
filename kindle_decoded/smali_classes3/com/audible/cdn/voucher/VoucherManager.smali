.class public interface abstract Lcom/audible/cdn/voucher/VoucherManager;
.super Ljava/lang/Object;
.source "VoucherManager.kt"


# virtual methods
.method public abstract loadVoucher(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/cdn/voucher/VoucherModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;,
            Lcom/audible/cdn/voucher/rules/VoucherRuleValidateException;
        }
    .end annotation
.end method

.method public abstract saveVoucher(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation
.end method
