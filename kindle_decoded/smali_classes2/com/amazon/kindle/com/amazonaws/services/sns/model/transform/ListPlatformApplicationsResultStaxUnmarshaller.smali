.class public Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "ListPlatformApplicationsResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;

    .line 76
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const-string v3, "PlatformApplications/member"

    .line 51
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v4, [Lcom/amazon/kindle/com/amazonaws/services/sns/model/PlatformApplication;

    const/4 v4, 0x0

    .line 54
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PlatformApplicationStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PlatformApplicationStaxUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/PlatformApplicationStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/PlatformApplication;

    move-result-object v5

    aput-object v5, v3, v4

    .line 53
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;->withPlatformApplications([Lcom/amazon/kindle/com/amazonaws/services/sns/model/PlatformApplication;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;

    goto :goto_0

    :cond_2
    const-string v3, "NextToken"

    .line 57
    invoke-virtual {p1, v3, v2}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;->setNextToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v3

    if-ge v3, v1, :cond_0

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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/services/sns/model/transform/ListPlatformApplicationsResultStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListPlatformApplicationsResult;

    move-result-object p1

    return-object p1
.end method
