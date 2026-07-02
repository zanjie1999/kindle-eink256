.class public final enum Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/webservices/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

.field public static final enum Eng:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

.field public static final enum ReleaseDebug:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

.field public static final enum User:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

.field public static final enum UserDebug:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;


# instance fields
.field private final mDebugBuild:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Eng"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->Eng:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    .line 10
    new-instance v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    const-string v3, "UserDebug"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->UserDebug:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    .line 11
    new-instance v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    const/4 v3, 0x2

    const-string v4, "User"

    invoke-direct {v0, v4, v3, v3, v1}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->User:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    .line 12
    new-instance v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    const/4 v4, 0x3

    const-string v5, "ReleaseDebug"

    invoke-direct {v0, v5, v4, v4, v2}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->ReleaseDebug:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    .line 8
    sget-object v6, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->Eng:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->UserDebug:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->User:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->mValue:I

    .line 19
    iput-boolean p4, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->mDebugBuild:Z

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 45
    invoke-static {}, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->values()[Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown build type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance p0, Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException;

    const-string v0, "Null is not a valid BuildType"

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InvalidEnumValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    return-object v0
.end method
