.class public final enum Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;
.super Ljava/lang/Enum;
.source "HttpVerb.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbConnect:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbDelete:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbHead:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbOptions:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbPut:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

.field public static final enum HttpVerbTrace:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v1, 0x0

    const-string v2, "HttpVerbConnect"

    const-string v3, "CONNECT"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbConnect:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 7
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v2, 0x1

    const-string v3, "HttpVerbDelete"

    const-string v4, "DELETE"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbDelete:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 8
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v3, 0x2

    const-string v4, "HttpVerbGet"

    const-string v5, "GET"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v4, 0x3

    const-string v5, "HttpVerbHead"

    const-string v6, "HEAD"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbHead:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v5, 0x4

    const-string v6, "HttpVerbOptions"

    const-string v7, "OPTIONS"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbOptions:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v6, 0x5

    const-string v7, "HttpVerbPost"

    const-string v8, "POST"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v7, 0x6

    const-string v8, "HttpVerbPut"

    const-string v9, "PUT"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPut:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v8, 0x7

    const-string v9, "HttpVerbTrace"

    const-string v10, "TRACE"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbTrace:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    .line 4
    sget-object v10, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbConnect:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbDelete:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbHead:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbOptions:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPut:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;
    .locals 5

    .line 29
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->values()[Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->$VALUES:[Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->mValue:Ljava/lang/String;

    return-object v0
.end method
