.class public Lcom/amazon/kindle/krx/clipping/BaseKRXClippingService;
.super Ljava/lang/Object;
.source "BaseKRXClippingService.java"

# interfaces
.implements Lcom/amazon/kindle/krx/clipping/IKRXClippingService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpdateClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported operation!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateAndCheckClippingBalance(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z
    .locals 0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported operation!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
