.class public final enum Lcom/audible/sdk/metric/LegacySdkMetricNames;
.super Ljava/lang/Enum;
.source "LegacySdkMetricNames.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/metric/LegacySdkMetricNames;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum AuthenticateException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum AuthenticateTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum CloseFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum OpenFileException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum OpenFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum ReadAudioSectionOffsetTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum ReadCoverArtInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum ReadCoverArtTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum ReadMetadataInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum ReadMetadataTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum SeekTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

.field public static final enum VerifyFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 9
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v1, 0x0

    const-string v2, "OpenFileTime"

    invoke-direct {v0, v2, v1}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 10
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v2, 0x1

    const-string v3, "ReadMetadataTime"

    invoke-direct {v0, v3, v2}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 11
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v3, 0x2

    const-string v4, "ReadMetadataInfoTime"

    invoke-direct {v0, v4, v3}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 12
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v4, 0x3

    const-string v5, "ReadCoverArtTime"

    invoke-direct {v0, v5, v4}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 13
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v5, 0x4

    const-string v6, "ReadCoverArtInfoTime"

    invoke-direct {v0, v6, v5}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 14
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v6, 0x5

    const-string v7, "AuthenticateTime"

    invoke-direct {v0, v7, v6}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->AuthenticateTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 15
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v7, 0x6

    const-string v8, "SeekTime"

    invoke-direct {v0, v8, v7}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->SeekTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 16
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/4 v8, 0x7

    const-string v9, "VerifyFileTime"

    invoke-direct {v0, v9, v8}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->VerifyFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 17
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/16 v9, 0x8

    const-string v10, "ReadAudioSectionOffsetTime"

    invoke-direct {v0, v10, v9}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadAudioSectionOffsetTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 18
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/16 v10, 0x9

    const-string v11, "CloseFileTime"

    invoke-direct {v0, v11, v10}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->CloseFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 19
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/16 v11, 0xa

    const-string v12, "OpenFileException"

    invoke-direct {v0, v12, v11}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 20
    new-instance v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/16 v12, 0xb

    const-string v13, "AuthenticateException"

    invoke-direct {v0, v13, v12}, Lcom/audible/sdk/metric/LegacySdkMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->AuthenticateException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/audible/sdk/metric/LegacySdkMetricNames;

    .line 8
    sget-object v14, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v14, v13, v1

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v3

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v4

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v5

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->AuthenticateTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v6

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->SeekTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v7

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->VerifyFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v8

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadAudioSectionOffsetTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v9

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->CloseFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v10

    sget-object v1, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/audible/sdk/metric/LegacySdkMetricNames;->$VALUES:[Lcom/audible/sdk/metric/LegacySdkMetricNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/metric/LegacySdkMetricNames;
    .locals 1

    .line 8
    const-class v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/metric/LegacySdkMetricNames;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/metric/LegacySdkMetricNames;
    .locals 1

    .line 8
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->$VALUES:[Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-virtual {v0}, [Lcom/audible/sdk/metric/LegacySdkMetricNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/metric/LegacySdkMetricNames;

    return-object v0
.end method
