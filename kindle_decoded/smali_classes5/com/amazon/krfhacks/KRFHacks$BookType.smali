.class public final enum Lcom/amazon/krfhacks/KRFHacks$BookType;
.super Ljava/lang/Enum;
.source "KRFHacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krfhacks/KRFHacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krfhacks/KRFHacks$BookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krfhacks/KRFHacks$BookType;

.field public static final enum Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

.field public static final enum Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

.field public static final enum Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/amazon/krfhacks/KRFHacks$BookType;

    const/4 v1, 0x0

    const-string v2, "Mobi8"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krfhacks/KRFHacks$BookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    .line 51
    new-instance v0, Lcom/amazon/krfhacks/KRFHacks$BookType;

    const/4 v2, 0x1

    const-string v3, "Mobi"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krfhacks/KRFHacks$BookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

    .line 52
    new-instance v0, Lcom/amazon/krfhacks/KRFHacks$BookType;

    const/4 v3, 0x2

    const-string v4, "Topaz"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krfhacks/KRFHacks$BookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krfhacks/KRFHacks$BookType;->Topaz:Lcom/amazon/krfhacks/KRFHacks$BookType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krfhacks/KRFHacks$BookType;

    .line 49
    sget-object v5, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi8:Lcom/amazon/krfhacks/KRFHacks$BookType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krfhacks/KRFHacks$BookType;->Mobi:Lcom/amazon/krfhacks/KRFHacks$BookType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krfhacks/KRFHacks$BookType;->$VALUES:[Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krfhacks/KRFHacks$BookType;
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krfhacks/KRFHacks$BookType;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/krfhacks/KRFHacks$BookType;->$VALUES:[Lcom/amazon/krfhacks/KRFHacks$BookType;

    invoke-virtual {v0}, [Lcom/amazon/krfhacks/KRFHacks$BookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krfhacks/KRFHacks$BookType;

    return-object v0
.end method
