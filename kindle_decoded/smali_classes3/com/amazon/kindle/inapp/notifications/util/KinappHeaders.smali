.class public final Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;
.super Ljava/lang/Object;
.source "KinappHeaders.kt"


# static fields
# The value of this static final field might be set in the static constructor
.field private static final ACCEPTS:Ljava/lang/String; = "Accepts"

# The value of this static final field might be set in the static constructor
.field private static final APP_VERSION:Ljava/lang/String; = "x-appVersion"

# The value of this static final field might be set in the static constructor
.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

# The value of this static final field might be set in the static constructor
.field private static final CUSTOMER_ID:Ljava/lang/String; = "X-CustomerID"

# The value of this static final field might be set in the static constructor
.field private static final DEVICE_SERIAL_NUMBER:Ljava/lang/String; = "X-DeviceSerialNumber"

# The value of this static final field might be set in the static constructor
.field private static final DEVICE_TYPE:Ljava/lang/String; = "X-DeviceType"

# The value of this static final field might be set in the static constructor
.field private static final FILE_FORMAT:Ljava/lang/String; = "application/json"

.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;

    const-string v0, "X-CustomerID"

    .line 5
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->CUSTOMER_ID:Ljava/lang/String;

    const-string v0, "X-DeviceSerialNumber"

    .line 6
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->DEVICE_SERIAL_NUMBER:Ljava/lang/String;

    const-string v0, "X-DeviceType"

    .line 7
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "Accepts"

    .line 8
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->ACCEPTS:Ljava/lang/String;

    const-string v0, "Content-Type"

    .line 9
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->CONTENT_TYPE:Ljava/lang/String;

    const-string v0, "x-appVersion"

    .line 10
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->APP_VERSION:Ljava/lang/String;

    const-string v0, "application/json"

    .line 11
    sput-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->FILE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getACCEPTS()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->ACCEPTS:Ljava/lang/String;

    return-object v0
.end method

.method public final getAPP_VERSION()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->APP_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public final getCONTENT_TYPE()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->CONTENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public final getCUSTOMER_ID()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->CUSTOMER_ID:Ljava/lang/String;

    return-object v0
.end method

.method public final getDEVICE_SERIAL_NUMBER()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->DEVICE_SERIAL_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method public final getDEVICE_TYPE()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->DEVICE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public final getFILE_FORMAT()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/KinappHeaders;->FILE_FORMAT:Ljava/lang/String;

    return-object v0
.end method
