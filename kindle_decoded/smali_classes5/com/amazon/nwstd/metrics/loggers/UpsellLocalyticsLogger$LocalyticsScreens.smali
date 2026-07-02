.class final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalyticsScreens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

.field public static final enum MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

.field public static final enum UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

.field public static final enum UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;


# instance fields
.field public final mScreenString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 153
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    const/4 v1, 0x0

    const-string v2, "MAGAZINE_VIEWER"

    const-string v3, "Main Viewer"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    .line 154
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    const/4 v2, 0x1

    const-string v3, "UPSELL_FULL_PAGE"

    const-string v4, "Upsell full page"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    .line 155
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    const/4 v3, 0x2

    const-string v4, "UPSELL_BUTTON_CLICKED"

    const-string v5, "Upsell button clicked"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    .line 152
    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

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

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->mScreenString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;
    .locals 1

    .line 152
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;
    .locals 1

    .line 152
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->mScreenString:Ljava/lang/String;

    return-object v0
.end method
