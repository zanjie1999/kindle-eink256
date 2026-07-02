.class public Lcom/amazon/sitb/android/event/PurchaseFailedEvent;
.super Ljava/lang/Object;
.source "PurchaseFailedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final failureCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->asin:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->failureCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureCode()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseFailedEvent (asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/sitb/android/event/PurchaseFailedEvent;->failureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
