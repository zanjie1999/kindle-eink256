.class final enum Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;
.super Ljava/lang/Enum;
.source "KindleOneClickURLProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UrlParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

.field public static final enum CLIENT_ID:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

.field public static final enum DESTINATION_PATH:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

.field public static final enum PREFERENCE_TYPE:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

.field public static final enum TRANSACTION_CONTEXT:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;


# instance fields
.field private parameter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    const/4 v1, 0x0

    const-string v2, "CLIENT_ID"

    const-string v3, "clientId"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->CLIENT_ID:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 21
    new-instance v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    const/4 v2, 0x1

    const-string v3, "PREFERENCE_TYPE"

    const-string v4, "preferenceType"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->PREFERENCE_TYPE:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 22
    new-instance v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    const/4 v3, 0x2

    const-string v4, "TRANSACTION_CONTEXT"

    const-string v5, "transactionContext"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->TRANSACTION_CONTEXT:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 23
    new-instance v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    const/4 v4, 0x3

    const-string v5, "DESTINATION_PATH"

    const-string v6, "destinationPath"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->DESTINATION_PATH:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    .line 19
    sget-object v6, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->CLIENT_ID:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->PREFERENCE_TYPE:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->TRANSACTION_CONTEXT:Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->$VALUES:[Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->parameter:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->$VALUES:[Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    invoke-virtual {v0}, [Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;

    return-object v0
.end method


# virtual methods
.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/KindleOneClickURLProvider$UrlParameters;->parameter:Ljava/lang/String;

    return-object v0
.end method
