.class final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalyticsUpsellClickOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

.field public static final enum UPSELL_BANNER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

.field public static final enum UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;


# instance fields
.field public final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 183
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    const/4 v1, 0x0

    const-string v2, "UPSELL_FULL_PAGE"

    const-string v3, "Upsell Full Page"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    .line 188
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    const/4 v2, 0x1

    const-string v3, "UPSELL_BANNER"

    const-string v4, "Upsell Banner"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    .line 179
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

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

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;
    .locals 1

    .line 179
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;
    .locals 1

    .line 179
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->mString:Ljava/lang/String;

    return-object v0
.end method
