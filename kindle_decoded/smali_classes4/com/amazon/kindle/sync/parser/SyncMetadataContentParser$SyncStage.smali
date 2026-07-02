.class final enum Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;
.super Ljava/lang/Enum;
.source "SyncMetadataContentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SyncStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

.field public static final enum FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

.field public static final enum NON_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

.field public static final enum PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;


# instance fields
.field private batchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 222
    new-instance v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    const/4 v1, 0x0

    const-string v2, "PARTIAL_FTUE"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    .line 228
    new-instance v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    const/16 v2, 0x96

    const/4 v3, 0x1

    const-string v4, "FULL_FTUE"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    .line 234
    new-instance v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    const/4 v4, 0x2

    const-string v5, "NON_FTUE"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->NON_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    .line 216
    sget-object v5, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->PARTIAL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    aput-object v5, v2, v1

    sget-object v1, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->FULL_FTUE:Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    sput-object v2, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->$VALUES:[Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput p3, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->batchSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;
    .locals 1

    .line 216
    const-class v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;
    .locals 1

    .line 216
    sget-object v0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->$VALUES:[Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    invoke-virtual {v0}, [Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;

    return-object v0
.end method


# virtual methods
.method public getBatchSize()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/amazon/kindle/sync/parser/SyncMetadataContentParser$SyncStage;->batchSize:I

    return v0
.end method
