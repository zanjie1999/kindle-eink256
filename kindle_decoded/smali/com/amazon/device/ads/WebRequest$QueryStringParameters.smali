.class Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryStringParameters"
.end annotation


# instance fields
.field private final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawAppendage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method append(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1105
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "?"

    .line 1110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1113
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "&"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1121
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 1124
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1130
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1097
    new-instance v0, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    .line 1098
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1099
    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/WebUtils2;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1072
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 1078
    iget-object p2, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 1074
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The name must not be null or empty string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method putUrlEncodedIfTrue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1044
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setRawAppendage(Ljava/lang/String;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->rawAppendage:Ljava/lang/String;

    return-void
.end method

.method size()I
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
