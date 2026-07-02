.class public final enum Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
.super Ljava/lang/Enum;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/interfaces/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/downloader/interfaces/Downloader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

.field public static final enum CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

.field public static final enum ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

.field public static final enum FATAL_ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

.field public static final enum INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

.field public static final enum SUCCESS:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    new-instance v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->SUCCESS:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    .line 52
    new-instance v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v2, 0x1

    const-string v3, "INTERRUPTED"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    .line 57
    new-instance v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v3, 0x2

    const-string v4, "CANCELLED"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    .line 63
    new-instance v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    .line 69
    new-instance v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v5, 0x4

    const-string v6, "FATAL_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->FATAL_ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    .line 42
    sget-object v7, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->SUCCESS:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->$VALUES:[Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    .locals 1

    .line 42
    const-class v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    .locals 1

    .line 42
    sget-object v0, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->$VALUES:[Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    invoke-virtual {v0}, [Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    return-object v0
.end method
