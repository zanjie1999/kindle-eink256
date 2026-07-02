.class public final enum Lcom/amazon/kindle/model/content/BookOrientation;
.super Ljava/lang/Enum;
.source "BookOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/model/content/BookOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/model/content/BookOrientation;

.field public static final enum LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

.field public static final enum PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

.field public static final enum UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/amazon/kindle/model/content/BookOrientation;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/model/content/BookOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    .line 16
    new-instance v0, Lcom/amazon/kindle/model/content/BookOrientation;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/model/content/BookOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    .line 20
    new-instance v0, Lcom/amazon/kindle/model/content/BookOrientation;

    const/4 v3, 0x2

    const-string v4, "LANDSCAPE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/model/content/BookOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/model/content/BookOrientation;

    .line 8
    sget-object v5, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/model/content/BookOrientation;->$VALUES:[Lcom/amazon/kindle/model/content/BookOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/model/content/BookOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/model/content/BookOrientation;->$VALUES:[Lcom/amazon/kindle/model/content/BookOrientation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/model/content/BookOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/model/content/BookOrientation;

    return-object v0
.end method
