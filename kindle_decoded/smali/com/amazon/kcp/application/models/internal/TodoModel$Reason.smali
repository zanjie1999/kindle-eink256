.class public final enum Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
.super Ljava/lang/Enum;
.source "TodoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum APP_START:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum BACKGROUND_NOTIFICATION_RECEIVED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum DCP_TODO:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum NETWORK_CONNECTED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum PURCHASE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum REGISTRATION:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum SCHEDULED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field public static final enum TPH:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;


# instance fields
.field private honorXADPCallAfter:Z

.field private reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v1, 0x0

    const-string v2, "CUSTOMER"

    const-string v3, "Customer"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v2, 0x1

    const-string v3, "SCHEDULED"

    const-string v4, "Scheduled"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->SCHEDULED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 38
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v3, 0x2

    const-string v4, "DCP_TODO"

    const-string v5, "DcpTodo"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->DCP_TODO:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 44
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v4, 0x3

    const-string v5, "TPH"

    invoke-direct {v0, v5, v4, v5, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->TPH:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 49
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v5, 0x4

    const-string v6, "REGISTRATION"

    const-string v7, "Registration"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->REGISTRATION:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 54
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v6, 0x5

    const-string v7, "PURCHASE"

    const-string v8, "Purchase"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->PURCHASE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 59
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v7, 0x6

    const-string v8, "FALKOR_FULL_SYNC"

    const-string v9, "FalkorFullSync"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 64
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/4 v8, 0x7

    const-string v9, "KINDLE_FOREGROUNDED"

    const-string v10, "KindleForegrounded"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 69
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/16 v9, 0x8

    const-string v10, "APP_START"

    const-string v11, "AppStart"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->APP_START:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 74
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/16 v10, 0x9

    const-string v11, "BACKGROUND_NOTIFICATION_RECEIVED"

    const-string v12, "BackgroundNotificationReceived"

    invoke-direct {v0, v11, v10, v12, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->BACKGROUND_NOTIFICATION_RECEIVED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 79
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/16 v11, 0xa

    const-string v12, "NETWORK_CONNECTED"

    const-string v13, "NetworkConnected"

    invoke-direct {v0, v12, v11, v13, v1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NETWORK_CONNECTED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 81
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/16 v12, 0xb

    const-string v13, "NONE"

    const-string v14, ""

    invoke-direct {v0, v13, v12, v14, v2}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NONE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 24
    sget-object v14, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->CUSTOMER:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->SCHEDULED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->DCP_TODO:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->TPH:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->REGISTRATION:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->PURCHASE:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->FALKOR_FULL_SYNC:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->KINDLE_FOREGROUNDED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->APP_START:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->BACKGROUND_NOTIFICATION_RECEIVED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->NETWORK_CONNECTED:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->reason:Ljava/lang/String;

    .line 93
    iput-boolean p4, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->honorXADPCallAfter:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    return-object v0
.end method


# virtual methods
.method public honorXAdpCallAfter()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->honorXADPCallAfter:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->reason:Ljava/lang/String;

    return-object v0
.end method
