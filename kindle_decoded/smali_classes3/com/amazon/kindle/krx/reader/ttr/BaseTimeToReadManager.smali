.class public Lcom/amazon/kindle/krx/reader/ttr/BaseTimeToReadManager;
.super Ljava/lang/Object;
.source "BaseTimeToReadManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeToRead(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ttr/ITimeToReadResult;
    .locals 0

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
