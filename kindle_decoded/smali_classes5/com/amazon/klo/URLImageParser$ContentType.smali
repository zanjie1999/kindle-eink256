.class public final enum Lcom/amazon/klo/URLImageParser$ContentType;
.super Ljava/lang/Enum;
.source "URLImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/URLImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/klo/URLImageParser$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/klo/URLImageParser$ContentType;

.field public static final enum DATA:Lcom/amazon/klo/URLImageParser$ContentType;

.field public static final enum DATA_MISSING_PREFIX:Lcom/amazon/klo/URLImageParser$ContentType;

.field public static final enum WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 201
    new-instance v0, Lcom/amazon/klo/URLImageParser$ContentType;

    const/4 v1, 0x0

    const-string v2, "WEB_BASED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/klo/URLImageParser$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    .line 202
    new-instance v0, Lcom/amazon/klo/URLImageParser$ContentType;

    const/4 v2, 0x1

    const-string v3, "DATA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/klo/URLImageParser$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/URLImageParser$ContentType;->DATA:Lcom/amazon/klo/URLImageParser$ContentType;

    .line 203
    new-instance v0, Lcom/amazon/klo/URLImageParser$ContentType;

    const/4 v3, 0x2

    const-string v4, "DATA_MISSING_PREFIX"

    invoke-direct {v0, v4, v3}, Lcom/amazon/klo/URLImageParser$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/klo/URLImageParser$ContentType;->DATA_MISSING_PREFIX:Lcom/amazon/klo/URLImageParser$ContentType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/klo/URLImageParser$ContentType;

    .line 199
    sget-object v5, Lcom/amazon/klo/URLImageParser$ContentType;->WEB_BASED:Lcom/amazon/klo/URLImageParser$ContentType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/klo/URLImageParser$ContentType;->DATA:Lcom/amazon/klo/URLImageParser$ContentType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/klo/URLImageParser$ContentType;->$VALUES:[Lcom/amazon/klo/URLImageParser$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/klo/URLImageParser$ContentType;
    .locals 1

    .line 199
    const-class v0, Lcom/amazon/klo/URLImageParser$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/klo/URLImageParser$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/klo/URLImageParser$ContentType;
    .locals 1

    .line 199
    sget-object v0, Lcom/amazon/klo/URLImageParser$ContentType;->$VALUES:[Lcom/amazon/klo/URLImageParser$ContentType;

    invoke-virtual {v0}, [Lcom/amazon/klo/URLImageParser$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/klo/URLImageParser$ContentType;

    return-object v0
.end method
