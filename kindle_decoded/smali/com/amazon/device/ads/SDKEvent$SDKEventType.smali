.class public final enum Lcom/amazon/device/ads/SDKEvent$SDKEventType;
.super Ljava/lang/Enum;
.source "SDKEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SDKEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/SDKEvent$SDKEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum BACK_BUTTON_PRESSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum BRIDGE_ADDED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum DESTROYED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum HIDDEN:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum PLACED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum READY:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum RENDERED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum RESIZED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum VIEWABLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

.field public static final enum VISIBLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 52
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v1, 0x0

    const-string v2, "RENDERED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RENDERED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 56
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v2, 0x1

    const-string v3, "PLACED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->PLACED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 60
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v3, 0x2

    const-string v4, "VISIBLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VISIBLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 61
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v4, 0x3

    const-string v5, "HIDDEN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->HIDDEN:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 62
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v5, 0x4

    const-string v6, "DESTROYED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->DESTROYED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 63
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v6, 0x5

    const-string v7, "CLOSED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 64
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v7, 0x6

    const-string v8, "READY"

    invoke-direct {v0, v8, v7}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->READY:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 69
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/4 v8, 0x7

    const-string v9, "RESIZED"

    invoke-direct {v0, v9, v8}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RESIZED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 73
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/16 v9, 0x8

    const-string v10, "BRIDGE_ADDED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BRIDGE_ADDED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 77
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/16 v10, 0x9

    const-string v11, "BACK_BUTTON_PRESSED"

    invoke-direct {v0, v11, v10}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BACK_BUTTON_PRESSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 81
    new-instance v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/16 v11, 0xa

    const-string v12, "VIEWABLE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/device/ads/SDKEvent$SDKEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VIEWABLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    .line 47
    sget-object v13, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RENDERED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->PLACED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->VISIBLE:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->HIDDEN:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->DESTROYED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->CLOSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->READY:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->RESIZED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BRIDGE_ADDED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->BACK_BUTTON_PRESSED:Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->$VALUES:[Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/SDKEvent$SDKEventType;
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/SDKEvent$SDKEventType;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/device/ads/SDKEvent$SDKEventType;->$VALUES:[Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/SDKEvent$SDKEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/SDKEvent$SDKEventType;

    return-object v0
.end method
