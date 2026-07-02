.class public final enum Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;
.super Ljava/lang/Enum;
.source "ReaderControllerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderControllerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_ACCESSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_INIT:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_READY:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

.field public static final enum BOOK_LIFECYCLE_RESTORED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "BOOK_LIFECYCLE_CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "BOOK_LIFECYCLE_OPENED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 19
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "BOOK_LIFECYCLE_INIT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_INIT:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "BOOK_LIFECYCLE_READY"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_READY:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 23
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "BOOK_LIFECYCLE_RESTORED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_RESTORED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v6, 0x5

    const-string v7, "BOOK_LIFECYCLE_ACCESSED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_ACCESSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    .line 15
    sget-object v8, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_INIT:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_READY:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_RESTORED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->$VALUES:[Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->$VALUES:[Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    return-object v0
.end method
