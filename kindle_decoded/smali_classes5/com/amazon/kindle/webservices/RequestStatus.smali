.class public final enum Lcom/amazon/kindle/webservices/RequestStatus;
.super Ljava/lang/Enum;
.source "RequestStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webservices/RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webservices/RequestStatus;

.field public static final enum COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

.field public static final enum ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

.field public static final enum PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

.field public static final enum PREQUEUED:Lcom/amazon/kindle/webservices/RequestStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v1, 0x0

    const-string v2, "QUEUED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 12
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 14
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 16
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 18
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v5, 0x4

    const-string v6, "PREQUEUED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->PREQUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    .line 23
    new-instance v0, Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/webservices/RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/webservices/RequestStatus;

    .line 8
    sget-object v8, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/webservices/RequestStatus;->PREQUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/webservices/RequestStatus;->$VALUES:[Lcom/amazon/kindle/webservices/RequestStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webservices/RequestStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/RequestStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webservices/RequestStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->$VALUES:[Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webservices/RequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webservices/RequestStatus;

    return-object v0
.end method
