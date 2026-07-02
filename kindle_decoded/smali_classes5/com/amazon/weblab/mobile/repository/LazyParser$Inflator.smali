.class public Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;
.super Ljava/lang/Object;
.source "LazyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/repository/LazyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Inflator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;


# direct methods
.method public constructor <init>(Lcom/amazon/weblab/mobile/repository/LazyParser;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 273
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$300(Lcom/amazon/weblab/mobile/repository/LazyParser;)Lcom/amazon/weblab/mobile/repository/BytesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v1}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$200(Lcom/amazon/weblab/mobile/repository/LazyParser;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-virtual {v0, v1, p2, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getBooleanValue([B[BI)Z

    move-result p1

    return p1

    .line 269
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Property not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;[B)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 288
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$300(Lcom/amazon/weblab/mobile/repository/LazyParser;)Lcom/amazon/weblab/mobile/repository/BytesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v1}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$200(Lcom/amazon/weblab/mobile/repository/LazyParser;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-virtual {v0, v1, p2, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getLongValue([B[BI)J

    move-result-wide p1

    return-wide p1

    .line 284
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Property not found"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$100(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 258
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$300(Lcom/amazon/weblab/mobile/repository/LazyParser;)Lcom/amazon/weblab/mobile/repository/BytesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v1}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$200(Lcom/amazon/weblab/mobile/repository/LazyParser;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/amazon/weblab/mobile/repository/BytesUtils;->getStringValue([B[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeblabClientIdentifier()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/LazyParser$Inflator;->this$0:Lcom/amazon/weblab/mobile/repository/LazyParser;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/repository/LazyParser;->access$000(Lcom/amazon/weblab/mobile/repository/LazyParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
