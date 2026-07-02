.class public final enum Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;
.super Ljava/lang/Enum;
.source "DownloadOnDemandFontEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

.field public static final enum FONT_DELETE_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

.field public static final enum FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

.field public static final enum FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "FONT_DOWNLOAD_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "FONT_DOWNLOAD_FAIL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "FONT_DELETE_SUCCESS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DELETE_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    .line 12
    sget-object v5, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->$VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->$VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    return-object v0
.end method
