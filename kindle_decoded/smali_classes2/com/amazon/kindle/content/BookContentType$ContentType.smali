.class public final enum Lcom/amazon/kindle/content/BookContentType$ContentType;
.super Ljava/lang/Enum;
.source "BookContentType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/BookContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/content/BookContentType$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum DOC:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum HTML:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum MOBI:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum PPT:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum RTF:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum TEXT:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/content/BookContentType$ContentType;

.field public static final enum XLS:Lcom/amazon/kindle/content/BookContentType$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 16
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v1, 0x0

    const-string v2, "MOBI"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->MOBI:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v2, 0x1

    const-string v3, "PDF"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 20
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v3, 0x2

    const-string v4, "DOC"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->DOC:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 22
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v4, 0x3

    const-string v5, "HTML"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->HTML:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v5, 0x4

    const-string v6, "PPT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->PPT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v6, 0x5

    const-string v7, "TEXT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->TEXT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v7, 0x6

    const-string v8, "RTF"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->RTF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/4 v8, 0x7

    const-string v9, "XLS"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->XLS:Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 32
    new-instance v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/16 v9, 0x8

    const-string v10, "UNKNOWN"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/content/BookContentType$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->UNKNOWN:Lcom/amazon/kindle/content/BookContentType$ContentType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/kindle/content/BookContentType$ContentType;

    .line 15
    sget-object v11, Lcom/amazon/kindle/content/BookContentType$ContentType;->MOBI:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->PDF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->DOC:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->HTML:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->PPT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->TEXT:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->RTF:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/kindle/content/BookContentType$ContentType;->XLS:Lcom/amazon/kindle/content/BookContentType$ContentType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/kindle/content/BookContentType$ContentType;->$VALUES:[Lcom/amazon/kindle/content/BookContentType$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/BookContentType$ContentType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/content/BookContentType$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/content/BookContentType$ContentType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/content/BookContentType$ContentType;->$VALUES:[Lcom/amazon/kindle/content/BookContentType$ContentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/content/BookContentType$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/content/BookContentType$ContentType;

    return-object v0
.end method
