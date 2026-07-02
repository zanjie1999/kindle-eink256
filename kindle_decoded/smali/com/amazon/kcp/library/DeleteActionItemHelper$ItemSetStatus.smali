.class public Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;
.super Ljava/lang/Object;
.source "DeleteActionItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/DeleteActionItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemSetStatus"
.end annotation


# instance fields
.field allItemsCloudDeletable:Z

.field allItemsDeviceDeletable:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsDeviceDeletable:Z

    .line 93
    iput-boolean v0, p0, Lcom/amazon/kcp/library/DeleteActionItemHelper$ItemSetStatus;->allItemsCloudDeletable:Z

    return-void
.end method
