.class public final enum Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;
.super Ljava/lang/Enum;
.source "WebServiceObjectListEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

.field public static final enum ITEM_ADDED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

.field public static final enum ITEM_AFTER_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

.field public static final enum ITEM_BEFORE_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

.field public static final enum ITEM_UPDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

.field public static final enum LIST_INVALIDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "ITEM_ADDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_ADDED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "ITEM_BEFORE_DELETE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_BEFORE_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "ITEM_AFTER_DELETE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_AFTER_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v4, 0x3

    const-string v5, "ITEM_UPDATED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_UPDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v5, 0x4

    const-string v6, "LIST_INVALIDATED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->LIST_INVALIDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    .line 9
    sget-object v7, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_ADDED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_BEFORE_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_AFTER_DELETE:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->ITEM_UPDATED:Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->$VALUES:[Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->$VALUES:[Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/models/internal/WebServiceObjectListEvent$EventType;

    return-object v0
.end method
