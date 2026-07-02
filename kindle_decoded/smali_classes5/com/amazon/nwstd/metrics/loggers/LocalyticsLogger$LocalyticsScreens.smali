.class final enum Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;
.super Ljava/lang/Enum;
.source "LocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalyticsScreens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

.field public static final enum BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

.field public static final enum BROWSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

.field public static final enum MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

.field public static final enum TOC:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;


# instance fields
.field public final mScreenString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 148
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    const/4 v1, 0x0

    const-string v2, "MAGAZINE_VIEWER"

    const-string v3, "Main Viewer"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    .line 149
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    const/4 v2, 0x1

    const-string v3, "TOC"

    const-string v4, "Table of content"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->TOC:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    .line 150
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    const/4 v3, 0x2

    const-string v4, "BROWSE"

    const-string v5, "Browse"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    .line 151
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    const/4 v4, 0x3

    const-string v5, "BOOKMARK_POPUP"

    const-string v6, "Bookmark popup"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    .line 147
    sget-object v6, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->TOC:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

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

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->mScreenString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;
    .locals 1

    .line 147
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;
    .locals 1

    .line 147
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->mScreenString:Ljava/lang/String;

    return-object v0
.end method
