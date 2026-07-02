.class final enum Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;
.super Ljava/lang/Enum;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/FastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum HIGHLIGHT:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum NEGATIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum OPEN_DESCRIPTION_URL:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum OPEN_XRAY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum OPEN_XRAY_INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum POSITIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum SELECT_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum SELECT_RELATED_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

.field public static final enum SHARE:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 24
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v1, 0x0

    const-string v2, "OPEN_XRAY"

    const-string v3, "Open"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 25
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v2, 0x1

    const-string v3, "OPEN_XRAY_INFOCARD"

    const-string v4, "OpenInfoCard"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY_INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 26
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v3, 0x2

    const-string v4, "OPEN_DESCRIPTION_URL"

    const-string v5, "OpenDescriptionUrl"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_DESCRIPTION_URL:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 27
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v4, 0x3

    const-string v5, "POSITIVE_FEEDBACK"

    const-string v6, "PositiveFeedback"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->POSITIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 28
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v5, 0x4

    const-string v6, "NEGATIVE_FEEDBACK"

    const-string v7, "NegativeFeedback"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->NEGATIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 29
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v6, 0x5

    const-string v7, "SELECT_ENTITY"

    const-string v8, "SelectEntity"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 30
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v7, 0x6

    const-string v8, "SELECT_RELATED_ENTITY"

    const-string v9, "SelectRelatedEntity"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_RELATED_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 31
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/4 v8, 0x7

    const-string v9, "GOTO"

    const-string v10, "Goto"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 32
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/16 v9, 0x8

    const-string v10, "SHARE"

    const-string v11, "Share"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SHARE:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 33
    new-instance v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/16 v10, 0x9

    const-string v11, "HIGHLIGHT"

    const-string v12, "Highlight"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->HIGHLIGHT:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    .line 23
    sget-object v12, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_XRAY_INFOCARD:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->OPEN_DESCRIPTION_URL:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->POSITIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->NEGATIVE_FEEDBACK:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SELECT_RELATED_ENTITY:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->GOTO:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->SHARE:Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->$VALUES:[Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    invoke-virtual {v0}, [Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/xray/metrics/FastMetricsRecorder$Action;

    return-object v0
.end method
