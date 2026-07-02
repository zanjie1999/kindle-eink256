.class public final enum Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;
.super Ljava/lang/Enum;
.source "ReaderLayoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field public static final enum ACTION_BAR_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field public static final enum ACTION_BAR_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field public static final enum CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field public static final enum CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

.field public static final enum CHROME_UPDATED:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "CHROME_HIDDEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "CHROME_SHOWN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "CHROME_UPDATED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_UPDATED:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "ACTION_BAR_SHOWN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "ACTION_BAR_HIDDEN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 9
    sget-object v7, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_UPDATED:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->$VALUES:[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->$VALUES:[Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    return-object v0
.end method
