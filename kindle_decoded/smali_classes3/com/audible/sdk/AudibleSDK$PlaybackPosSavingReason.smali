.class public final enum Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackPosSavingReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

.field public static final enum PLAYPOS_SAVE_ON_CLOSE:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

.field public static final enum PLAYPOS_SAVE_ON_SEEK:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

.field public static final enum PLAYPOS_SAVE_PERIODIC:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

.field public static final enum PLAYPOS_SAVE_PLAYTHROUGH:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 268
    new-instance v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    const/4 v1, 0x0

    const-string v2, "PLAYPOS_SAVE_ON_CLOSE"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_ON_CLOSE:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    const/4 v2, 0x1

    const-string v3, "PLAYPOS_SAVE_ON_SEEK"

    invoke-direct {v0, v3, v2, v2}, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_ON_SEEK:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    const/4 v3, 0x2

    const-string v4, "PLAYPOS_SAVE_PERIODIC"

    invoke-direct {v0, v4, v3, v3}, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_PERIODIC:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    const/4 v4, 0x3

    const-string v5, "PLAYPOS_SAVE_PLAYTHROUGH"

    invoke-direct {v0, v5, v4, v4}, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_PLAYTHROUGH:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    .line 266
    sget-object v6, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_ON_CLOSE:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_ON_SEEK:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->PLAYPOS_SAVE_PERIODIC:Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->$VALUES:[Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 274
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;
    .locals 1

    .line 266
    const-class v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;
    .locals 1

    .line 266
    sget-object v0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->$VALUES:[Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPosSavingReason;->val:I

    return v0
.end method
