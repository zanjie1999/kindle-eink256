.class public Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;
.super Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;
.source "ReturnOfferForAsinRequest.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ITEMS:Ljava/lang/String; = "items"

.field private static final ORDER_ID:Ljava/lang/String; = "orderId"

.field private static final ORDER_ITEM_ID:Ljava/lang/String; = "orderItemId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final orderId:Ljava/lang/String;

.field private final orderItemId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/amazon/kindle/store/glide/request/ReturnAsinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 50
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->orderId:Ljava/lang/String;

    .line 51
    iput-wide p5, p0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->orderItemId:J

    return-void
.end method


# virtual methods
.method protected constructPayload()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "Failed to construct payload."

    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "orderId"

    .line 57
    iget-object v3, p0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "orderItemId"

    .line 58
    iget-wide v3, p0, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->orderItemId:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    sget-object v2, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "action"

    .line 65
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    sget-object v1, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v3, "items"

    .line 75
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 77
    :catch_2
    sget-object v1, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method
