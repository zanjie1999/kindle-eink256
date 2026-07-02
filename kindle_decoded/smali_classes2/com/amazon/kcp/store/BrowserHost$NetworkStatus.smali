.class public final enum Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
.super Ljava/lang/Enum;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_MOBILE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 88
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_AVAILABLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 92
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v2, 0x1

    const-string v3, "DISCONNECTED"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 96
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v3, 0x2

    const-string v4, "CONNECTED_UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 100
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v4, 0x3

    const-string v5, "CONNECTED_WIFI"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 104
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v5, 0x4

    const-string v6, "CONNECTED_MOBILE"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_MOBILE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 84
    sget-object v7, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    .locals 1

    .line 84
    const-class v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->status:I

    return v0
.end method
