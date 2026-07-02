.class public Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;
.super Ljava/lang/Object;
.source "AndroidASINData.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;


# instance fields
.field private final mDelegateThirdPartyASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;->mDelegateThirdPartyASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    return-void
.end method


# virtual methods
.method public getDelegateASINData()Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;->mDelegateThirdPartyASINData:Lcom/amazon/client/metrics/thirdparty/clickstream/ASINData;

    return-object v0
.end method
