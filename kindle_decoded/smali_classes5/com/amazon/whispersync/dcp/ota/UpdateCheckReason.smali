.class public final enum Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;
.super Ljava/lang/Enum;
.source "UpdateCheckReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Scheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

.field public static final enum Unscheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

.field public static final enum UserInitiated:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Scheduled"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Scheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const/4 v3, 0x2

    const-string v4, "Unscheduled"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Unscheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const/4 v4, 0x3

    const-string v5, "UserInitiated"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->UserInitiated:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const-string v5, "Unknown"

    const v6, 0x7fffffff

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 7
    sget-object v6, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Scheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Unscheduled:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->UserInitiated:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;
    .locals 5

    .line 47
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->values()[Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->Unknown:Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

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

    .line 42
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget p2, p0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
