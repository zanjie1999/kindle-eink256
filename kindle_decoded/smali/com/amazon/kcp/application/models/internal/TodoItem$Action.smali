.class public final enum Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
.super Ljava/lang/Enum;
.source "TodoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/models/internal/TodoItem$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum LANGUAGE_LAYER:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum REMOVE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum REMOVE_DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum SMD_POLL:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UPDATE_AUDIBLE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UPDATE_LAST_POSITION_HEARD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

.field public static final enum UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;


# instance fields
.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 68
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 73
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 77
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v3, 0x2

    const-string v4, "UPDATE_ANNOTATION"

    const-string v5, "UPD_ANOT"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 81
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v4, 0x3

    const-string v5, "UPDATE_LAST_PAGE_READ"

    const-string v6, "UPD_LPRD"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 85
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    const-string v7, "DEL"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 89
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v6, 0x5

    const-string v7, "REMOVE"

    invoke-direct {v0, v7, v6, v7}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->REMOVE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 93
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v7, 0x6

    const-string v8, "SEND"

    const-string v9, "SND"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 97
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/4 v8, 0x7

    const-string v9, "SET"

    invoke-direct {v0, v9, v8, v9}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 101
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v9, 0x8

    const-string v10, "UPLOAD"

    invoke-direct {v0, v10, v9, v10}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 108
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v10, 0x9

    const-string v11, "UPDATE_AUDIBLE_ANNOTATION"

    const-string v12, "UPD_AONT"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_AUDIBLE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 112
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v11, 0xa

    const-string v12, "UPDATE_LAST_POSITION_HEARD"

    const-string v13, "UPD_LPHD"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_POSITION_HEARD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 117
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v12, 0xb

    const-string v13, "SMD_POLL"

    const-string v14, "AssetOwnership.SMD.Poll"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SMD_POLL:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 121
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v13, 0xc

    const-string v14, "LANGUAGE_LAYER"

    const-string v15, "DeviceMessaging.LanguageLayer.MessageResponse"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->LANGUAGE_LAYER:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 126
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v14, 0xd

    const-string v15, "REMOVE_DOWNLOAD"

    invoke-direct {v0, v15, v14, v15}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->REMOVE_DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 131
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v15, 0xe

    const-string v14, "UNKNOWN"

    invoke-direct {v0, v14, v15, v14}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 63
    sget-object v16, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DELETE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->REMOVE:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_AUDIBLE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_POSITION_HEARD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SMD_POLL:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->LANGUAGE_LAYER:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->REMOVE_DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

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

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->s:Ljava/lang/String;

    return-void
.end method

.method public static getAction(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    .locals 5

    .line 147
    invoke-static {}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->values()[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 148
    iget-object v4, v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->s:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    sget-object p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UNKNOWN:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    .locals 1

    .line 63
    const-class v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->$VALUES:[Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->s:Ljava/lang/String;

    return-object v0
.end method
