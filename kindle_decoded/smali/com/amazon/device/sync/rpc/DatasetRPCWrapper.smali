.class public Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;
.super Ljava/lang/Object;
.source "DatasetRPCWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLinks:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;


# direct methods
.method public constructor <init>(Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "TT;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->mLinks:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->mRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    return-void
.end method


# virtual methods
.method public getLinks()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->mLinks:Ljava/lang/Object;

    return-object v0
.end method

.method public getRPC()Lcom/amazon/device/sync/rpc/DatasetRPC;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->mRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    return-object v0
.end method
