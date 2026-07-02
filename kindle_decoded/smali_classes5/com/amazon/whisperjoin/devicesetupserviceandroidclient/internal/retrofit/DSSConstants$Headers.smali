.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants$Headers;
.super Ljava/lang/Object;
.source "DSSConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Headers"
.end annotation


# static fields
.field static final ACCEPT_JSON:Ljava/lang/String; = "Accept: application/json"

.field static final ACCEPT_LANUAGE_EN_US:Ljava/lang/String; = "Accept-Language: en-US"

.field static final ACCESS_TOKEN:Ljava/lang/String; = "x-amz-access-token"

.field static final CONTENT_TYPE_JSON:Ljava/lang/String; = "Content-Type: application/json"

.field static final RESPONSE_REDIRECT_ENDPOINT:Ljava/lang/String; = "x-amzn-endpoint"

.field static final RESPONSE_REQUEST_ID:Ljava/lang/String; = "x-amzn-RequestId"

.field static final RESPONSE_RETRY_AFTER:Ljava/lang/String; = "Retry-After"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
