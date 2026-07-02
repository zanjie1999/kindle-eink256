.class public final enum Lcom/audible/mobile/player/State;
.super Ljava/lang/Enum;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/State;

.field public static final enum BUFFERING:Lcom/audible/mobile/player/State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERROR:Lcom/audible/mobile/player/State;

.field public static final enum IDLE:Lcom/audible/mobile/player/State;

.field public static final enum PAUSED:Lcom/audible/mobile/player/State;

.field public static final enum PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

.field public static final enum PREPARED:Lcom/audible/mobile/player/State;

.field public static final enum PREPARING:Lcom/audible/mobile/player/State;

.field public static final enum STARTED:Lcom/audible/mobile/player/State;

.field public static final enum STOPPED:Lcom/audible/mobile/player/State;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 25
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    .line 35
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v2, 0x1

    const-string v3, "PREPARING"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    .line 50
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v3, 0x2

    const-string v4, "PREPARED"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    .line 60
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    .line 70
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v5, 0x4

    const-string v6, "PAUSED"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    .line 77
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v6, 0x5

    const-string v7, "BUFFERING"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    .line 87
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v7, 0x6

    const-string v8, "PLAYBACK_COMPLETED"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    .line 97
    new-instance v0, Lcom/audible/mobile/player/State;

    const/4 v8, 0x7

    const-string v9, "STOPPED"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    .line 102
    new-instance v0, Lcom/audible/mobile/player/State;

    const/16 v9, 0x8

    const-string v10, "ERROR"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/player/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/audible/mobile/player/State;

    .line 14
    sget-object v11, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    aput-object v11, v10, v1

    sget-object v1, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v2

    sget-object v1, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v3

    sget-object v1, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v4

    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v5

    sget-object v1, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v6

    sget-object v1, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v7

    sget-object v1, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/audible/mobile/player/State;->$VALUES:[Lcom/audible/mobile/player/State;

    .line 115
    new-instance v0, Lcom/audible/mobile/player/State$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/State$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/State;
    .locals 1

    .line 14
    const-class v0, Lcom/audible/mobile/player/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/State;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/State;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/mobile/player/State;->$VALUES:[Lcom/audible/mobile/player/State;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/State;

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

    .line 112
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
