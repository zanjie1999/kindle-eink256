.class public Lcom/amazon/client/metrics/common/clickstream/ASINData;
.super Ljava/lang/Object;
.source "ASINData.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;


# instance fields
.field private final mDelegateASINData:Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSASINData;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/clickstream/internal/fireos/FireOSASINData;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/ASINData;->mDelegateASINData:Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/clickstream/internal/android/AndroidASINData;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/ASINData;->mDelegateASINData:Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateASINData()Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/client/metrics/common/clickstream/ASINData;->mDelegateASINData:Lcom/amazon/client/metrics/common/clickstream/internal/IASINData;

    return-object v0
.end method
