.class public Lcom/amazon/ea/goodreadsshelf/service/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field jsonObject:Lorg/json/JSONObject;

.field responseCode:I

.field responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseCode:I

    .line 17
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseMessage:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->jsonObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "responseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | responseMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | jsonObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
