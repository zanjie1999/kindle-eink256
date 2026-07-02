.class final Lcom/audible/hushpuppy/sync/SyncDataContent$Block;
.super Ljava/lang/Object;
.source "SyncDataContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Block"
.end annotation


# instance fields
.field final fp:J

.field final hiAbookPos:J

.field final hiEbookPos:J

.field final length:J

.field final loAbookPos:J

.field final loEbookPos:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p1, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loEbookPos:J

    .line 220
    iput-wide p3, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->loAbookPos:J

    .line 221
    iput-wide p5, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiEbookPos:J

    .line 222
    iput-wide p7, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->hiAbookPos:J

    .line 223
    iput-wide p9, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->fp:J

    .line 224
    iput-wide p11, p0, Lcom/audible/hushpuppy/sync/SyncDataContent$Block;->length:J

    return-void
.end method
