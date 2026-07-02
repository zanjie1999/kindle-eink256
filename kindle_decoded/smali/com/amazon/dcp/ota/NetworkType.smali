.class public final enum Lcom/amazon/dcp/ota/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/dcp/ota/NetworkType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/dcp/ota/NetworkType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LAN:Lcom/amazon/dcp/ota/NetworkType;

.field public static final enum Roaming:Lcom/amazon/dcp/ota/NetworkType;

.field public static final enum Unknown:Lcom/amazon/dcp/ota/NetworkType;

.field public static final enum WAN:Lcom/amazon/dcp/ota/NetworkType;


# instance fields
.field private final mServerString:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    const-class v0, Lcom/amazon/dcp/ota/NetworkType;

    .line 16
    new-instance v0, Lcom/amazon/dcp/ota/NetworkType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LAN"

    const-string v4, "WiFi"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/amazon/dcp/ota/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/dcp/ota/NetworkType;->LAN:Lcom/amazon/dcp/ota/NetworkType;

    .line 18
    new-instance v0, Lcom/amazon/dcp/ota/NetworkType;

    const-string v3, "WAN"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v3}, Lcom/amazon/dcp/ota/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/dcp/ota/NetworkType;->WAN:Lcom/amazon/dcp/ota/NetworkType;

    .line 20
    new-instance v0, Lcom/amazon/dcp/ota/NetworkType;

    const-string v3, "Roaming"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v4, v5, v3}, Lcom/amazon/dcp/ota/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/dcp/ota/NetworkType;->Roaming:Lcom/amazon/dcp/ota/NetworkType;

    .line 23
    new-instance v0, Lcom/amazon/dcp/ota/NetworkType;

    const v3, 0x7fffffff

    const-string v6, "Unknown"

    invoke-direct {v0, v6, v5, v3, v6}, Lcom/amazon/dcp/ota/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/dcp/ota/NetworkType;->Unknown:Lcom/amazon/dcp/ota/NetworkType;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/amazon/dcp/ota/NetworkType;

    .line 13
    sget-object v6, Lcom/amazon/dcp/ota/NetworkType;->LAN:Lcom/amazon/dcp/ota/NetworkType;

    aput-object v6, v3, v1

    sget-object v1, Lcom/amazon/dcp/ota/NetworkType;->WAN:Lcom/amazon/dcp/ota/NetworkType;

    aput-object v1, v3, v2

    sget-object v1, Lcom/amazon/dcp/ota/NetworkType;->Roaming:Lcom/amazon/dcp/ota/NetworkType;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    sput-object v3, Lcom/amazon/dcp/ota/NetworkType;->$VALUES:[Lcom/amazon/dcp/ota/NetworkType;

    .line 25
    new-instance v0, Lcom/amazon/dcp/ota/NetworkType$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/NetworkType$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/NetworkType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/amazon/dcp/ota/NetworkType;->mValue:I

    .line 50
    iput-object p4, p0, Lcom/amazon/dcp/ota/NetworkType;->mServerString:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/dcp/ota/NetworkType;
    .locals 5

    .line 60
    invoke-static {}, Lcom/amazon/dcp/ota/NetworkType;->values()[Lcom/amazon/dcp/ota/NetworkType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Lcom/amazon/dcp/ota/NetworkType;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Lcom/amazon/dcp/ota/NetworkType;->Unknown:Lcom/amazon/dcp/ota/NetworkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/dcp/ota/NetworkType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/dcp/ota/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/dcp/ota/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/dcp/ota/NetworkType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/dcp/ota/NetworkType;->$VALUES:[Lcom/amazon/dcp/ota/NetworkType;

    invoke-virtual {v0}, [Lcom/amazon/dcp/ota/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/dcp/ota/NetworkType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/dcp/ota/NetworkType;->mServerString:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amazon/dcp/ota/NetworkType;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 130
    iget p2, p0, Lcom/amazon/dcp/ota/NetworkType;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
