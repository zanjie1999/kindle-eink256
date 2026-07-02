.class public final Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;
.super Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;
.source "ReturnOfferForAsinTask.java"


# instance fields
.field private final orderId:Ljava/lang/String;

.field private final orderItemId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    .line 45
    iput-object p4, p0, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;->orderId:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;->orderItemId:J

    return-void
.end method


# virtual methods
.method protected getReturnRequest()Lcom/amazon/kindle/store/glide/request/GlideWebRequest;
    .locals 9

    .line 50
    new-instance v8, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->refTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;->orderId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/kindle/store/glide/task/ReturnOfferForAsinTask;->orderItemId:J

    iget-object v7, p0, Lcom/amazon/kindle/store/glide/task/ReturnAsinTask;->callback:Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/store/glide/request/ReturnOfferForAsinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;)V

    return-object v8
.end method
