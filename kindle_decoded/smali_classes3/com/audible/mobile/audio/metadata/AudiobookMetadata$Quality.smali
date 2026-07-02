.class public final enum Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
.super Ljava/lang/Enum;
.source "AudiobookMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

.field public static final enum HIGH:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

.field public static final enum STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    new-instance v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->HIGH:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    .line 24
    sget-object v4, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->STANDARD:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->$VALUES:[Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    .locals 1

    .line 24
    const-class v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    .locals 1

    .line 24
    sget-object v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->$VALUES:[Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    invoke-virtual {v0}, [Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object v0
.end method
