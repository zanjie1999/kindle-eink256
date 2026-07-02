.class public Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;
.super Lcom/amazon/devicesetupservice/DiscoveryInputParameters;
.source "LocalNotificationInputParameters.java"


# static fields
.field private static final classNameHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.LocalNotificationInputParameters"

    aput-object v2, v0, v1

    .line 10
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-super {p0}, Lcom/amazon/devicesetupservice/DiscoveryInputParameters;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationInputParameters;->classNameHashCode:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
