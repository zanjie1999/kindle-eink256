.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants$Endpoints;
.super Ljava/lang/Object;
.source "DSSConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Endpoints"
.end annotation


# static fields
.field static final API_GATEWAY_GAMMA:Ljava/lang/String; = "https://re8sfystqa.execute-api.us-east-1.amazonaws.com/gamma/"

.field static final API_GATEWAY_PROD:Ljava/lang/String; = "https://wl.amazon-dss.com/"

.field static final DSS_NA_GAMMA:Ljava/lang/String; = "https://dss-na-gamma.amazon.com"

.field static final DSS_NA_PROD:Ljava/lang/String; = "https://dss-na.amazon.com"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
