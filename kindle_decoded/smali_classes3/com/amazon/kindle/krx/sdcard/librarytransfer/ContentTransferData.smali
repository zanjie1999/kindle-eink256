.class public final Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;
.super Ljava/lang/Object;
.source "ContentTransferData.java"


# instance fields
.field private final mSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;->mSize:J

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;->mSize:J

    return-wide v0
.end method
