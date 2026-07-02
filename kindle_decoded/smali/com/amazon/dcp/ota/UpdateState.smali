.class public final enum Lcom/amazon/dcp/ota/UpdateState;
.super Ljava/lang/Enum;
.source "UpdateState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/dcp/ota/UpdateState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/dcp/ota/UpdateState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/UpdateState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Complete:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Deduped:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum DownloadPaused:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Downloaded:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Downloading:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Failed:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Installed:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Installing:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Pending:Lcom/amazon/dcp/ota/UpdateState;

.field public static final enum Unknown:Lcom/amazon/dcp/ota/UpdateState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 16
    const-class v0, Lcom/amazon/dcp/ota/UpdateState;

    .line 18
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v1, 0x0

    const-string v2, "Pending"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Pending:Lcom/amazon/dcp/ota/UpdateState;

    .line 19
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v2, 0x1

    const-string v3, "Downloading"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Downloading:Lcom/amazon/dcp/ota/UpdateState;

    .line 20
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v3, 0x2

    const-string v4, "Downloaded"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/dcp/ota/UpdateState;

    .line 21
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v4, 0x3

    const-string v5, "Installing"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Installing:Lcom/amazon/dcp/ota/UpdateState;

    .line 22
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v5, 0x4

    const-string v6, "Installed"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Installed:Lcom/amazon/dcp/ota/UpdateState;

    .line 23
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v6, 0x5

    const-string v7, "Complete"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Complete:Lcom/amazon/dcp/ota/UpdateState;

    .line 24
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v7, 0x6

    const-string v8, "Failed"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Failed:Lcom/amazon/dcp/ota/UpdateState;

    .line 25
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/4 v8, 0x7

    const-string v9, "Deduped"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Deduped:Lcom/amazon/dcp/ota/UpdateState;

    .line 26
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const/16 v9, 0x8

    const-string v10, "DownloadPaused"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/dcp/ota/UpdateState;

    .line 29
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState;

    const v10, 0x7fffffff

    const/16 v11, 0x9

    const-string v12, "Unknown"

    invoke-direct {v0, v12, v11, v10}, Lcom/amazon/dcp/ota/UpdateState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->Unknown:Lcom/amazon/dcp/ota/UpdateState;

    const/16 v10, 0xa

    new-array v10, v10, [Lcom/amazon/dcp/ota/UpdateState;

    .line 16
    sget-object v12, Lcom/amazon/dcp/ota/UpdateState;->Pending:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v12, v10, v1

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Downloading:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Downloaded:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Installing:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Installed:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Complete:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Failed:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->Deduped:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v8

    sget-object v1, Lcom/amazon/dcp/ota/UpdateState;->DownloadPaused:Lcom/amazon/dcp/ota/UpdateState;

    aput-object v1, v10, v9

    aput-object v0, v10, v11

    sput-object v10, Lcom/amazon/dcp/ota/UpdateState;->$VALUES:[Lcom/amazon/dcp/ota/UpdateState;

    .line 31
    const-class v0, Lcom/amazon/dcp/ota/UpdateState;

    .line 32
    new-instance v0, Lcom/amazon/dcp/ota/UpdateState$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/UpdateState$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/amazon/dcp/ota/UpdateState;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/dcp/ota/UpdateState;
    .locals 5

    .line 61
    invoke-static {}, Lcom/amazon/dcp/ota/UpdateState;->values()[Lcom/amazon/dcp/ota/UpdateState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3}, Lcom/amazon/dcp/ota/UpdateState;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    sget-object p0, Lcom/amazon/dcp/ota/UpdateState;->Unknown:Lcom/amazon/dcp/ota/UpdateState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/dcp/ota/UpdateState;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/dcp/ota/UpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/dcp/ota/UpdateState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/dcp/ota/UpdateState;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/dcp/ota/UpdateState;->$VALUES:[Lcom/amazon/dcp/ota/UpdateState;

    invoke-virtual {v0}, [Lcom/amazon/dcp/ota/UpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/dcp/ota/UpdateState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public value()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/amazon/dcp/ota/UpdateState;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 151
    iget p2, p0, Lcom/amazon/dcp/ota/UpdateState;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
