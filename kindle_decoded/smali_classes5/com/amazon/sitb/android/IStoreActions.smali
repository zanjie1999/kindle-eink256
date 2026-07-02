.class public interface abstract Lcom/amazon/sitb/android/IStoreActions;
.super Ljava/lang/Object;
.source "IStoreActions.java"


# virtual methods
.method public abstract buyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)Lcom/amazon/sitb/android/BuyAsinResult;
.end method

.method public abstract kcpBuyAsin(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;II)Lcom/amazon/sitb/android/BuyAsinResult;
.end method

.method public abstract kcpPrepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;
.end method

.method public abstract kcpUnBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;II)Lcom/amazon/sitb/android/UnBuyResult;
.end method

.method public abstract openDetailPage(Ljava/lang/String;Lcom/amazon/sitb/android/Metric;ILcom/amazon/sitb/android/StoreDestination;)V
.end method

.method public abstract openMYK(I)V
.end method

.method public abstract prepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;
.end method

.method public abstract unBuy(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;I)Lcom/amazon/sitb/android/UnBuyResult;
.end method
