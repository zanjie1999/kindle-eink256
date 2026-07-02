.class public final enum Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;
.super Ljava/lang/Enum;
.source "KuBannerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/data/KuBannerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerShowingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

.field public static final enum NEVER:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

.field public static final enum NO:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

.field public static final enum YES:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    const/4 v1, 0x0

    const-string v2, "YES"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->YES:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    .line 22
    new-instance v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    const/4 v2, 0x1

    const-string v3, "NO"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->NO:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    .line 23
    new-instance v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->NEVER:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    .line 20
    sget-object v5, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->YES:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->NO:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->$VALUES:[Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->$VALUES:[Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    invoke-virtual {v0}, [Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    return-object v0
.end method
