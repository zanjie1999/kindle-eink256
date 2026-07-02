.class public Lcom/amazon/sitb/android/event/PriceUpdatedEvent;
.super Ljava/lang/Object;
.source "PriceUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final price:Lcom/amazon/sitb/android/BookPrice;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->asin:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->price:Lcom/amazon/sitb/android/BookPrice;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Lcom/amazon/sitb/android/BookPrice;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->price:Lcom/amazon/sitb/android/BookPrice;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;->price:Lcom/amazon/sitb/android/BookPrice;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PriceUpdatedEvent (asin: %s, price: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
