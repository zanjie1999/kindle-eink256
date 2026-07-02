.class public final enum Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
.super Ljava/lang/Enum;
.source "IHushpuppyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum CANCELLED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum ERROR:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum PAUSED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

.field public static final enum STOPPED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 48
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 50
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 52
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v3, 0x2

    const-string v4, "ACTIVE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 54
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PAUSED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v5, 0x4

    const-string v6, "CANCELLED"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->CANCELLED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ERROR:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 60
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v7, 0x6

    const-string v8, "STOPPED"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->STOPPED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    .line 46
    sget-object v9, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->NONE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ACTIVE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PAUSED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->CANCELLED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->ERROR:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
    .locals 1

    .line 46
    const-class v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;
    .locals 1

    .line 46
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    return-object v0
.end method
