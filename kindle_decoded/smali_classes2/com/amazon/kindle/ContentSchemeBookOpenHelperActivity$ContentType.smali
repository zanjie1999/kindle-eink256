.class final enum Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;
.super Ljava/lang/Enum;
.source "ContentSchemeBookOpenHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

.field public static final enum MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

.field public static final enum PDF:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;


# instance fields
.field private final fileExtension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 392
    new-instance v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    const/4 v1, 0x0

    const-string v2, "PDF"

    const-string v3, ".pdf"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->PDF:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    .line 394
    new-instance v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    const/4 v2, 0x1

    const-string v3, "MOBI"

    const-string v4, ".prc"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->MOBI:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    .line 391
    sget-object v4, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->PDF:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->$VALUES:[Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

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

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 402
    iput-object p3, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;)Ljava/lang/String;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->fileExtension:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;
    .locals 1

    .line 391
    const-class v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;
    .locals 1

    .line 391
    sget-object v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->$VALUES:[Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$ContentType;

    return-object v0
.end method
