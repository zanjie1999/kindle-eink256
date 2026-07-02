.class public final enum Lcom/amazon/whispersync/dcp/ota/UpdateType;
.super Ljava/lang/Enum;
.source "UpdateType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateType;

.field public static final enum App:Lcom/amazon/whispersync/dcp/ota/UpdateType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OS:Lcom/amazon/whispersync/dcp/ota/UpdateType;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;


# instance fields
.field private final mServerString:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const-string v1, "OS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/amazon/whispersync/dcp/ota/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->OS:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const/4 v1, 0x1

    const-string v3, "App"

    const-string v4, "APPLICATION"

    invoke-direct {v0, v3, v1, v1, v4}, Lcom/amazon/whispersync/dcp/ota/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->App:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const/4 v3, 0x2

    const-string v4, "Unknown"

    const v5, 0x7fffffff

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/whispersync/dcp/ota/UpdateType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/dcp/ota/UpdateType;

    .line 9
    sget-object v5, Lcom/amazon/whispersync/dcp/ota/UpdateType;->OS:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    aput-object v5, v4, v2

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/UpdateType;->App:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/dcp/ota/UpdateType;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateType;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateType$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateType$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mValue:I

    .line 42
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mServerString:Ljava/lang/String;

    return-void
.end method

.method public static fromServerString(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/UpdateType;
    .locals 5

    .line 66
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/UpdateType;->values()[Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 68
    iget-object v4, v3, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mServerString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    return-object p0
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateType;
    .locals 5

    .line 52
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/UpdateType;->values()[Lcom/amazon/whispersync/dcp/ota/UpdateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/UpdateType;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/UpdateType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/UpdateType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/UpdateType;

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

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mServerString:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 92
    iget p2, p0, Lcom/amazon/whispersync/dcp/ota/UpdateType;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
