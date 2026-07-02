.class public final enum Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;
.super Ljava/lang/Enum;
.source "ReaderEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ReaderEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndActionsEntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field public static final enum END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field public static final enum ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field public static final enum LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field public static final enum OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

.field public static final enum UNKNOWN:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;


# instance fields
.field public final metricName:Ljava/lang/String;

.field public final userInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 621
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v1, 0x0

    const-string v2, "ERL"

    const-string v3, "Erl"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 622
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v2, 0x1

    const-string v3, "END_OF_BOOK"

    const-string v4, "EndOfBook"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 623
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v3, 0x2

    const-string v4, "LEFT_NAV"

    const-string v5, "LeftNav"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 624
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v4, 0x3

    const-string v5, "OVERFLOW_MENU"

    const-string v6, "OverflowMenu"

    invoke-direct {v0, v5, v4, v2, v6}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 625
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    const-string v7, "Unknown"

    invoke-direct {v0, v6, v5, v1, v7}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->UNKNOWN:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 620
    sget-object v7, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->$VALUES:[Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 631
    iput-boolean p3, p0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->userInitiated:Z

    .line 632
    iput-object p4, p0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;
    .locals 1

    .line 620
    const-class v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;
    .locals 1

    .line 620
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->$VALUES:[Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    return-object v0
.end method
