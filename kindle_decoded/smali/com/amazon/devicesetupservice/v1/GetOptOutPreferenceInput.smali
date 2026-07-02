.class public Lcom/amazon/devicesetupservice/v1/GetOptOutPreferenceInput;
.super Lcom/amazon/devicesetupservice/v1/OptOutPreferenceInput;
.source "GetOptOutPreferenceInput.java"


# static fields
.field private static final classNameHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.GetOptOutPreferenceInput"

    aput-object v2, v0, v1

    .line 8
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/GetOptOutPreferenceInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/OptOutPreferenceInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 25
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/GetOptOutPreferenceInput;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/OptOutPreferenceInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/OptOutPreferenceInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/GetOptOutPreferenceInput;->classNameHashCode:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
