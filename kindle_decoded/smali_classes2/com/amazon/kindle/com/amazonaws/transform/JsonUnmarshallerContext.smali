.class public Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;
.super Ljava/lang/Object;
.source "JsonUnmarshallerContext.java"


# instance fields
.field private final httpResponse:Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

.field private final reader:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;->reader:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getReader()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;->reader:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    return-object v0
.end method
