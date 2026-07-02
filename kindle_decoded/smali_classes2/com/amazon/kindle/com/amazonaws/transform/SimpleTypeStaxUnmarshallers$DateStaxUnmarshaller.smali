.class public Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
        "Ljava/util/Date;",
        "Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;
    .locals 1

    .line 277
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    .line 279
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 263
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/util/DateUtils;->parseISO8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 265
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/transform/SimpleTypeStaxUnmarshallers;->access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse date \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':  "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method
