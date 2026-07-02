.class public final enum Lcom/amazon/kcp/cover/badge/CoverBadge;
.super Ljava/lang/Enum;
.source "CoverBadge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/cover/badge/CoverBadge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum AUDIO:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum BACK_ISSUES:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum CLOUD:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum CONVERT_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum DOWNLOAD_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum ERROR:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum LOCAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum NEW:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum PDOC_TYPE:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum READ:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum READING_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum RENTAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum SAMPLE:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum SAVED:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum SERIES:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum SUBSCRIPTION:Lcom/amazon/kcp/cover/badge/CoverBadge;

.field public static final enum TRIAL:Lcom/amazon/kcp/cover/badge/CoverBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v1, 0x0

    const-string v2, "NEW"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->NEW:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 8
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v2, 0x1

    const-string v3, "SAVED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->SAVED:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 9
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v3, 0x2

    const-string v4, "READING_PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->READING_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 10
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v4, 0x3

    const-string v5, "SAMPLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->SAMPLE:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 11
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v5, 0x4

    const-string v6, "TRIAL"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->TRIAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 12
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v6, 0x5

    const-string v7, "RENTAL"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->RENTAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 13
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v7, 0x6

    const-string v8, "CLOUD"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->CLOUD:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 14
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/4 v8, 0x7

    const-string v9, "LOCAL"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->LOCAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 15
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v9, 0x8

    const-string v10, "ERROR"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->ERROR:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 16
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v10, 0x9

    const-string v11, "DOWNLOAD_PROGRESS"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->DOWNLOAD_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 17
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v11, 0xa

    const-string v12, "BACK_ISSUES"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->BACK_ISSUES:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 18
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v12, 0xb

    const-string v13, "AUDIO"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->AUDIO:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 19
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v13, 0xc

    const-string v14, "PDOC_TYPE"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->PDOC_TYPE:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 20
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v14, 0xd

    const-string v15, "SERIES"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->SERIES:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 21
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v15, 0xe

    const-string v14, "CONVERT_PROGRESS"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->CONVERT_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 22
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v14, 0xf

    const-string v15, "READ"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->READ:Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 23
    new-instance v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v15, 0x10

    const-string v14, "SUBSCRIPTION"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/cover/badge/CoverBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->SUBSCRIPTION:Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/amazon/kcp/cover/badge/CoverBadge;

    .line 6
    sget-object v16, Lcom/amazon/kcp/cover/badge/CoverBadge;->NEW:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->SAVED:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->READING_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->SAMPLE:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->TRIAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->RENTAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->CLOUD:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->LOCAL:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->ERROR:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->DOWNLOAD_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->BACK_ISSUES:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->AUDIO:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->PDOC_TYPE:Lcom/amazon/kcp/cover/badge/CoverBadge;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->SERIES:Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->CONVERT_PROGRESS:Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/cover/badge/CoverBadge;->READ:Lcom/amazon/kcp/cover/badge/CoverBadge;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/kcp/cover/badge/CoverBadge;->$VALUES:[Lcom/amazon/kcp/cover/badge/CoverBadge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/cover/badge/CoverBadge;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/cover/badge/CoverBadge;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/cover/badge/CoverBadge;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kcp/cover/badge/CoverBadge;->$VALUES:[Lcom/amazon/kcp/cover/badge/CoverBadge;

    invoke-virtual {v0}, [Lcom/amazon/kcp/cover/badge/CoverBadge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/cover/badge/CoverBadge;

    return-object v0
.end method
