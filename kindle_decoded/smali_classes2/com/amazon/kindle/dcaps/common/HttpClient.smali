.class public Lcom/amazon/kindle/dcaps/common/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;


# direct methods
.method public static initialize(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/amazon/kindle/dcaps/common/HttpClient;->dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/dcaps/common/ResponseHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/dcaps/common/ResponseHandler;",
            ")V"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/amazon/kindle/dcaps/common/HttpClient;->dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://dcapsproxy-na.amazon.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    const/16 v5, 0x3c

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/dcaps/IDCAPSIntegration;->remoteSignedRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILcom/amazon/kindle/dcaps/common/ResponseHandler;)V

    return-void
.end method
