.class public final enum Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;
.super Ljava/lang/Enum;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum DOWNLOADED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum DOWNLOADING:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

.field public static final enum REMOTE:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 75
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v1, 0x0

    const-string v2, "DOWNLOADED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 80
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOADING:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 85
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v3, 0x2

    const-string v4, "DOWNLOAD_QUEUED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 90
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v4, 0x3

    const-string v5, "DOWNLOAD_FAILED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 95
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD_PAUSED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 100
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v6, 0x5

    const-string v7, "AI_SEARCH_RESULT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 105
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v7, 0x6

    const-string v8, "REMOTE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    .line 71
    sget-object v9, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOADING:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;
    .locals 1

    .line 71
    const-class v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/BookCoverView$ViewState;

    return-object v0
.end method
