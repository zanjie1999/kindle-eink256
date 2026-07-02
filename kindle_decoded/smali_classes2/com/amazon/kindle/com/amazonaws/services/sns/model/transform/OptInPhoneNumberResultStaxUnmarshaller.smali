.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "OptInPhoneNumberResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    if-ge v2, v1, :cond_0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/OptInPhoneNumberResultStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;

    move-result-object p1

    return-object p1
.end method
