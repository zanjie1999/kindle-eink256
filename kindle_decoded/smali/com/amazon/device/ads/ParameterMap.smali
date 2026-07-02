.class Lcom/amazon/device/ads/ParameterMap;
.super Ljava/lang/Object;
.source "ParameterMap.java"


# instance fields
.field private final parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/device/ads/ParameterMap;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
