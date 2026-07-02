.class public final enum Lcom/amazon/kcp/redding/AlertActivity$AlertType;
.super Ljava/lang/Enum;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/redding/AlertActivity$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum CANCEL_MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum EXPIRED_CONTENT:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum FORCED_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum OPTIONAL_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

.field public static final enum UNREGISTERED_USER:Lcom/amazon/kcp/redding/AlertActivity$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 58
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v1, 0x0

    const-string v2, "MESSAGE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 63
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v2, 0x1

    const-string v3, "LINK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 69
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v3, 0x2

    const-string v4, "ANDROID_SETTINGS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 75
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v4, 0x3

    const-string v5, "REMOVE_ITEM"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 82
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v5, 0x4

    const-string v6, "SOFTWARE_UPDATE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 83
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v6, 0x5

    const-string v7, "OPTIONAL_SOFTWARE_UPDATE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->OPTIONAL_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 89
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v7, 0x6

    const-string v8, "FORCED_SOFTWARE_UPDATE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->FORCED_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 95
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/4 v8, 0x7

    const-string v9, "EXPIRED_CONTENT"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->EXPIRED_CONTENT:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 101
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/16 v9, 0x8

    const-string v10, "UNREGISTERED_USER"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->UNREGISTERED_USER:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 106
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/16 v10, 0x9

    const-string v11, "CANCEL_MESSAGE"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/redding/AlertActivity$AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->CANCEL_MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 54
    sget-object v12, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->OPTIONAL_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->FORCED_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->EXPIRED_CONTENT:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->UNREGISTERED_USER:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->$VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->$VALUES:[Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-object v0
.end method
