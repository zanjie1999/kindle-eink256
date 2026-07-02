.class Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "LocationWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationContentHandler"
.end annotation


# instance fields
.field crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

.field final lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

.field model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    .line 114
    iput-object p2, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    .line 115
    iput-object p3, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    return-void
.end method

.method private populateModel(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lorg/xml/sax/Attributes;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "pos"

    .line 120
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    const-class v0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :goto_0
    const-string v0, "method"

    .line 125
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setMethod(Ljava/lang/String;)V

    :try_start_1
    const-string v0, "lto"

    .line 128
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setLto(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    const-class v0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :goto_1
    const-string v0, "country_code"

    .line 133
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setCountry(Ljava/lang/String;)V

    const-string/jumbo v0, "source_device"

    .line 134
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setSourceDevice(Ljava/lang/String;)V

    :try_start_2
    const-string v0, "annotation_time_utc"

    .line 137
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setAnnotationTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 139
    :catch_2
    const-class v0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :goto_2
    :try_start_3
    const-string/jumbo v0, "version"

    .line 143
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setVersion(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 145
    :catch_3
    const-class p1, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "most_recent_read"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "last_read"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "continuous_read"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;->setMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, "most_recent_read"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->populateModel(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_0
    const-string v0, "last_read"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->model:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->populateModel(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1
    const-string v0, "continuous_read"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->crpModel:Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/sidecar/LocationWebRequest$LocationContentHandler;->populateModel(Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lorg/xml/sax/Attributes;)V

    :cond_2
    :goto_0
    return-void
.end method
