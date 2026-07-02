.class public Lcom/amazon/identity/auth/device/bo;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bo$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bo"


# instance fields
.field private ar:Lcom/amazon/identity/auth/device/ea;

.field private bO:Lcom/amazon/identity/auth/device/ej;

.field private o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bo;->o:Lcom/amazon/identity/auth/device/ed;

    .line 29
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bo;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "dcp_device_info"

    .line 30
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bo;->ar:Lcom/amazon/identity/auth/device/ea;

    return-void
.end method


# virtual methods
.method public a(IJ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/bo;->bv()Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code_data"

    .line 41
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/amazon/identity/auth/device/bo;->a(Lorg/json/JSONObject;IJ)V

    .line 44
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bo;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/bo;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 45
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/fi;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-lez p2, :cond_0

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "code_length"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_1

    const-wide/16 v1, 0x3e8

    .line 97
    div-long/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "code_duration"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_2

    const-string p2, "code_properties"

    .line 102
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public bv()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bo;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bo;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "defaultAppVersion"

    .line 64
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bo;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "domain"

    const-string v5, "Device"

    .line 77
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "defaultAppName"

    :goto_1
    const-string v4, "app_name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version"

    .line 79
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "device_model"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "os_version"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bo;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_serial"

    .line 83
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v3

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/amazon/identity/auth/device/bo;->TAG:Ljava/lang/String;

    const-string v2, "Got an unsupported operation exception while trying to get the device serial number"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bo$a;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "public_code"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private_code"

    .line 115
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 116
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "polling_interval_in_seconds"

    .line 117
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v3, Lcom/amazon/identity/auth/device/bo$a;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/identity/auth/device/bo$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/amazon/identity/auth/device/bo;->TAG:Ljava/lang/String;

    const-string v1, "JSONException while parsing createCodePair response"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
