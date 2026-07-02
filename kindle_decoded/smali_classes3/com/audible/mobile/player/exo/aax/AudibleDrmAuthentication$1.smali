.class synthetic Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication$1;
.super Ljava/lang/Object;
.source "AudibleDrmAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$audible$sdk$AudibleSDK$FileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$FileType;->values()[Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication$1;->$SwitchMap$com$audible$sdk$AudibleSDK$FileType:[I

    :try_start_0
    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/audible/mobile/player/exo/aax/AudibleDrmAuthentication$1;->$SwitchMap$com$audible$sdk$AudibleSDK$FileType:[I

    sget-object v1, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
