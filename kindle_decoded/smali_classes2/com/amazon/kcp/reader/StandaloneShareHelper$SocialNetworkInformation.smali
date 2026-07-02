.class Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/StandaloneShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SocialNetworkInformation"
.end annotation


# instance fields
.field final enableSdkShare:Z

.field final order:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;->enableSdkShare:Z

    .line 543
    iput p3, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;->order:I

    return-void
.end method
