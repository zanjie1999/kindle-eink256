.class final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalyticsReadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

.field public static final enum REPLICA:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

.field public static final enum TEXTVIEW:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

.field public static final enum YJ:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;


# instance fields
.field public final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    const/4 v1, 0x0

    const-string v2, "YJ"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->YJ:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    .line 214
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    const/4 v2, 0x1

    const-string v3, "REPLICA"

    const-string v4, "Replica"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    .line 215
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    const/4 v3, 0x2

    const-string v4, "TEXTVIEW"

    const-string v5, "Text View"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->TEXTVIEW:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    .line 212
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->YJ:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

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

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;
    .locals 1

    .line 212
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;
    .locals 1

    .line 212
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->mString:Ljava/lang/String;

    return-object v0
.end method
