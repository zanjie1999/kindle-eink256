.class public Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GetIdResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;",
        "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdentityId"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;->setIdentityId(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->endObject()V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/cognitoidentity/model/GetIdResult;

    move-result-object p1

    return-object p1
.end method
