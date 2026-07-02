.class public final enum Lcom/audible/mobile/player/AudioDataSourceType;
.super Ljava/lang/Enum;
.source "AudioDataSourceType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/AudioDataSourceType;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum AudibleDRM:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/player/AudioDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Chromecast:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum DownloadGeneral:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum Hls:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum HlsAudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum Mp3:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum Mp3AudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum Mp3Offline:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum NotSet:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum PlayReady:Lcom/audible/mobile/player/AudioDataSourceType;

.field public static final enum Sonos:Lcom/audible/mobile/player/AudioDataSourceType;


# instance fields
.field private final capabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 22
    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v2, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v3, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_BOOST:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v2, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "AudibleDRM"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDRM:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 25
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v3, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "PlayReady"

    invoke-direct {v0, v4, v3, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->PlayReady:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 27
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v4, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "Hls"

    invoke-direct {v0, v5, v4, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Hls:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 29
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v5, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "HlsAudiblePlayer"

    invoke-direct {v0, v6, v5, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->HlsAudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 31
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v6, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v6, 0x4

    const-string v7, "Mp3"

    invoke-direct {v0, v7, v6, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 33
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v7, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v7, 0x5

    const-string v8, "Mp3AudiblePlayer"

    invoke-direct {v0, v8, v7, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3AudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 35
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v8, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v8, 0x6

    const-string v9, "Mp3Offline"

    invoke-direct {v0, v9, v8, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3Offline:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 37
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v9, 0x7

    const-string v10, "Chromecast"

    invoke-direct {v0, v10, v9, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Chromecast:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 39
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->NARRATION_SPEED:Lcom/audible/mobile/player/AapPlayerCapability;

    sget-object v10, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v10, 0x8

    const-string v11, "AudibleDrmExo"

    invoke-direct {v0, v11, v10, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 41
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    sget-object v1, Lcom/audible/mobile/player/AapPlayerCapability;->VOLUME_CONTROL:Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v11, 0x9

    const-string v12, "Sonos"

    invoke-direct {v0, v12, v11, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->Sonos:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 44
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    const-class v1, Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v12, 0xa

    const-string v13, "DownloadGeneral"

    invoke-direct {v0, v13, v12, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->DownloadGeneral:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 50
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType;

    const-class v1, Lcom/audible/mobile/player/AapPlayerCapability;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/16 v13, 0xb

    const-string v14, "NotSet"

    invoke-direct {v0, v14, v13, v1}, Lcom/audible/mobile/player/AudioDataSourceType;-><init>(Ljava/lang/String;ILjava/util/EnumSet;)V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->NotSet:Lcom/audible/mobile/player/AudioDataSourceType;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/audible/mobile/player/AudioDataSourceType;

    .line 19
    sget-object v14, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDRM:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->PlayReady:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Hls:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->HlsAudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3AudiblePlayer:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Mp3Offline:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Chromecast:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->Sonos:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/audible/mobile/player/AudioDataSourceType;->DownloadGeneral:Lcom/audible/mobile/player/AudioDataSourceType;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/audible/mobile/player/AudioDataSourceType;->$VALUES:[Lcom/audible/mobile/player/AudioDataSourceType;

    .line 83
    new-instance v0, Lcom/audible/mobile/player/AudioDataSourceType$1;

    invoke-direct {v0}, Lcom/audible/mobile/player/AudioDataSourceType$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/AudioDataSourceType;->capabilities:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/AudioDataSourceType;
    .locals 1

    .line 19
    const-class v0, Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/AudioDataSourceType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/AudioDataSourceType;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->$VALUES:[Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/AudioDataSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/AudioDataSourceType;

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

    .line 80
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
