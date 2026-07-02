.class public final enum Lcom/audible/mobile/download/service/DownloadingInfo$State;
.super Ljava/lang/Enum;
.source "DownloadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/DownloadingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/download/service/DownloadingInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Active:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Cancelled:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Error:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum None:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Paused:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Pending:Lcom/audible/mobile/download/service/DownloadingInfo$State;

.field public static final enum Stopped:Lcom/audible/mobile/download/service/DownloadingInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 33
    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->None:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v2, 0x1

    const-string v3, "Pending"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Pending:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v3, 0x2

    const-string v4, "Active"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Active:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v4, 0x3

    const-string v5, "Paused"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Paused:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v5, 0x4

    const-string v6, "Cancelled"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Cancelled:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v6, 0x5

    const-string v7, "Error"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Error:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    new-instance v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v7, 0x6

    const-string v8, "Stopped"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/download/service/DownloadingInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Stopped:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/mobile/download/service/DownloadingInfo$State;

    .line 31
    sget-object v9, Lcom/audible/mobile/download/service/DownloadingInfo$State;->None:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Pending:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Active:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Paused:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Cancelled:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Error:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/mobile/download/service/DownloadingInfo$State;->$VALUES:[Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/service/DownloadingInfo$State;
    .locals 1

    .line 31
    const-class v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/download/service/DownloadingInfo$State;
    .locals 1

    .line 31
    sget-object v0, Lcom/audible/mobile/download/service/DownloadingInfo$State;->$VALUES:[Lcom/audible/mobile/download/service/DownloadingInfo$State;

    invoke-virtual {v0}, [Lcom/audible/mobile/download/service/DownloadingInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/download/service/DownloadingInfo$State;

    return-object v0
.end method
