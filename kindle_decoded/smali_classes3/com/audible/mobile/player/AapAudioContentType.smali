.class public final enum Lcom/audible/mobile/player/AapAudioContentType;
.super Ljava/lang/Enum;
.source "AapAudioContentType.java"

# interfaces
.implements Lcom/audible/mobile/player/AudioContentType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/AapAudioContentType;",
        ">;",
        "Lcom/audible/mobile/player/AudioContentType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/AapAudioContentType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/AapAudioContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Sample:Lcom/audible/mobile/player/AapAudioContentType;

.field public static final enum Unknown:Lcom/audible/mobile/player/AapAudioContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/audible/mobile/player/AapAudioContentType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/AapAudioContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AapAudioContentType;->Unknown:Lcom/audible/mobile/player/AapAudioContentType;

    .line 14
    new-instance v0, Lcom/audible/mobile/player/AapAudioContentType;

    const/4 v2, 0x1

    const-string v3, "Sample"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/AapAudioContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/AapAudioContentType;->Sample:Lcom/audible/mobile/player/AapAudioContentType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/player/AapAudioContentType;

    .line 10
    sget-object v4, Lcom/audible/mobile/player/AapAudioContentType;->Unknown:Lcom/audible/mobile/player/AapAudioContentType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/player/AapAudioContentType;->$VALUES:[Lcom/audible/mobile/player/AapAudioContentType;

    .line 33
    new-instance v0, Lcom/audible/mobile/player/AapAudioContentType$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/AapAudioContentType$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/AapAudioContentType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/AapAudioContentType;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/mobile/player/AapAudioContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/AapAudioContentType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/AapAudioContentType;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/mobile/player/AapAudioContentType;->$VALUES:[Lcom/audible/mobile/player/AapAudioContentType;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/AapAudioContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/AapAudioContentType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
