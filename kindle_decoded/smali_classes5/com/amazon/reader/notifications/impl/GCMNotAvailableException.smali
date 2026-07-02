.class public Lcom/amazon/reader/notifications/impl/GCMNotAvailableException;
.super Ljava/lang/Exception;
.source "GCMNotAvailableException.java"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 16
    iput p2, p0, Lcom/amazon/reader/notifications/impl/GCMNotAvailableException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/reader/notifications/impl/GCMNotAvailableException;->errorCode:I

    return v0
.end method
