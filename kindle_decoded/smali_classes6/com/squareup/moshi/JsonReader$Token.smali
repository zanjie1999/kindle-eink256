.class public final enum Lcom/squareup/moshi/JsonReader$Token;
.super Ljava/lang/Enum;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum NAME:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum NULL:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum NUMBER:Lcom/squareup/moshi/JsonReader$Token;

.field public static final enum STRING:Lcom/squareup/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 554
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    .line 560
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    .line 566
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    .line 572
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    .line 579
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    .line 584
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    .line 590
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    .line 595
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    .line 600
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    .line 607
    new-instance v0, Lcom/squareup/moshi/JsonReader$Token;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lcom/squareup/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/squareup/moshi/JsonReader$Token;

    .line 548
    sget-object v12, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v12, v11, v1

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v2

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v3

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v4

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v5

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v6

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v7

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v8

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/squareup/moshi/JsonReader$Token;->$VALUES:[Lcom/squareup/moshi/JsonReader$Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$Token;
    .locals 1

    .line 548
    const-class v0, Lcom/squareup/moshi/JsonReader$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/moshi/JsonReader$Token;

    return-object p0
.end method

.method public static values()[Lcom/squareup/moshi/JsonReader$Token;
    .locals 1

    .line 548
    sget-object v0, Lcom/squareup/moshi/JsonReader$Token;->$VALUES:[Lcom/squareup/moshi/JsonReader$Token;

    invoke-virtual {v0}, [Lcom/squareup/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/moshi/JsonReader$Token;

    return-object v0
.end method
