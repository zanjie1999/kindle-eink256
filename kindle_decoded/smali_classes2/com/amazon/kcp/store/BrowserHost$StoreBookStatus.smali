.class public final enum Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;
.super Ljava/lang/Enum;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreBookStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

.field public static final enum DOWNLOADED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

.field public static final enum FAILED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

.field public static final enum NO_STATUS:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

.field public static final enum QUEUED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 127
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v1, 0x0

    const-string v2, "NO_STATUS"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->NO_STATUS:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    .line 132
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADED"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    .line 137
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v3, 0x2

    const-string v4, "DOWNLOADING"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADING:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    .line 142
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->FAILED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    .line 147
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v5, 0x4

    const-string v6, "QUEUED"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->QUEUED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    .line 123
    sget-object v7, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->NO_STATUS:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->DOWNLOADING:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->FAILED:Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;
    .locals 1

    .line 123
    const-class v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookStatus;->status:I

    return v0
.end method
