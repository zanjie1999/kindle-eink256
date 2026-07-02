.class public final enum Lcom/amazon/kindle/krx/content/IBook$ReadState;
.super Ljava/lang/Enum;
.source "IBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/IBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/IBook$ReadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field public static final enum IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field public static final enum READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field public static final enum UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v1, 0x0

    const-string v2, "UNREAD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/content/IBook$ReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v2, 0x1

    const-string v3, "READ"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/content/IBook$ReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 49
    new-instance v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v3, 0x2

    const-string v4, "IN_PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/content/IBook$ReadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 46
    sget-object v5, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/krx/content/IBook$ReadState;->$VALUES:[Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->$VALUES:[Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/IBook$ReadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method
