.class public Lamazon/whispersync/communication/identity/DeviceIdentity;
.super Lamazon/whispersync/communication/identity/EndpointIdentity;
.source "DeviceIdentity.java"


# static fields
.field private static final CUSTOMER_ID:Ljava/lang/String; = "customerId"

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final DEVICE:Ljava/lang/String; = "device"

.field private static final DEVICE_ACCOUNT_ID:Ljava/lang/String; = "deviceAccountId"

.field private static final DEVICE_HEADER:Ljava/lang/String; = "urn:tcomm-endpoint:device"

.field private static final DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "deviceSerialNumber"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final TCOMM_ENDPOINT:Ljava/lang/String; = "tcomm-endpoint"

.field private static final URN:Ljava/lang/String; = "urn"


# instance fields
.field private final mCustomerId:Ljava/lang/String;

.field private final mDeviceAccountId:Ljava/lang/String;

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 132
    invoke-direct {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, ":"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->hasValidHeader([Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Device endpoint URN is not valid: "

    if-eqz v1, :cond_3

    .line 146
    invoke-static {v0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isDeviceOnlyEndpoint([Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 147
    iput-object v5, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceAccountId:Ljava/lang/String;

    .line 148
    iput-object v5, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mCustomerId:Ljava/lang/String;

    .line 149
    aget-object p1, v0, v4

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceType:Ljava/lang/String;

    .line 150
    aget-object p1, v0, v3

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceSerialNumber:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isLegacyCustomerDeviceEndpoint([Ljava/lang/String;)Z

    move-result v1

    const/16 v6, 0x8

    if-eqz v1, :cond_1

    .line 152
    aget-object p1, v0, v4

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceAccountId:Ljava/lang/String;

    .line 153
    aget-object p1, v0, v3

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mCustomerId:Ljava/lang/String;

    .line 154
    aget-object p1, v0, v6

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceType:Ljava/lang/String;

    const/16 p1, 0xa

    .line 155
    aget-object p1, v0, p1

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceSerialNumber:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isNewCustomerDeviceEndpoint([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iput-object v5, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceAccountId:Ljava/lang/String;

    .line 158
    aget-object p1, v0, v4

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mCustomerId:Ljava/lang/String;

    .line 159
    aget-object p1, v0, v3

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceType:Ljava/lang/String;

    .line 160
    aget-object p1, v0, v6

    iput-object p1, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceSerialNumber:Ljava/lang/String;

    :goto_0
    return-void

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device endpoint must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static hasValidHeader([Ljava/lang/String;)Z
    .locals 4

    .line 274
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string v3, "device"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p0, v1

    const-string/jumbo v3, "tcomm-endpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object p0, p0, v2

    const-string/jumbo v0, "urn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isDeviceOnlyEndpoint([Ljava/lang/String;)Z
    .locals 3

    .line 281
    array-length v0, p0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p0, v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    aget-object v0, p0, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget-object v0, p0, v0

    const-string v2, "deviceSerialNumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLegacyCustomerDeviceEndpoint([Ljava/lang/String;)Z
    .locals 3

    .line 297
    array-length v0, p0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p0, v0

    const-string v1, "deviceAccountId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    aget-object v0, p0, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget-object v0, p0, v0

    const-string v2, "customerId"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    aget-object v0, p0, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget-object v0, p0, v0

    const-string v2, "deviceType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    aget-object v0, p0, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aget-object v0, p0, v0

    const-string v2, "deviceSerialNumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNewCustomerDeviceEndpoint([Ljava/lang/String;)Z
    .locals 3

    .line 316
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p0, v0

    const-string v1, "customerId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    aget-object v0, p0, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget-object v0, p0, v0

    const-string v2, "deviceType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    aget-object v0, p0, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget-object v0, p0, v0

    const-string v2, "deviceSerialNumber"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static matchesUrn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->hasValidHeader([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isDeviceOnlyEndpoint([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isLegacyCustomerDeviceEndpoint([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->isNewCustomerDeviceEndpoint([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAccountId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lamazon/whispersync/communication/identity/DeviceIdentity;->mDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    .locals 1

    .line 168
    sget-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->DEVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x25

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x12

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 234
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 235
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    .line 238
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 241
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "urn:tcomm-endpoint:device"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceAccountId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_2
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "customerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceSerialNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
