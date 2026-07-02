.class public final enum Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;
.super Ljava/lang/Enum;
.source "AiRCoverArtTypeFactory.java"

# interfaces
.implements Lcom/audible/mobile/audio/metadata/CoverArtType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AiRCoverArtType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;",
        ">;",
        "Lcom/audible/mobile/audio/metadata/CoverArtType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

.field public static final enum PLAYER_COVER_ART:Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;


# instance fields
.field private final mSizeResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$dimen;->player_artwork_size:I

    const/4 v2, 0x0

    const-string v3, "PLAYER_COVER_ART"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->PLAYER_COVER_ART:Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    aput-object v0, v1, v2

    .line 39
    sput-object v1, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->$VALUES:[Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->mSizeResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;
    .locals 1

    .line 39
    const-class v0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;
    .locals 1

    .line 39
    sget-object v0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->$VALUES:[Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;

    return-object v0
.end method


# virtual methods
.method public getResourceId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/audible/android/kcp/coverart/AiRCoverArtTypeFactory$AiRCoverArtType;->mSizeResourceId:I

    return v0
.end method
