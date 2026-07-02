.class public final enum Lcom/amazon/kcp/reader/IShareHelper$ShareType;
.super Ljava/lang/Enum;
.source "IShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/IShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/IShareHelper$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field public static final enum DISCOVER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field public static final enum PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field public static final enum WHOLEBOOK_CAROUSEL:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field public static final enum WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

.field public static final enum WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v1, 0x0

    const-string v2, "WHOLEBOOK_CAROUSEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/IShareHelper$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_CAROUSEL:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v2, 0x1

    const-string v3, "WHOLEBOOK_LIBRARY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/IShareHelper$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 23
    new-instance v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v3, 0x2

    const-string v4, "WHOLEBOOK_HOME"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/IShareHelper$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v4, 0x3

    const-string v5, "PROGRESS_READER"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/IShareHelper$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v5, 0x4

    const-string v6, "DISCOVER"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/IShareHelper$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->DISCOVER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    .line 19
    sget-object v7, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_CAROUSEL:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->$VALUES:[Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/IShareHelper$ShareType;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/IShareHelper$ShareType;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->$VALUES:[Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/IShareHelper$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    return-object v0
.end method
