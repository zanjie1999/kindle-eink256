.class public Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;
.super Ljava/lang/Object;
.source "DownloadAcknowledgmentMessage.java"

# interfaces
.implements Lcom/amazon/xray/plugin/util/MessagingUtil$Message;


# static fields
.field private static final DOWNLOAD_ACKNOWLEDGMENT_TOPIC:Ljava/lang/String; = "ACX.XRAY.ASC.version"

.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_FILENAME:Ljava/lang/String; = "filename"

.field private static final KEY_GUID:Ljava/lang/String; = "guid"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private asin:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->asin:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->guid:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->fileName:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v1, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->fileName:Ljava/lang/String;

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/amazon/xray/model/message/DownloadAcknowledgmentMessage;->version:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "ACX.XRAY.ASC.version"

    return-object v0
.end method
