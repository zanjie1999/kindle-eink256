.class public Lcom/amazon/kindle/revoke/RevokeTracker;
.super Ljava/lang/Object;
.source "RevokeTracker.java"

# interfaces
.implements Lcom/amazon/kindle/revoke/IRevokeTracker;


# instance fields
.field private asin:Ljava/lang/String;

.field private bookType:Ljava/lang/String;

.field private failureType:Ljava/lang/String;

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->asin:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->bookType:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->failureType:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->retryCount:I

    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->bookType:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->failureType:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->retryCount:I

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->asin:Ljava/lang/String;

    return-void
.end method

.method public setBookType(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->bookType:Ljava/lang/String;

    return-void
.end method

.method public setFailureType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->failureType:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/amazon/kindle/revoke/RevokeTracker;->retryCount:I

    return-void
.end method
