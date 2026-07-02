.class public final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryBannerClickEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

.field public static final enum ACCEPT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

.field public static final enum DECLINE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;


# instance fields
.field private final mEvent:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 127
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    const/4 v1, 0x0

    const-string v2, "DECLINE"

    const-string v3, "DeclineUpsellCampaign"

    const-string v4, "Decline"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->DECLINE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    .line 128
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    const/4 v2, 0x1

    const-string v3, "ACCEPT"

    const-string v4, "AcceptUpsellCampaign"

    const-string v5, "Accept"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->ACCEPT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    .line 126
    sget-object v4, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->DECLINE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->mEvent:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;
    .locals 1

    .line 126
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;
    .locals 1

    .line 126
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->mEvent:Ljava/lang/String;

    return-object v0
.end method
