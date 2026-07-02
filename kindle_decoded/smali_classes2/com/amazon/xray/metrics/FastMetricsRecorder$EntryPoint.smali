.class final enum Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;
.super Ljava/lang/Enum;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/FastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum ALL_ENTITIES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum CHROME:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum IMAGES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum PEOPLE_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum SELECTION:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

.field public static final enum TERMS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 43
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v1, 0x0

    const-string v2, "CHROME"

    const-string v3, "Chrome"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->CHROME:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 44
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v2, 0x1

    const-string v3, "SELECTION"

    const-string v4, "Selection"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->SELECTION:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 45
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v3, 0x2

    const-string v4, "INFOCARD"

    const-string v5, "InfoCard"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 46
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v4, 0x3

    const-string v5, "ALL_ENTITIES_LIST"

    const-string v6, "AllEntitiesList"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ALL_ENTITIES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 47
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v5, 0x4

    const-string v6, "PEOPLE_LIST"

    const-string v7, "PeopleList"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->PEOPLE_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 48
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v6, 0x5

    const-string v7, "TERMS_LIST"

    const-string v8, "TermsList"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->TERMS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 49
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v7, 0x6

    const-string v8, "ENTITY_DETAIL"

    const-string v9, "EntityDetail"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 50
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/4 v8, 0x7

    const-string v9, "NOTABLE_CLIPS_LIST"

    const-string v10, "NotableClipsList"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 51
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/16 v9, 0x8

    const-string v10, "IMAGES_LIST"

    const-string v11, "ImagesList"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->IMAGES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    .line 42
    sget-object v11, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->CHROME:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->SELECTION:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ALL_ENTITIES_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->PEOPLE_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->TERMS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->ENTITY_DETAIL:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->NOTABLE_CLIPS_LIST:Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/xray/metrics/FastMetricsRecorder$EntryPoint;

    return-object v0
.end method
