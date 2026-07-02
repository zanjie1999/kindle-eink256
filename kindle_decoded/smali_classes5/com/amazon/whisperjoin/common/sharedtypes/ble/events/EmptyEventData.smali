.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;
.super Ljava/lang/Object;
.source "EmptyEventData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/EmptyEventData;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
