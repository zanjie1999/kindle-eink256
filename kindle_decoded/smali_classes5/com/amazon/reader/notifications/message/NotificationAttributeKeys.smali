.class public final enum Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;
.super Ljava/lang/Enum;
.source "NotificationAttributeKeys.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

.field public static final enum CONTENT:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

.field public static final enum METADATA:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    const/4 v1, 0x0

    const-string v2, "CONTENT"

    const-string v3, "content"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->CONTENT:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    .line 20
    new-instance v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    const/4 v2, 0x1

    const-string v3, "METADATA"

    const-string v4, "metadata"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->METADATA:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    .line 15
    sget-object v4, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->CONTENT:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->$VALUES:[Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    return-object p0
.end method

.method public static values()[Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->$VALUES:[Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-virtual {v0}, [Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->key:Ljava/lang/String;

    return-object v0
.end method
