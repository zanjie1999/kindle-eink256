.class public final enum Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;
.super Ljava/lang/Enum;
.source "ExternalScreenStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

.field public static final enum CLOSED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

.field public static final enum CLOSING:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

.field public static final enum OPENED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    const/4 v1, 0x0

    const-string v2, "CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    const/4 v2, 0x1

    const-string v3, "OPENED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->OPENED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    .line 22
    new-instance v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    const/4 v3, 0x2

    const-string v4, "CLOSING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSING:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    .line 8
    sget-object v5, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->CLOSED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->OPENED:Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->$VALUES:[Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->$VALUES:[Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/ExternalScreenStatus;

    return-object v0
.end method
