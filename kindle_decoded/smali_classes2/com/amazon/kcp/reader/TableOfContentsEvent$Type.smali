.class public final enum Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;
.super Ljava/lang/Enum;
.source "TableOfContentsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/TableOfContentsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

.field public static final enum CLOSED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

.field public static final enum OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

.field public static final enum OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

.field public static final enum REFRESHED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

.field public static final enum STATE_CHANGED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v1, 0x0

    const-string v2, "OPENING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 42
    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->CLOSED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 46
    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v3, 0x2

    const-string v4, "OPENED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 50
    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v4, 0x3

    const-string v5, "STATE_CHANGED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->STATE_CHANGED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 55
    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v5, 0x4

    const-string v6, "REFRESHED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->REFRESHED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 34
    sget-object v7, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->CLOSED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->STATE_CHANGED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->$VALUES:[Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->$VALUES:[Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    return-object v0
.end method
