.class public Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSASINData;
.super Ljava/lang/Object;
.source "FireOSASINData.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;


# instance fields
.field private final mDelegateASINData:Lcom/amazon/client/metrics/clickstream/ASINData;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/client/metrics/clickstream/ASINData;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/clickstream/ASINData;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSASINData;->mDelegateASINData:Lcom/amazon/client/metrics/clickstream/ASINData;

    return-void
.end method
