.class public final enum Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
.super Ljava/lang/Enum;
.source "AwsJsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum END_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum END_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum FIELD_NAME:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_BOOLEAN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_NULL:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_NUMBER:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_STRING:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 25
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 27
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 29
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 31
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v5, 0x4

    const-string v6, "FIELD_NAME"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v6, 0x5

    const-string v7, "VALUE_BOOLEAN"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 35
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v7, 0x6

    const-string v8, "VALUE_NULL"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/4 v8, 0x7

    const-string v9, "VALUE_NUMBER"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 39
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/16 v9, 0x8

    const-string v10, "VALUE_STRING"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 41
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/16 v10, 0x9

    const-string v11, "UNKNOWN"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    .line 21
    sget-object v12, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    return-object v0
.end method
