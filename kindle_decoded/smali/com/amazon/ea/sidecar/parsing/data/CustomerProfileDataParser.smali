.class public Lcom/amazon/ea/sidecar/parsing/data/CustomerProfileDataParser;
.super Ljava/lang/Object;
.source "CustomerProfileDataParser.java"


# static fields
.field private static final TAG_PEN_NAME:Ljava/lang/String; = "penName"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;
    .locals 1

    const-string/jumbo v0, "penName"

    .line 32
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;

    invoke-direct {v0, p0}, Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
