.class public interface abstract Lcom/audible/license/provider/VoucherProvider;
.super Ljava/lang/Object;
.source "VoucherProvider.kt"


# virtual methods
.method public abstract get(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/license/model/Voucher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation
.end method
