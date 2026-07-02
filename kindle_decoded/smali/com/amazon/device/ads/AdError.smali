.class public Lcom/amazon/device/ads/AdError;
.super Ljava/lang/Object;
.source "AdError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdError$ErrorCode;
    }
.end annotation


# instance fields
.field private final code:Lcom/amazon/device/ads/AdError$ErrorCode;

.field private final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/device/ads/AdError;->code:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 63
    iput-object p2, p0, Lcom/amazon/device/ads/AdError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/amazon/device/ads/AdError$ErrorCode;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/AdError;->code:Lcom/amazon/device/ads/AdError$ErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/AdError;->message:Ljava/lang/String;

    return-object v0
.end method
