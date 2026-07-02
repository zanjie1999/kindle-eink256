.class final enum Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;
.super Ljava/lang/Enum;
.source "RemoteLicenseReleaseBaseWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

.field public static final enum EBook:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

.field public static final enum Magazine:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

.field public static final enum Newspaper:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

.field public static final enum Sample:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    const/4 v2, 0x0

    const-string v3, "EBook"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->EBook:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    const/4 v2, 0x1

    const-string v3, "Sample"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->Sample:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    const/4 v2, 0x2

    const-string v3, "Magazine"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->Magazine:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    const/4 v2, 0x3

    const-string v3, "Newspaper"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->Newspaper:Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->$VALUES:[Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->$VALUES:[Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/releaselicense/api/RLRContentType;

    return-object v0
.end method
