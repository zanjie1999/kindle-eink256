.class public Lcom/amazon/reader/notifications/getui/GetuiMessageBuilder;
.super Ljava/lang/Object;
.source "GetuiMessageBuilder.java"


# static fields
.field public static final DEVICE_ATTRIBUTES:Ljava/lang/String; = "deviceAttributes"

.field public static final TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGetuiRegistrationMessage(Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notBlank(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 31
    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "token"

    .line 34
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 35
    invoke-static {p2, p1}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->toJson(Lcom/amazon/reader/notifications/DeviceAttributes;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "deviceAttributes"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
