.class public Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;
.super Ljava/lang/Object;
.source "BluetoothFFSEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;
    }
.end annotation


# static fields
.field private static final AUTH_MATERIALS_KEY:Ljava/lang/String; = "authMaterials"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAC_ADDRESS_KEY:Ljava/lang/String; = "macAddress"

.field private static final RSSI_KEY:Ljava/lang/String; = "rssi"

.field private static final SCAN_RECORD_KEY:Ljava/lang/String; = "scanRecord"

.field private static final TIME_STAMP_KEY:Ljava/lang/String; = "timeStamp"


# instance fields
.field private mAuthMaterials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->mAuthMaterials:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->mAuthMaterials:Ljava/util/List;

    return-void
.end method

.method public static convertToBase64EncodedString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthMaterials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->mAuthMaterials:Ljava/util/List;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 171
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->mAuthMaterials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;

    .line 172
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->access$200(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 174
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->access$200(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "macAddress"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->access$300(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)I

    move-result v5

    const-string/jumbo v6, "rssi"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->access$400(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)J

    move-result-wide v5

    const-string/jumbo v7, "timeStamp"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;->access$500(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry$BluetoothAuthMaterial;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->convertToBase64EncodedString([B)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "scanRecord"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "authMaterials"

    .line 182
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bluetoothFFSEntry"

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/BluetoothFFSEntry;->mAuthMaterials:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
