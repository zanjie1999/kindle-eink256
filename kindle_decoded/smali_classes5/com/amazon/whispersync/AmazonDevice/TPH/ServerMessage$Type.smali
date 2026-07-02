.class public final enum Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;
.super Ljava/lang/Enum;
.source "ServerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

.field public static final enum Goto:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

.field public static final enum PhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    const/4 v1, 0x0

    const-string v2, "Goto"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->Goto:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    const/4 v2, 0x1

    const-string v3, "PhoneHome"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->PhoneHome:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    .line 6
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->Goto:Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/TPH/ServerMessage$Type;

    return-object v0
.end method
