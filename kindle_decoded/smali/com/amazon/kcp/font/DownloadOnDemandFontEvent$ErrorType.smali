.class public final enum Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;
.super Ljava/lang/Enum;
.source "DownloadOnDemandFontEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

.field public static final enum FAIL_GENERAL_ERROR:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

.field public static final enum FAIL_NETWORK:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

.field public static final enum NONE:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->NONE:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    .line 20
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    const/4 v2, 0x1

    const-string v3, "FAIL_NETWORK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_NETWORK:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    .line 21
    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    const/4 v3, 0x2

    const-string v4, "FAIL_GENERAL_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_GENERAL_ERROR:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    .line 18
    sget-object v5, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->NONE:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_NETWORK:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->$VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->$VALUES:[Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    return-object v0
.end method
