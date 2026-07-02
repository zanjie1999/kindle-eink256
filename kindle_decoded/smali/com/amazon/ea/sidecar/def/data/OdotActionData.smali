.class public Lcom/amazon/ea/sidecar/def/data/OdotActionData;
.super Ljava/lang/Object;
.source "OdotActionData.java"

# interfaces
.implements Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;


# instance fields
.field public final additionalFields:Lorg/json/JSONObject;

.field public final endpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;->endpoint:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;->additionalFields:Lorg/json/JSONObject;

    return-void
.end method
