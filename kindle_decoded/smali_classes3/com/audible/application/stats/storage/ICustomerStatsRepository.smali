.class public interface abstract Lcom/audible/application/stats/storage/ICustomerStatsRepository;
.super Ljava/lang/Object;
.source "ICustomerStatsRepository.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract getCustomerBadgeProgress()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalListeningStat()Lcom/audible/mobile/stats/domain/CustomerListeningStat;
.end method

.method public abstract insertOrUpdateCustomerBadgeProgress(Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
.end method

.method public abstract insertOrUpdateDailyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
.end method

.method public abstract insertOrUpdateMonthlyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
.end method

.method public abstract insertOrUpdateTotalListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
.end method
